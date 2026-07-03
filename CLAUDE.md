# CLAUDE.md — Funny Mouse ROM reverse-engineering

This repo is a **reverse-engineering / documentation project** for the arcade game
**Funny Mouse** (`funnymou` in MAME). The goal is to annotate the disassembly
(`funnymou.asm`) with meaningful labels and comments, with a current focus on the
**enemy (cat) AI**.

> This file is the living knowledge base. When you learn something new about the dump,
> record it here (and, where useful, add the label to `funnymou.asm` — see
> [Labeling workflow](#labeling-workflow)). Cite ROM addresses (`$xxxx`) as evidence.

---

## 1. What this game is

- **Funny Mouse** is a bootleg/variant of **Super Mouse** running on **"The Pit"**
  hardware (Zaccaria/Taito-era Z80 board). See `funnymou.org` for the MAME ROM/driver
  notes and `thepit/` for the MAME driver source (`thepit.cpp`, `thepit.h`,
  `thepit_v.cpp`) — these are the authoritative hardware reference.
- **Gameplay = a maze game with a carry-and-return mechanic.** The player is a **mouse**
  that must **pick up the pieces of "food" scattered in the maze and carry them back to its
  home base**, all while being chased by enemies — **cats** and **snakes**. Merely collecting
  a food piece is not enough; it must be *returned home*. The level is complete once **all
  food has been returned**. Eating certain special maze tiles spawns a power/event object.
  The player can also **drop bombs** (button1): a bomb is dropped, then a second press
  detonates it and the explosion kills anything it touches (see §5 — traced to `$100F`).
  **Boulders** sit at the tops of the edge ladders: when the player touches one it falls and
  squashes anything it hits. The maze also has **bridges** (crossing one opens it, dropping
  chasing enemies into the water) and **sliding platforms** (stepping on one carries the
  player across a gap; enemies that follow fall and die). Completing the level advances to the
  next.

### Files
| Path | What it is |
|------|-----------|
| `funnymou.asm` | The disassembly being documented (~11.7k lines). **The main working file.** |
| `funnymou.org` | MAME ROM defs + `thepit_main_map` + preliminary memory map. |
| `dump/` | Raw ROM/PROM images (`sm.6`, `suprmous.x*`, `*.clr`). |
| `thepit/` | MAME driver source for the hardware (video, I/O, DIPs, sprite format). |

---

## 2. Disassembly format & CRITICAL caveats

Each line is: `ADDR: HEXBYTES    instr`, e.g. `2647: 3A 07 84    ld a,($8407)`.
Addresses are **hex without `$`**; operands use `$`.

**⚠️ This is a NAIVE LINEAR disassembly.** Every byte in ROM `$0000-$4928` was decoded
as an instruction in sequence. Therefore:

- **Data regions are misdecoded as nonsense code.** Tell-tale signs of *data* (not real
  code): long runs of `rst $38` (byte `$FF`), repeated identical `call p,$xxxx` /
  `ld bc,$xxxx`, dense `ex af,af'` / `inc h` spam, or a block that no control flow
  reaches. Example: the "298 calls to `$2525`" are actually a **data table at `$13D0+`**
  (`F4 25 25` bytes) misread as `call p,$2525`.
- **Instruction boundaries can be misaligned near/after data.** A referenced address
  (e.g. `$2525`, `$2C3E`) may land *mid-instruction* in the linear listing. When a call
  target looks wrong, **re-decode from the target address** by hand (grep the raw bytes).
  Real routine entries are reached by `call`/`jp`/table pointers.
- To study a routine: grep its address as an operand (`call $XXXX`, `jp $XXXX`,
  `ld hl,$XXXX`) and read around the target line.

See §7 for the code/data region map.

---

## 3. Hardware / memory map

Main CPU: **Z80**. Source: `funnymou.org` + `thepit/thepit_v.cpp`.

| Range | Contents |
|-------|----------|
| `$0000-$4FFF` | ROM (code + data). Actual content ends ~`$4928`; rest is padding/unmapped. |
| `$8000-$87FF` | Work RAM. |
| `$8800-$8BFF` | Color RAM (mirror `$8C00-$8FFF`). |
| `$9000-$93FF` | **Video RAM** (32×32 tilemap of 8×8 tiles), mirror `$9400-$97FF`. |
| `$9800-$983F` | Attributes RAM (per-column Y-scroll; `attr[col<<1]`). |
| `$9840-$985F` | **Sprite RAM** (8 sprites × 4 bytes). |
| `$A000` | Player joystick input (see below). Mirrored to fake port when flipped. |
| `$A800` | Coin / start / service input. |
| `$B000` (read) | DIP switches. |
| `$B000-$B007` (write) | LS259 latch, one bit each (see below). |
| `$B800` | read = watchdog reset; write = sound command to audio CPU. |

### `$A000` player input bits (active low on HW; read into `$8401`)
`0x01`=left, `0x02`=right, `0x04`=down, `0x08`=up, `0x10`=button1 (drop/detonate bomb — see §5).

### `$A800` coin/start bits
`0x01`=coin1, `0x02`=start2, `0x04`=start1. (Read into `$8021`.)

### `$B000-$B007` latch (write bit0)
`B000`=**NMI enable**, `B002`=coin lockout, `B003`=sound enable,
`B005`=gfx bank (unused here), `B006`=flip screen X, `B007`=flip screen Y.

### DIP switches (`$B000` read) — from `thepit.cpp` (suprmous set)
`0x03`=coinage, `0x04`=game speed, `0x08`=time limit, `0x10`=flip screen,
`0x20`=cabinet (upright/cocktail), `0x40`=lives (3/5), `0x80`=diagnostic tests.

### Sprite RAM format (`$9840`, and the `$8000` mirror — see §5)
4 bytes per sprite:
- `+0` = **Y** (displayed as `240 - value`)
- `+1` = tile code (bits 0-5) | flipX (bit 6) | flipY (bit 7)
- `+2` = color (priority = bit 3)
- `+3` = **X** (displayed as `value + 1`)

---

## 4. Entry points & top-level control flow

### Vectors
- **`$0000` reset**: zero `$B000` (NMI off), `jp $07F1`.
- **`$0066` NMI** (vblank): push all regs → `$B000=0` → read watchdog →
  **`call $0100`** (the per-frame service) → pop regs → `$B000=1` → `ret`.

### Boot
`$07F1` = power-on ROM/RAM/VRAM self-test (fills `$9000`=`$24` blank tiles, `$9400`=`$80`,
tests `$8000` RAM; branches to diagnostic `$08DD` on failure). Then init at `$000E-$004F`
(clear `$8000-$87FF`, `sp=$87FE`, latch DIPs into `$8020/$8025/$8026/$8027/$8028`) →
`jp $0580` (foreground entry) → `jp $1FD1` (foreground loop).

### The producer/consumer architecture (important!)
The game runs on a **two-part state machine** built around `$8039` (an event bitmask,
the most-referenced variable) and `$803B` (a linear sequence state 0-8):

- **NMI side (`$0100`, the "producer")** runs every frame: reads inputs (`$0743`), flushes
  the sprite mirror to HW (`$062C`), handles coins/credits/start, and — while `$803B==6`
  — runs the full **in-game frame update `$23A0`**. It *decides what should change* by
  setting request bits in `$8039` and seeding the target state's variables. It early-outs
  (`$01EB`: `if $8039!=0 ret`) so it won't queue new work while a request is still pending.
- **Foreground side (`$1FD1`, the "consumer")** spins until a bit of `$8039` is set, then
  does the *slow screen redraw* for that event and finalizes `$803B`.

`$8039` request bits → handler → resulting `$803B`:

| bit | handler | `$803B` | meaning |
|-----|---------|---------|---------|
| 0 | `$219E` | 2 | "insert coin" prompt |
| 1 | `$21CA` | 3 | "push start" prompt |
| 2 | `$21F6` | — | blank playfield |
| 3 | `$2204` | 4 | **GAME OVER** + hi-score |
| 4 | `$2284` | 5 | **PLAYER READY** ("PLAYER n") |
| 5 | `$200A` | 6 | **build maze & START PLAY** |
| 6 | `$20B3` | 7 | level-clear intermission |
| 7 | `$20D9` | 1 | attract reset |

`$803B` states: `0`=power-on idle, `1`=attract/title, `2`/`3`=credit prompts,
`4`=game-over(timed), `5`=player-ready(timed), `6`=**active play**, `7`=intermission,
`8`=next-level rebuild. Cycle during play: `6 → 7 → 8 → rebuild → 6`.

### In-game per-frame update — `$23A0` (only runs while `$803B==6`)
Calls in order:
`$407D` (**sliding-platform** update, slot 2) · `$3BFF` (**bridge** open/close tile anim) ·
`$3D0A` (scripted player move/cutscene, e.g. entering the home hole) ·
**`$2A51`** (cat manager) · **`$3206`** (snake manager) · **`$2539`** (player update) ·
**`$394B`** (enemy "eaten"/return-home + score) · `$23D3` (**level-complete check `$2429` + end-level timer**; see §5) ·
**`$392A`** (player↔enemy collision/death) · `$116D` (bomb-explosion collision) · `$100F` (bomb update) ·
`$41BC` (event object update).

### Two-player alternation
`$8030` = mode (0=attract, 1=1P, 2=2P). `$8031` = current player. On death/turn-end in a
2P game, `$8031` toggles and the **per-player page is swapped** via `ldir` between the
active page `$8100` and the saved pages `$8200` (P1) / `$8300` (P2).

---

## 5. Actor / object model

### Sprite mirror (`$8000-$801F`) → hardware
Work RAM `$8000-$801F` is a **shadow copy** of the 8 hardware sprites. Every frame the NMI
calls **`$062C`** (`ld hl,$8000; ld de,$9840; ld bc,$0020; ldir`) to DMA it to sprite RAM.
So game code only ever writes sprites into `$8000-$801F`.

### Sprite slot → actor assignment
| Slot | Mirror bytes | Actor | State record | Committed by |
|------|-------------|-------|--------------|--------------|
| 0 | `$8000-$8003` | **Player (mouse)** | `$8400` | `$28BB` |
| 1 | `$8004-$8007` | Cat A | `$8510` | `$309C` |
| 2 | `$8008-$800B` | **Sliding platform** (not a cat — drawn by `$407D` from `$80A5-$80A8`) | `$80A0` block | `$4092` |
| 3 | `$800C-$800F` | Cat B | `$8550` | `$309C` |
| 4 | `$8010-$8013` | Cat C | `$8570` | `$309C` |
| 5 | `$8014-$8017` | Snake A | `$8610` | `$309C` |
| 6 | `$8018-$801B` | Snake B | `$8630` | `$309C` |
| 7 | `$801C-$801F` | **Bomb** *or* **event object** (mutually exclusive) | `$8680` / `$85C0` | `$10D6` / `$4232` |

So there are up to **3 cats + 2 snakes** (5 enemies) + the player's bomb + a power/event object.
The two enemy types share the same per-actor engine but run under different managers:
cats (A/B/C) under manager A (`$2A51`), snakes (A/B) under manager B (`$3206`).

### Player workspace `$8400` (46 = `$2E` bytes; init template ROM `$246C`)
`$2539` copies the template to `$8400` when `($8400)==0`, then runs the update
(`$2539 → $2598 → $2853`). Key fields:

| Off | Addr | Meaning |
|-----|------|---------|
| +$00 | `$8400` | active/init flag |
| +$01 | `$8401` | input bits (from `$A000`, or demo script in attract) |
| +$02 | `$8402` | frame counter (bit0 = half-rate gate) |
| +$04 | `$8404` | facing direction (1/2/4/8) |
| +$06 | `$8406` | **Y** position |
| +$07 | `$8407` | **X** position |
| +$08 / +$09 | `$8408`/`$8409` | current Y / X velocity |
| +$0B..+$11 | | velocity constants (±2 per axis) |
| +$12 | `$8412` | color → sprite +2 |
| +$13 | `$8413` | final tile byte (orient|frame) → sprite +1 |
| +$14 / +$15 | | orientation base / anim frame (0-3) |
| +$16 | `$8416` | moving flag (gates walk animation) |
| +$17 / +$18 | | anim sub-counter / frame index |
| +$1F | `$841F` | **state**: 0=respawn, 1=play, 2=dead, 4=enter-hole, 5=at-hole |
| +$20 / +$21 | | substate flag / countdown |
| +$22 | `$8422` | input-locked / cutscene flag |
| +$23 | `$8423` | idle→attract-demo countdown (→ `$24FD`) |
| +$24/$25 | `$8424` | 16-bit anim/speed table pointer (template=`$249B` = demo script) |
| +$29 / +$2A | | death-sequence step / death-fall trigger |
| +$2D | `$842D` | "over exit/hole" flag (maze tile `$F5`) |

Player position is committed to sprite slot 0 by `$28BB`:
`$8406→$8000`(Y), `$8413→$8001`(tile), `$8412→$8002`(color), `$8407→$8003`(X).
**`$8000`/`$8003` (player sprite Y/X) is what the enemies chase** (see §6).

### Enemy record (32 = `$20` bytes each — same layout for cats and snakes)
Bases: **`$8510`, `$8550`, `$8570`** (cats A/B/C, page-$85 manager `$2A51`) and
**`$8610`, `$8630`** (snakes A/B, page-$86 manager `$3206`). Shared sprite-commit at `$309C`.

| Off | Meaning |
|-----|---------|
| +$00 | step/move counter |
| +$03 | sprite-slot link (low byte of `$80xx` mirror addr: `$05`/`$0D`/`$11`/`$15`/`$19`) |
| +$04 | base tile (+flip) → sprite +1 |
| +$07 | **AI state**: 1=appear, 3/4=walk-chase, 5/6=caught/dying, 7 |
| +$08 | **Y** → sprite +0 |
| +$09 | **X** → sprite +3 |
| +$0D..+$11 | velocity/direction deltas (`$FF`/`$01` = ±1) |
| +$18/$19 | 16-bit AI waypoint-table pointer (level-indexed; via `$31CF`) |
| +$1A | appear/spawn timer |
| +$1B | busy/not-collidable lock (1 while appearing or dying) |
| +$1D/$1E | 16-bit secondary pointer (level-indexed) |

*(Offsets +$01/+$02/+$05/+$06/+$0A/+$0B/+$13/+$14 are enemy scratch fields not yet pinned down.)*

### Enemy control blocks
Small 16-byte blocks `$8500-$850F` (page 85, cats) and `$8600-$860F` (page 86, snakes) hold,
per enemy, a `[enable, spawned]` byte pair used as the "present"/spawn guard:
- Page 85 (cats): catA=`$8500/$8501`, (unused=`$8502/$8503`), catB=`$8504/$8505`, catC=`$8506/$8507`.
- Page 86 (snakes): snakeA=`$8600/$8601`, snakeB=`$8602/$8603`.
- One-time "AI path initialised" flags: `$8508/$850A/$850B`, `$8608/$8609`.

### ROM record templates
| ROM | Size | → RAM | Actor |
|-----|------|-------|-------|
| `$246C` | `$2E` | `$8400` | Player |
| `$2B75` | `$1D` | `$8510` | Cat A |
| `$2BCB` | `$1D` | `$8550` | Cat B |
| `$2C21` | `$1D` | `$8570` | Cat C |
| `$3292` | `$20` | `$8610` | Snake A |
| `$32D7` | `$20` | `$8630` | Snake B |
| `$2B5A`/`$2BB0`/`$2C06` | — | rec+$18 | per-enemy AI waypoint tables (via `$31CF`) |
| `$2B28` | — | rec+$1D | shared secondary table (via `$31CF`) |

### Bomb (`$8680`) and event/power object (`$85C0`)
Both draw into slot 7 (mutually exclusive). **The `$8680` object is the player's BOMB** —
logic `$100F` (update) / `$116D` (explosion collision). Confirmed in-listing:

- **Update dispatch `$100F`**: cleared (`$1038`) while frozen (`$803E≠0`) or the player is
  dead/respawning (`$841F`==2/0). If a bomb is already live (`$8680≠0`) → run the live-bomb
  update `$10ED`; else, if the supply `$867F>0`, handle a new drop at `$1046`.
- **Drop (button press)** `$1046`: reads `$8401 & $10` (button1); returns if not pressed or if
  the event object is active (`$85C1≠0`). Gated by a maze-tile check near the player
  (`$251B`→addr, `+$FFE2`, tile ≥ `$F0`). On success: decrement supply `$867F` (`$1063`),
  redraw the on-screen bomb-count row (`$106C`, tiles at `$91C3`/color `$95C3`), then `$109E`
  seeds the bomb at the player's position (`$8684`=Y from `$8406`, `$8685`=X from `$8407`,
  `$8686`=tile `$3C`, `$8687`=color `$86`, `$8680`=1) and latches a sound.
- **Arm + detonate (second press)** `$10ED`: a timer `$868A` counts up to `$14` (20 frames);
  only then does a second `$8401 & $10` press (`$1101`) set `$868B`=1 to start the explosion.
- **Explosion animation** `$110D`: steps `$8688` (frame 0-5) / `$8689` (stage); stage 1
  (`$1134`) sets the explosion tile `$3E` and **`$8683`=1 (explosion is now lethal)** + sound;
  later stages swap tiles `$3F`/`$3D`; the final stage clears the bomb (`$1038`).
- **Kill test** `$116D`: runs only while `$8683≠0`. AABB helper `$11BF` tests the explosion
  sprite (`$801C`) against the **player** (`$8000`; on hit `$841F=2`, `$119F`/`$11B4`) and
  against **each cat/snake** (`$11D9`/`$1205`/`$1231`/`$125D`/`$1291`/`$12BD`); an enemy hit
  sets that enemy's state field to **`$06`** (squashed/dying).
- **Supply regenerated at each life start**: the play-start handler `$200A` sets `$867F`=`$05`
  (`$206C`) and redraws the count — so the player gets **5 bombs** afresh each life (i.e.
  replenished on death → respawn).

Fields recap: `$867F`=bomb supply, `$8680`=active flag, `$8684`/`$8685`=Y/X, `$8686`=tile,
`$8687`=color, `$8683`=explosion-lethal flag, `$8688`/`$8689`=explosion frame/stage,
`$868A`=arming timer, `$868B`=detonate flag.

> NOTE: this object was previously mislabeled "hawk", then "boulder". It is neither — the
> maze **boulder** (rests atop the edge ladders, released by player touch, falls and squashes)
> is a *separate* mechanic and has **not yet been located** in the code (see §10).

Event object — the **power-pellet / clear-enemies pickup** (`$85C0` block, slot 7). Two power
pellets (tiles `$39`/`$3A`) sit at **fixed maze cells** (redrawn at `$9065`/`$9085`/`$9385`/`$93A5`
until eaten; per-pellet consumed flags `$8180`/`$8181`). Eating one (`$2923`→`$2935`) spawns the
object **at the player's position** (`$85C2`=Y from `$8406`, `$85C3`=X from `$8407`; skipped if a
bomb is live or it is already active). Handler `$41BF` (reached via `$41BC`) copies
`$85C1-$85C3`→`$85C4-$85C6`, plays sound `$95`, then each frame advances **X only** (`$85C6 += 2`
until `$E0`, then despawns) at constant Y — it sweeps horizontally across the row. Commits to
slot 7 (`$801C`) as tile `$37`, color `$05`.

While active, **`$3ACC`** (`event_clear_enemies`, called from the eaten SM `$394B`) **clears the
board of enemies** — *not* a chase trigger. For every enabled, non-busy enemy (cats
`$8501`/`$8505`/`$8507`, snakes `$8601`/`$8603`) it writes the same "sent-home dying" record as a
water-death: state (+$07)=`$04`, splash tile (+$04)=`$1C` (cat) / `$2C` (snake), busy-lock
(+$1B)=`$01`. There is no per-enemy overlap test — all enemies are affected at once (via templates
`$3B26` cats / `$3B64` snakes).

### Maze hazards: bridges & sliding platforms (player tile-interaction dispatcher)
When the player is committed each frame (`$28BB` region), a chain of small helpers checks the
maze tile just ahead of the player (`$251B`→VRAM addr, then `+$FFE2`/`+$FFE1`) and fires a
per-tile effect. Confirmed tile → effect:

| Tile | Helper | Effect |
|------|--------|--------|
| `$F5` | `$28E2` | set `$842D` "over exit/hole" flag |
| `$FE` | `$294C` | player enters hole → `$841F=4` |
| `$39`/`$3A` | `$2923` | spawn power/event object (`$85C1`) |
| `$FC` | `$29A1` | trigger **bridge** subsystem (`$80C0=1`) |
| `$F9` | `$29AF` | advance **sliding-platform** subsystem (`$80A2`) |
| `$DC-$EF` | `$29C8` | **pick up food piece** (`$8120` slot 0→2, carried); see §5 food subsystem |
| `$FF` | `$295A` | (if over-hole) start scripted home-entry move (`$80E0`), `$841F=5` |

**Bridge — `$3BFF`** (block `$80C0-$80C7`). Once triggered (`$80C0`), it plays a timed
tile-animation that **opens then closes** a span of maze tiles: `$3C92` selects a per-maze
position set (table `$3BE3`, indexed by `$8101 & 3`) and `$3CA9`→`$1360` blits the open/closed
tile blocks (source tables `$3BD7`/`$3BDD`) into VRAM. So the player crossing a bridge tile
(`$FC`) makes the bridge open — an enemy over the opened span is over "water" and dies.

**Sliding platform — `$407D`** (block `$80A0-$80A8`, draws into **sprite slot 2** via `$4092`).
On activation it snaps to the player (`$80A5`=Y from `$8406`, `$80A8`=X from `$8407`+`$F0`),
picks its tile/color from an orientation table (`$809F` vs `$7A/$7B/$7C/$7D/$7E` → `$4106`),
then in state `$80A2=2` **slides horizontally** (`$80A8 += 2` per frame at `$415C`, timed by
`$80A3`) across the gap to the far side (state 3 finalises via `$3EF2`/`$3EB2`). The player
rides across; an enemy that follows onto the gap falls and dies.

**Enemy fall-and-die test** (confirmed — see §6): `$FE` is the "open water / gap" tile. The
bridge animation blits it — the *open*-state tile block at `$3BD7` contains `$FE`, the
*closed*-state block at `$3BDD` contains `$FC`; per-maze bridge positions come from table
`$3BE3` (VRAM `$91xx`, indexed by `$8101 & 3`). So crossing the bridge (`$FC`) rewrites those
cells to `$FE`, and any cat/snake that steps onto an `$FE` cell is sent to its death/return
state by the enemy engine's `$FE` check. (The sliding platform leaves an equivalent `$FE`
gap.) Note `$FE` is also what puts the *player* into state 4 "enter-hole" at `$294C`.

### Food carry-and-return & level completion
Each maze holds **9 food pieces**, one byte of state each in the per-player food-state table
**`$8120`** (9 bytes). The mouse **carries one piece at a time** and must return it home; the
level ends when all 9 have been **returned** (logged in `$8140`).

**`$8120` per-piece state:** `0`=uncollected (present in maze) · `2`=carried (picked up, being
carried, erased from the maze) · `1`=returned home (delivered, logged in `$8140`).

Two per-maze pointer tables (stride `$12`, indexed by `$8101 & 3`) drive the drawing:
**`$3FC6`** = the 9 food VRAM cell positions in the maze; **`$400E`** = matching food tile/color
data. Shared helper **`$3EB2`/`$3EB3`** (`food_set_state`): given a VRAM cell in `hl`, it scans
`$3FC6` for the piece at that cell and writes register **`c`** into that piece's `$8120` slot
(also matches the cell one row down, `+$20`, since food is a 2×2 tile block).

- **Pickup (0 → 2) — `$29C8`** (`food_pickup`, one link of the per-frame tile dispatcher `$28E2`).
  No-ops if a piece is already being carried / platform active (`$80A0≠0`). Reads the player's
  own cell (`$251B`→addr, `+$FFE1`); acts only if the tile is in the **food range `$DC..$EF`**
  (`cp $DC; ret c` / `cp $F0; ret nc`). Then: `c=$02`, `$3EB2` marks the piece **carried** in
  `$8120`; decodes the food tile → graphic id `d` (`$7A-$7E`) + color `e` and stashes the
  *carried-food* block `$809C`=cell addr, `$809E`=color, `$809F`=graphic, `$80A0`=1; `$3F62`
  (`food_maze_erase`) blanks the collected (state-2) cell in the maze (tile `$25`/color `$87`);
  awards score (`$8040` trigger, BCD from `$2A4E`) + sound `$84`.
- **Return home (2 → 1) — `$4167`** (`food_return_home`, reached from the home-entry path at
  `$412F`). Reads the carried-food block (`$809C`/`$809E`/`$809F`), calls **`$3EF2`**
  (`food_return_add`): scans `$8140` for the first empty (`==0`) slot, stores the piece's identity
  (`d`=tile, `e`=color), draws it onto the on-screen "home" display via the **`$3FB4`** pointer
  table (`set 2,h` → color RAM), and awards **500 pts** (`$8040`, BCD from `$3F31`=`00 05 00`) +
  sound `$84`. Then `c=$01`, `$3EB2` flips that piece's `$8120` slot **carried → returned**. So
  `$8140` is a **fill-from-front log of returned pieces** (one 2-byte entry each). (`$3F36`,
  `food_log_redraw`, just repaints every logged entry to VRAM on maze rebuild / page swap.)
- **Drop on death/rebuild (2 → 0) — `$3E29`** (`food_maze_redraw`, called from the play-build
  `$204E`). Repaints all maze food from `$8120`: state 0 → draw present; state 2 → **reset to 0
  and draw** (any piece the mouse was carrying when it died is **dropped back** into the maze as
  uncollected); state 1 → blank (returned food stays gone).
- **Completion test — `$2429`** (`check_level_done`, called each frame from `$23D3`): walks the
  9 `$8140` entries; on the first still-zero slot it `ret`s (level not done). Only if **all 9 are
  nonzero** does it fall through: force-kills any surviving snake (`$862B`/`$864B` → state `$06`
  at `$8617`/`$8637`, +`$08` BCD bonus), `call $3A8C`, sets **`$803E` (`endlevel_active`) = 1**,
  sound `$E0`.
- **End-level fanfare & advance — `$23D3`** (`level_end_seq`): guarded — returns early if a death
  is pending (`$8033≠0`) or the player is dead (`$841F==2`). While `$803E==0` it runs the
  completion test above; once `$803E` is set it instead counts `$803F` up, playing sounds at
  counter = 2/4/`$E8`/`$EC`, and at **`$803F==$F0`** clears `$8480`/`$803E`/`$803F` and sets
  **`$8032` (`req_level_done`) = 1** → the top-level state machine advances the level
  (`6 → 7 → 8 → rebuild`).

### Bonus subsystem `$8480`
Separate state machine (handler `$4247`, from the level-end timer path). Not a sprite actor;
manages a bonus/score display. Per-field semantics only partially traced.

---

## 6. ENEMY AI (CATS & SNAKES)

The enemy AI is the reason for this project. There are **two enemy types** — **3 cats** and
**2 snakes** — implemented as **two near-identical drivers** funneling into a **shared
per-enemy engine**. (The two types differ mainly in manager/graphics and the wall-code set
they navigate against; the core chase logic is identical.)

### Managers
- **`$2A51`** — manager A (**cats**): cats A/B/C (records `$8510`/`$8550`/`$8570`).
- **`$3206`** — manager B (**snakes**): snakes A/B (records `$8610`/`$8630`).

Each manager, per enemy: if the enemy is enabled and not yet spawned, `ldir` its ROM template
into the record and latch a spawn sound; otherwise dispatch its update. Spawning is gated by
a per-enemy **countdown timer** (`$2AF1`) plus a **spawn-tile-validity check**, and by the
global level gate `$803E`.

### Shared per-enemy engine — `$2C3E` (cats) / `$333F` (snakes)
Dispatches on the enemy's **state field (record +$07)**:
`1`=appear (increments an emerge counter, promotes to state 3 at ≥`$80`),
`3/4`=**active maze chase** (the interesting part),
`4/5/6/7`=eaten → animate → return-home → respawn (handlers `$30DD/$311C/$3150/$3184`).

### The chase algorithm (state 3)
Per enemy, once it is grid-aligned at a maze cell:

1. **Greedy pursuit toward the player.** Chase helper **`$2D0E`** (cats; duplicated at
   `$3421` for snakes) reads the **player's sprite position** and steers toward it:
   ```
   2D1C: ld a,($8003)   ; player sprite X
   2D1F: cp (hl)        ; vs this enemy's X
   2D22: jp z,$2D2E     ; aligned  -> dir 0 on this axis
   2D25: jp c,$2D2B
   2D28: ld (hl),$04    ; player is one side -> dir bit $04
   2D2B: ld (hl),$08    ; other side        -> dir bit $08
   ...
   2D35: ld a,($8000)   ; player sprite Y ; sets dir bits $01/$02/$00 on the other axis
   ```
   Directions are a **bitmask $01/$02/$04/$08** (four cardinals).

2. **Semi-random imperfection.** A per-enemy counter is incremented each pass; when it hits an
   excluded value the chase call is skipped and the enemy drifts. The RNG source is the Z80
   **R (refresh) register**: `ld a,r; and $03` at `$2CEC` (also `$2E24`, `$2E74`;
   snake twins `$33DB`, `$3509`). Used both to "wander instead of chase" and to pick a
   turn when blocked.

3. **Wall / maze checks.** Helper **`$30B3`** (a per-actor clone of `$251B`) converts the
   enemy's own X/Y into a VRAM tile address (`$9000`+). Each per-direction mover
   (`$2EC4`=$01, `$2F10`=$02, `$2F5C`=$04, `$2FAA`=$08) reads the tile ahead and compares
   it to wall/gate codes (cats: **`$F4`**, `$EF`; snakes: `$E1-$E4`); if blocked it re-rolls a
   direction. The maze also embeds junction "control tiles" (`$14,$34,$54,…` step `$20`, and
   `$22,$42,…`) that mark decision points and allowed turns.

4. **Fall-and-die on open water (bridge/platform).** *Before* moving, once grid-aligned, the
   engine reads the enemy's **current cell** (`$30B3`→addr, `+$FFE2`) and compares it to `$FE`
   (the "open water / gap" tile): **`$2DD0` for cats, twin `$34B5` for snakes**. On a match it
   kills the enemy — writes (relative to record base): **+$07 (state) = `$04`** (→ the
   dying/return handler `$30DD` / snake twin `$3710`), **+$1B (busy lock) = `$01`**, **+$04
   (tile) = `$1C`** (cat splash) / **`$2C`** (snake splash), **+$0A = `$00`**, and latches
   **splash sound `$95`**. The `$FE` cells are produced by the bridge opening (`$3BFF`; see §5)
   or the sliding platform leaving a gap — so a pursuer that follows the player onto a bridge
   just as it opens is standing on `$FE` and dies. (The enemy passed the wall check in step 3
   when the cell was still solid `$FC`; the bridge opens while it is mid-cell.)

5. **Apply movement.** `$3060` adds the direction's velocity to the enemy's X/Y, advances the
   4-frame walk animation, then `$309C` writes Y/tile/color/X into the sprite mirror slot.

### Difficulty scaling & per-enemy personality
- **Level-scaled spawn timing** (snakes): `$32F7` reads the level counter `$8101`
  (clamped to 9) and indexes 16-bit delay tables **`$3315`** (snake A) and **`$332B`** (snake B).
  Higher level → shorter delay → snakes enter sooner; snake B always lags snake A (staggered entry).
- **Per-enemy move-delay counter** (record +$00 / +$1A region) throttles steps → effective
  per-enemy **speed** knob.
- **Level-indexed AI pointer tables** (record +$18/+$1D, loaded via `$31CF` from
  `$2B5A`/`$2BB0`/`$2C06`) give per-enemy waypoint/behavior data that changes with the level.

### Supporting subsystems (enemy-related but not movement AI)
- **`$394B`** — "eaten" state machine: when the power/event object is active and the player
  overlaps an active enemy, mark it eaten (state 4→…), drive it home by scanning the tilemap
  for the home tile `$37`, play sounds, and award escalating BCD points (`$8041`).
- **`$392A`** — player↔enemy collision/death: AABB overlap test (`$395E`) of each enemy sprite
  against the player sprite `$8000`; on a hit (when not powered) set player death `$841F=2`.

### One-line summary
> Each enemy (cat or snake) greedily chases the player's on-screen sprite (`$8000`/`$8003`),
> re-deciding at maze cells, with an R-register random component for imperfection and
> `$9000`-tilemap wall checks (cat codes `$F4`/`$EF`, snake codes `$E1-$E4`). Stepping onto an
> open-water tile `$FE` (opened by a bridge/platform) kills the enemy → state 4 (`$2DD0` cats /
> `$34B5` snakes, splash sound `$95`). Difficulty rises via level-indexed spawn-delay tables
> (`$3315`/`$332B` on `$8101`) and per-enemy speed/waypoint data.

---

## 7. Code / data region map (`$0000-$4928`)

```
$0000-$00FF : CODE  reset/NMI vectors + init; nop padding $009F-$00FF
$0100-$0961 : CODE  per-frame service ($0100), boot/RAM test ($07F1), screen clear ($0933)
$0962-$09EF : CODE + small tables (title/text draw)
$09F0-$100E : DATA  static/title tilemap + color/attribute data
$100F-$1390 : CODE  maze-draw dispatcher ($130B), VRAM blit ($1346/$1384)
$1391-$1FD0 : DATA  ** 4 MAZE TILEMAPS ** — banks of $310 bytes:
                    $1391, $16A1, $19B1, $1CC1  (selected by ($8101 & 3), blitted 28x28 to VRAM $9043)
$1FD1-$3FB3 : CODE  main engine (state dispatch $1FD1, actor/AI engine, collisions)
                    embedded data: $2342-$2390 display list; $246C-$249A player init record;
                    $249B-$24FC FF-terminated attract-demo movement script; misc delta tables
$3FB4-$407C : DATA  VRAM-position pointer tables (ix=$3FB4/$3FC6, stride $12/$20) + small jump table
$407D-$44FD : CODE  score/status display + game logic
$44FE-$4558 : DATA  parameter + VRAM-address tables + direction map
$4559-$4919 : CODE  display/text routines
$491A-$4927 : DATA  text/font message table (blitted to VRAM $9100 by $48FA)
$4928-$4FFF : unmapped padding / dump end
```

### Jump / dispatch tables
- **`$1FD1`** — main state dispatcher: reads `$8039` bitmask, `rrca`+`jp c` chain to
  `$219E/$21CA/$21F6/$2204/$2284/$200A/$20B3/$20D9`.
- **`$130B`** — level→maze-bank selector: `($8101 & 3)` → `$1391/$16A1/$19B1/$1CC1`.
- **`$3FB4`/`$3FC6`** — 2-byte LE VRAM-position pointer tables.
- Computed `jp (hl)` sites: `$11D8`, `$3B98`, `$4068`.

---

## 8. Work RAM variable map (`$8000-$83FF`)

### Globals `$8020-$80FF`
| Addr | Name | Meaning |
|------|------|---------|
| `$8020` | `dsw_raw` | raw DIP copy |
| `$8021` | `in_a800` | raw coin/start input (per frame) |
| `$8023` | `credits_bcd` | credits (BCD) |
| `$8025-$8028` | `dsw_*` | coinage / lives / cocktail / cabinet DIP fields |
| `$8030` | `game_mode` | 0=attract, 1=1P, 2=2P |
| `$8031` | `cur_player` | 0=P1, 1=P2 |
| `$8032` | `req_level_done` | level-complete pending (in-game→dispatcher) |
| `$8033` | `req_death` | player-death pending (in-game→dispatcher) |
| `$8034`/`$8035` | `p1_done`/`p2_done` | player finished/out of lives |
| `$8036` | `flip_state` | current screen-flip mirror |
| `$8038` | `first_turn` | first-turn-of-game flag |
| `$8039` | `req_flags` | **event bitmask** (producer/consumer handshake; see §4) |
| `$803B` | `seq_state` | **top-level state 0-8** (see §4) |
| `$803C` | `is_2player` | 1 = 2P game |
| `$803D` | `disp_timer` | down-counter for timed screens |
| `$803E` | `endlevel_active` | level-end / freeze gate (also gates enemy spawn/move) |
| `$803F` | `endlevel_ctr` | level-end sub-counter |
| `$8040` | `score_add_trig` | score-add trigger |
| `$8041-$8043` | `score_add` | amount to add (BCD3) |
| `$8044-$8046` | `p1_score` | P1 score (BCD3) |
| `$8047-$8049` | `p2_score` | P2 score (BCD3) |
| `$804C-$804E` | `hi_score` | high score (BCD3) |
| `$809C-$80FB` | `play_scratch` | 96-byte in-game working block, zeroed each play. Sub-blocks: `$80A0-$80A8` sliding-platform (`$407D`, slot 2), `$80C0-$80C7` bridge anim (`$3BFF`), `$80E0-$80E7` scripted-move (`$3D0A`) |

### Per-player pages: `$8100` (active) / `$8200` (P1) / `$8300` (P2)
256-byte pages, swapped via `ldir`. Same layout each:
| Off | Field |
|-----|-------|
| +$00 | **lives** (3 or 5) |
| +$01 | **level number** (BCD) — `(level & 3)` picks the maze |
| +$02 | extra-life bonus counter |
| +$03… | per-level working data |
| +$20 (`$8120`) | 9-byte food-piece state table: `0`=uncollected · `2`=carried · `1`=returned home. Pickup 0→2 (`$29C8`), return 2→1 (`$4167`), drop-on-death 2→0 (`$3E29`). See §5. |
| +$40 (`$8140`) | **9 × 2-byte returned-food log** (`$8140-$8151`); fill-from-front, appended by `$3EF2` when a piece is carried home. All 9 nonzero ⇒ **level complete** (`$2429`). See §5. |
| +$80/$81 | two special-item consumed flags |

---

## 9. Labeling workflow

`funnymou.asm` supports equates at the top (one is already present):
```
    watchdog            = $B800 ; watchdog
```
To document the dump, **add `name = $addr ; comment` equates** there as findings solidify,
and add `;` comments to routine entry points. Below is a proposed starter set consolidating
this doc's findings — add incrementally as each is confirmed in-listing.

```asm
; --- hardware ---
watchdog        = $B800   ; watchdog reset / sound command write
mainlatch       = $B000   ; LS259: +0 nmi_en +2 coin_lock +3 snd_en +6 flipX +7 flipY
dsw             = $B000   ; DIP switches (read)
in_joy          = $A000   ; player joystick
in_coin         = $A800   ; coin/start
vram            = $9000   ; tilemap
spriteram       = $9840   ; 8x4 sprites

; --- sprite mirror & actors ---
sprite_mirror   = $8000   ; 8x4, DMA'd to spriteram each frame by copy_sprites
player_ws       = $8400   ; player workspace (template player_tmpl=$246C)
plr_y           = $8406
plr_x           = $8407
plr_state       = $841F   ; 0 respawn 1 play 2 dead 4 enter-hole 5 at-hole
cat_ctrl_85     = $8500   ; [enable,spawned] pairs (cats A/B/C)
cat_rec_a       = $8510
cat_rec_b       = $8550
cat_rec_c       = $8570
snake_ctrl_86   = $8600   ; [enable,spawned] pairs (snakes A/B)
snake_rec_a     = $8610
snake_rec_b     = $8630
event_obj       = $85C0   ; power/fruit object (slot 7)
bomb            = $8680   ; player bomb object (slot 7); drop+detonate via button1
bomb_supply     = $867F   ; remaining bombs (=5 at each life start, $206C)
bomb_lethal     = $8683   ; explosion active/lethal flag (checked by bomb_collide)

; --- globals ---
game_mode       = $8030   ; 0 attract 1 1P 2 2P
cur_player      = $8031
req_level_done  = $8032
req_death       = $8033
req_flags       = $8039   ; event bitmask
seq_state       = $803B   ; 0..8 top-level state
p1_score        = $8044
page_active     = $8100
page_p1         = $8200
page_p2         = $8300
food_state      = $8120   ; 9x1 per-piece state: 0 uncollected, 2 carried, 1 returned
food_returned   = $8140   ; 9x2 fill-from-front log; all set (all food carried home) => level clear

; --- key routines ---
nmi_service     = $0100
copy_sprites    = $062C
score_add_apply = $063B
read_inputs     = $0743
boot_selftest   = $07F1
fg_loop         = $1FD1   ; consumes req_flags
load_maze       = $130B   ; (level & 3) -> bank
ingame_update   = $23A0   ; per-frame game pipeline (state 6)
platform_update = $407D   ; sliding platform (slot 2), block $80A0-$80A8
bridge_update   = $3BFF   ; bridge open/close tile animation, block $80C0-$80C7
scripted_move   = $3D0A   ; scripted player move (home-entry), block $80E0-$80E7
level_end_seq   = $23D3   ; per-frame: run check_level_done, else end-level timer -> req_level_done
check_level_done= $2429   ; all 9 food_returned slots nonzero? => start end-of-level sequence
food_pickup     = $29C8   ; player over food tile ($DC-$EF) -> mark carried (food_state 0->2)
food_set_state  = $3EB2   ; find food piece at VRAM cell (hl), write reg c into its food_state
food_maze_erase = $3F62   ; blank carried (state 2) food cells in the maze (tile $25/$87)
food_maze_redraw= $3E29   ; repaint maze food from food_state (drops carried 2->0 on rebuild)
food_pos_tbl    = $3FC6   ; per-maze food VRAM-cell pointer table (stride $12, 9x2)
food_return_home= $4167   ; home-entry: log carried piece (food_return_add) + food_state 2->1
food_return_add = $3EF2   ; append a carried-home piece to food_returned, draw it, +500 pts
food_log_redraw = $3F36   ; repaint all food_returned entries to VRAM (maze rebuild/page swap)
player_update   = $2539
pos_to_maze     = $251B   ; player X/Y -> vram tile addr
cat_mgr         = $2A51   ; cats A/B/C
cat_ai          = $2C3E   ; per-enemy state engine (cats)
enemy_chase     = $2D0E   ; steer toward player sprite ($8000/$8003)
enemy_rand_dir  = $2CEC   ; ld a,r random direction
tile_addr_actor = $30B3   ; enemy X/Y -> vram tile addr
cat_water_die   = $2DD0   ; cat on $FE tile -> state 4, tile $1C, sound $95
snake_water_die = $34B5   ; snake on $FE tile -> state 4, tile $2C, sound $95
snake_mgr       = $3206   ; snakes A/B
snake_ai        = $333F   ; per-enemy state engine (snakes)
spawn_delay_sa  = $3315   ; level-indexed spawn delay table (snake A)
spawn_delay_sb  = $332B   ; level-indexed spawn delay table (snake B)
enemy_eaten_sm  = $394B
player_vs_enemy = $392A
bomb_update     = $100F   ; drop ($1046) / arm+detonate ($10ED) / explode ($110D)
bomb_collide    = $116D   ; explosion AABB vs player + each cat/snake (enemy->state 6)
event_update    = $41BF   ; power-pellet object: spawn/move/despawn (slot 7)
event_clear_enemies = $3ACC ; while pellet active: send every enemy to dying/return state $04
```

---

## 10. Open questions / next steps

- **Enemy record scratch fields** +$01/+$02/+$05/+$06/+$0A/+$0B/+$13/+$14 — not yet pinned.
- **Maze "control tile" encoding**: confirm exactly how junction tiles (`$14/$34/…`,
  `$22/$42/…`) encode allowed directions, and the full wall/path/item tile legend
  (`$37`=enemy home, `$39/$3A`=power tile, `$F4`/`$EF`=cat walls, `$E1-$E4`=snake walls,
  `$FE`=open water/gap (enemy death; player enter-hole), `$F5`=exit/hole, `$FC`=bridge,
  `$F9`=sliding-platform, `$FF`=home-entry — see the §5 tile-effect table).
- **Bridge & sliding-platform enemy death** — *resolved* (see §6 step 4 / §5). Player-side
  triggers: bridge `$3BFF`/tile `$FC`, platform `$407D`/tile `$F9` (sprite slot 2). Enemy-side:
  a cat/snake on an `$FE` cell is killed at `$2DD0`/`$34B5` → state 4, splash sound `$95`. The
  bridge writes `$FE` from its open-tile block `$3BD7`. *Remaining*: confirm the sliding
  platform likewise exposes `$FE` under the vacated gap (assumed, not yet traced tile-by-tile).
- **Food carry-and-return mechanic** — *resolved* (see §5). `$8120` holds 9 per-piece states
  (`0` uncollected / `2` carried / `1` returned). Pickup `0→2` at `$29C8` (tile range `$DC-$EF`,
  carry-one-at-a-time via the `$809C-$80A0` block); return `2→1` at `$4167` (logs to `$8140` via
  `$3EF2`, +500 pts); drop-on-death `2→0` at `$3E29`. `$2429` scans `$8140` and, when all 9 are
  returned, starts the end-of-level sequence. *Remaining nuance*: the `$809C-$80A0` carried-food
  block overlaps the sliding-platform block region (`$80A0+`, slot 2) — confirm how the carried
  piece is actually drawn (shared slot 2?) vs the platform, and pin the exact maze "home base"
  cell that triggers `$412F`→`$4167`.
- **Player bomb subsystem** — *located* (`$100F`/`$116D`/`$8680`, see §5). Remaining detail:
  the exact meaning of the drop-gate maze-tile check (`$251B`+`$FFE2`, tile ≥ `$F0`) and
  the full explosion-stage tile/animation table (`$110D`).
- **Boulder mechanics** — *not yet located*. The maze boulder (rests atop the edge ladders,
  released by player touch, falls and squashes) is distinct from the bomb; find its object
  record, trigger (player-touch), fall logic, and squash/death test. (The `$8680` object is
  the bomb, **not** the boulder — do not conflate them.)
- **`$8480` bonus subsystem** field semantics (handler `$4247`).
- Snake manager (`$3206`) internals were inferred as a twin of the cat manager — verify
  directly, and confirm what actually distinguishes cats from snakes (graphics only, or
  behaviour — e.g. the different wall-code set `$FE`/`$E1-$E4`).
- Difference between enemy states 3 and 4 (both "active"); and states 5/6/7 animation details.
- Sound command values (writes to `$B800`) → map to audio-CPU behaviors (`fm.6`).
- The attract-demo script format at `$249B` (FF-terminated byte pairs).

### How to extend
1. Pick a routine/region from §7 or an open question.
2. Grep its address as an operand; re-decode by hand if it sits after a data block (§2).
3. Add confirmed `name = $addr` equates + comments to `funnymou.asm`, and update this file.
