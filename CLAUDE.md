# CLAUDE.md — Funny Mouse ROM reverse-engineering

This repo is a **reverse-engineering / documentation project** for the arcade game
**Funny Mouse** (`funnymou` in MAME). The goal is to annotate the disassembly
(`funnymou.asm`) with meaningful labels and comments, with a current focus on the
**enemy (cat) AI**. This file is turned into `src.asm` that can then be assembled.

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
  that must **pick up the pieces of food scattered in the maze and carry them back to its
  home base**, all while being chased by enemies — **cats** and **snakes**. Merely collecting
  a food piece is not enough; it must be *returned home*. The level is complete once **all
  food has been returned**.
  The player can also **drop bombs** (button1): a bomb is dropped, then a second press
  detonates it and the explosion kills anything it touches (see §5 — traced to `$100F`).
  **Boulders** sit at the tops of the edge ladders: when the player touches one it falls and
  squashes anything it hits. The maze also has **bridges** (crossing one opens it, dropping
  any enemies into the water) and **sliding platforms** (stepping on one carries the player 
  across a gap; enemies that follow fall and die). Completing the level advances to the next.

### Files
| Path | What it is |
|------|-----------|
| `funnymou.asm` | **The buildable master (~11.7k lines).** Assembles to a **hash-correct** ROM via `build.sh`. This is the file to annotate. See [Build & edit rules](#build--edit-rules) below. |
| `build.sh` | `cut -c 16- funnymou.asm > src.asm; zmac -c -n src.asm; split -b4k` → shasum-compares each chunk to `dump/suprmous.x1..x5`. |
| `funnymou.org` | MAME ROM defs + `thepit_main_map` + preliminary memory map. |
| `dump/` | Raw ROM/PROM images (`sm.6`, `suprmous.x*`, `*.clr`). |
| `thepit/` | MAME driver source for the hardware (`thepit.cpp`/`.h`, `thepit_v.cpp`). Authoritative HW ref. Confirms `funnymou` runs **ROT90** (`thepit.cpp:1474`). |

### Build & edit rules
`funnymou.asm` is **zmac listing baked into the source**: columns **1–15** of every line are an
`ADDR  HEXBYTES<tab>` prefix that `build.sh` **strips** (`cut -c 16-`) before assembling. So:
- **All real content must start at column ≥ 16.** A comment/directive starting before col 16
  gets its first 15 chars chopped and breaks the build. Existing equates use 20 leading spaces —
  match that.
- Comments, `name = $addr` equates, and label renames emit **no bytes** → the ROM stays
  byte-identical *as long as it still assembles*. **Verify every change with `./build.sh`**
  (all 5 shasum pairs must match).

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
`$41BC` (**boulder** update — `boulder_update`).

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
| 7 | `$801C-$801F` | **Bomb** *or* **boulder** (mutually exclusive) | `$8680` / `$85C0` | `$10D6` / `$4232` |

So there are up to **3 cats + 2 snakes** (5 enemies) + the player's bomb + a falling boulder.
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
| +$06 | `$8406` | **X** position (joystick L/R; committed to sprite **+0 / HW-Y** — screen is ROT90) |
| +$07 | `$8407` | **Y** position (joystick U/D; committed to sprite **+3 / HW-X** — screen is ROT90) |
| +$08 / +$09 | `$8408`/`$8409` | current X / Y velocity (match `$8406`/`$8407`) |
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
`$8406→$8000`, `$8413→$8001`(tile), `$8412→$8002`(color), `$8407→$8003`.
**The screen is ROT90** (MAME `thepit.cpp:1474` — `funnymou … ROT90`), so game-space **X**
(`$8406`, joystick L/R) is written to the hardware **Y** sprite byte (`$8000`, sprite +0),
and game-space **Y** (`$8407`) to the hardware **X** byte (`$8003`, sprite +3). Verified from
the movement code: `move_player_left`/`right` ($2710/$2752) modify `$8406` (clamped `$14..$D4`),
`move_player_down`/`up` ($2794/$27D6) modify `$8407`.
**`$8000`/`$8003` (player sprite bytes = game-X / game-Y) is what the enemies chase** (see §6).

### Enemy record (32 = `$20` bytes each — same layout for cats and snakes)
Bases: **`$8510`, `$8550`, `$8570`** (cats A/B/C, page-$85 manager `$2A51`) and
**`$8610`, `$8630`** (snakes A/B, page-$86 manager `$3206`). Shared sprite-commit at `$309C`.

| Off | Meaning |
|-----|---------|
| +$00 | step/move counter |
| +$03 | sprite-slot link (low byte of `$80xx` mirror addr: `$05`/`$0D`/`$11`/`$15`/`$19`) |
| +$04 | base tile (+flip) → sprite +1 |
| +$07 | **AI state**: 1=appear/emerge (→3 when emerge-ctr `+$13`≥`$80`), 3=active chase (only active state), 4=dying/return start, 5/6/7=return-home→respawn |
| +$08 | **X** (game-logic, joystick axis) → sprite +0 (HW-Y; ROT90). funnymou `cat1_x`=`$8518` |
| +$09 | **Y** (game-logic) → sprite +3 (HW-X; ROT90). funnymou `cat1_y`=`$8519` |
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
| `$246C` (`player_init_template`) | `$2E` | `$8400` | Player |
| `$2B75` | `$1D` | `$8510` | Cat A |
| `$2BCB` | `$1D` | `$8550` | Cat B |
| `$2C21` | `$1D` | `$8570` | Cat C |
| `$3292` | `$20` | `$8610` | Snake A |
| `$32D7` | `$20` | `$8630` | Snake B |
| `$2B5A`/`$2BB0`/`$2C06` | — | rec+$18 | per-enemy AI waypoint tables (via `$31CF`) |
| `$2B28` | — | rec+$1D | shared secondary table (via `$31CF`) |

### Bomb (`$8680`) and boulder (`$85C0`)
Both draw into slot 7 (mutually exclusive). **The `$8680` object is the player's BOMB** —
logic `$100F` (update) / `$116D` (explosion collision). Confirmed in-listing:

- **Update dispatch `$100F`**: cleared (`$1038`) while frozen (`$803E≠0`) or the player is
  dead/respawning (`$841F`==2/0). If a bomb is already live (`$8680≠0`) → run the live-bomb
  update `$10ED`; else, if the supply `$867F>0`, handle a new drop at `$1046`.
- **Drop (button press)** `$1046`: reads `$8401 & $10` (button1); returns if not pressed or if
  a boulder is active (`boulder_req` `$85C1≠0`). Gated by a maze-tile check near the player
  (`$251B`→addr, `+$FFE2`, tile ≥ `$F0`). On success: decrement supply `$867F` (`$1063`),
  redraw the on-screen bomb-count row (`$106C`, tiles at `$91C3`/color `$95C3`), then `$109E`
  seeds the bomb at the player's position (`$8684`=X from `$8406`, `$8685`=Y from `$8407`,
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

Boulder — the **falling boulder** (`$85C0` block, slot 7). Two boulders rest at **fixed edge
cells** (tiles `$39`/`$3A` = `TILE_BOULDER`; redrawn at `$9065`/`$9085` and `$9385`/`$93A5`
until triggered; consumed flags `$8180`/`$8181`, one per screen half). The player **touches**
one (`$2923`→`$2935`, tile `$39`/`$3A`): sets `boulder_req` `$85C1`=1 and stashes the player's
`$8406`/`$8407` in `$85C2`/`$85C3` (skipped if a bomb is live or a boulder is already active).

Handler **`boulder_update` `$41BC`**: on the first active frame it copies `$85C1-$85C3`→
`$85C4-$85C6`, plays sound `$95`, sets `boulder` `$85C0`=1, and picks/erases the triggered edge
cell by `player_x ≷ $80` (`$41EF`). Then each frame it advances **`boulder_y` `$85C6 += 2`**
(until `$E0`, then despawns) while **`boulder_x` `$85C5` stays constant**. Commit to slot 7
(`$801C`): `$85C5`→sprite +0 (HW-Y), `$85C6`→sprite +3 (HW-X), tile `$37`, color `$05`. **Because
the screen is ROT90, `$85C5` (constant) is the physical *horizontal* and `$85C6` (increasing) is
the physical *vertical* — so the boulder falls straight DOWN in a fixed column** (`$85C6`
increases exactly as `player_y` does when you push down).

**Squash on hit — `boulder_squash` `$3ACC`** (called from the eaten SM `$394B`; no-ops unless
`boulder`≠0). For each enabled, non-busy enemy (cats `$8501`/`$8505`/`$8507`, snakes
`$8601`/`$8603`) it calls **`boulder_vs_enemy` `$3B74`**: an **AABB overlap test** of the falling
boulder sprite (`$801C`) against that enemy's sprite (`iy`), comparing sprite +3 and +0 within a
window; **only on overlap** does it `jp (hl)` into the kill template (`$3B26` cats / `$3B64`
snakes) → state (+$07)=`$04`, splash tile (+$04)=`$1C`/`$2C`, busy-lock (+$1B)=`$01`. The
**player sprite is never tested**, so the boulder never hurts the player. (Earlier this was
wrongly described as clearing *all* enemies with no overlap test — `$3B74` *is* the per-enemy
overlap test.)

### Maze tools: bridges & sliding platforms (player tile-interaction dispatcher)
When the player is committed each frame (`$28BB` region), a chain of small helpers checks the
maze tile just ahead of the player (`$251B`→VRAM addr, then `+$FFE2`/`+$FFE1`) and fires a
per-tile effect. Confirmed tile → effect:

| Tile | Helper | Effect |
|------|--------|--------|
| `$F5` | `$28E2` | set `$842D` "over exit/hole" flag |
| `$FE` | `$294C` | player enters hole → `$841F=4` |
| `$39`/`$3A` | `$2923` | **release boulder** (`TILE_BOULDER`) → `boulder_req` `$85C1`=1 |
| `$FC` | `$29A1` | trigger **bridge** subsystem (`$80C0=1`) |
| `$F9` | `$29AF` | advance **sliding-platform** subsystem (`$80A2`) |
| `$DC-$EF` | `$29C8` | **pick up food piece** (`$8120` slot 0→2, carried); see §5 food subsystem |
| `$FF` | `$295A` | (if over-hole) start scripted home-entry move (`$80E0`), `$841F=5` |

**Bridge — `$3BFF`** (block `$80C0-$80C7`). Once triggered (`$80C0`), it plays a timed
tile-animation that **opens then closes** a span of maze tiles: `$3C92` selects a per-maze
position set (table `$3BE3`, indexed by `$8101 & 3`) and `$3CA9`→`$1360` blits the open/closed
tile blocks (source tables `$3BD7`/`$3BDD`) into VRAM. So the player crossing a bridge tile
(`$FC`) make **all** the bridges open — an enemy over the opened span is over "water" and dies.

There is **no per-bridge state**: crossing any `$FC` tile sets the single flag `$80C0`, and one
animation pass rewrites **every** bridge span in the maze at once. `$3BE3` is 4 entries of `$07`
bytes (one per maze), each a **count byte (always `$03` = 3 bridges) + three 2-byte LE VRAM
cells**; the blit is a `djnz` loop (`$3CA9`, `b`=count) over all 3. Per-maze cells (`(cur_map)&3`):
maze 0 = `$912A`/`$9132`/`$92AA`, maze 1 = `$912E`/`$92AA`/`$92B2`, maze 2 = `$91A6`/`$92AE`/`$9132`,
maze 3 = `$9226`/`$92AE`/`$92BA`. Open block `$3BD7` = `F8 34 FE 24 F7 33` (2×3, contains `$FE`);
closed block `$3BDD` = `F6 24 FC 24 F6 24` (contains `$FC`). Phase is driven by `$80C2` (0=open →
1=hold-open → 2=close).

**Sliding platform — `$407D`** (block `$80A0-$80A8`, draws into **sprite slot 2** via `$4092`).
On activation it snaps to the player (`$80A5`=X from `$8406`, `$80A8`=Y from `$8407`+`$F0`;
"slides horizontally" below is on the *physical* ROT90 screen — game-Y `$80A8++` = physical X),
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

There are **two enemy types** — **3 cats** and **2 snakes** — implemented as 
**two near-identical drivers** funneling into a **shared per-enemy engine**. 
(The two types differ mainly in manager/graphics and the wall-code set they navigate against; 
the core chase logic is identical.)

### Managers
- **`$2A51`** — manager A (**cats**): cats A/B/C (records `$8510`/`$8550`/`$8570`).
- **`$3206`** — manager B (**snakes**): snakes A/B (records `$8610`/`$8630`).

Each manager, per enemy: if the enemy is enabled and not yet spawned, `ldir` its ROM template
into the record and latch a spawn sound; otherwise dispatch its update. Spawning is gated by
a per-enemy **countdown timer** (`$2AF1`) plus a **spawn-tile-validity check**, and by the
global level gate `$803E`.

### Shared per-enemy engine — `$2C3E` (cats) / `$333F` (snakes)
Dispatches on the enemy's **state field (record +$07)**:
`1`=appear/emerge (handler `$2C70`) — plays the rise-out animation and increments the **emerge
counter at record `+$13`** once per frame; the instant it reaches **`$80`** (128, ≈2 s) it
**promotes to state 3** (`$2C98`: clears `+$14`, writes state=`$03`). This is the *only*
"starts chasing" transition — there is **no persistent walk-vs-chase mode toggle**.
`3`=**active maze chase** (the interesting part — handler `$2CB6`; the *only* active state).
`4`=dying/return-home start, `5/6/7`=animate → return-home → respawn (handlers
`$30DD/$311C/$3150/$3184`). *(Correction: state 4 is **not** a second chase state — the
dispatch sends it to the dying handler `$30DD`.)*

### The chase algorithm (state 3)
Per enemy, once it is grid-aligned at a maze cell.

**Junction detection is geometric, not tilemap-based.** The re-steer step only runs when the
enemy has just finished stepping onto a fresh grid cell — gated by a per-enemy move-timing
counter at record **`+$17`** (`$2CBB`: while nonzero it decrements and keeps the current
direction; only at `0` does it re-evaluate). At that moment it tests whether its own **X byte
(record `+$08`)** equals one of the junction **columns** `$14/$34/$54/$74/$94/$B4/$D4`
(= `$14 + $20·n`, spanning the `$14..$D4` position range; scan at `$2CD0`) **and** its **Y byte
(record `+$09`)** equals one of the junction **rows** `$22/$42/$62/…` (scan at `$2CE1`). A hit on
both axes means the enemy sits exactly on the maze's decision lattice → it's at a junction. **No
maze tile is read for this decision** — `cp (hl)` compares against the record's own position
bytes, not VRAM. (The `$14…`/`$22…` values are position coordinates, *not* "control tiles".)

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
   Directions are a **bitmask $01/$02/$04/$08** (four cardinals). (`$8003`/`$8000` are the
   *hardware* sprite X/Y bytes; under ROT90 they hold game-Y/game-X respectively — see §5. The
   enemy compares its own matching sprite byte, so the chase is self-consistent either way.)

2. **Semi-random imperfection (per-enemy chase-vs-drift).** At a junction (detected as above)
   the re-steer is gated by a per-enemy **step counter (record `+$1C`**, bumped at `$2D4E`):
   `ld a,(bc); and mask; cp excluded; call nz,$2D0E` — it re-aims at the player *unless* the
   counter hits the excluded value, in which case it skips the re-aim and keeps walking straight.
   **The mask/excluded pair is chosen by *enemy identity*, not junction type**: `$2D53` does
   `ld a,l; and $F0` on the **low byte of the enemy's own record address** (`$851x`→`$10`,
   `$855x`→`$50`, `$857x`→`$70`; snakes `$861x`→`$10`, `$863x`→`$30`) and dispatches to that
   enemy's gate — `$10` → `(cnt&3)==0` (`$2D5B`), `$30` → `(cnt&3)==2` (`$2D72`), `$50` →
   `(cnt&7)==5` (`$2D89`), `$70` → `(cnt&7)==7` (`$2DA3`). So each cat/snake has its own
   chase-vs-drift personality baked into where its record lives. This isn't a mode change — it's a
   per-enemy dice roll that makes the beeline imperfect. The other RNG source is the Z80
   **R (refresh) register**: `ld a,r; and $03` at `$2CEC` (also `$2E24`, `$2E74`;
   snake twins `$33DB`, `$3509`), used to pick a turn when blocked.

3. **Wall / maze checks.** Helper **`$30B3`** (a per-actor clone of `$251B`) converts the
   enemy's own X/Y into a VRAM tile address (`$9000`+). Each per-direction mover
   (`$2EC4`=$01, `$2F10`=$02, `$2F5C`=$04, `$2FAA`=$08) reads the tile ahead and compares
   it to wall/gate codes (cats: **`$F4`**, `$EF`; snakes: `$E1-$E4`); if blocked it re-rolls a
   direction. (Junctions themselves are *not* marked by maze tiles — they are detected from the
   enemy's own X/Y hitting the decision lattice; see "Junction detection is geometric" above.)

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
- **`$394B`** — enemy death/return-home driver (the `enemy_eaten_sm` label is a misnomer; there
  is **no** "player eats enemy" mechanic). Each frame it dispatches per-enemy return handlers
  (`$3A08`/`$3A15`/`$3A22`/`$3A50`/`$3A5D`) then calls `boulder_squash` `$3ACC`. For an enemy
  already in the dying state (+$07=`$04`, set by water / bomb / boulder) the return handler drives
  it toward the home tile `$37` (verified: `cp $37` at `$3A35`/`$3A70` in the return sub `$3A08`),
  plays sounds, and awards escalating BCD points (`$8041`). Note `$37` is *also* funnymou's
  `TILE_WATER` — the tile the player drowns on (`cp TILE_WATER ; fell in water` at `$2663`);
  the same graphic serves as maze water and the enemy-return target (tile codes are gfx indices).
- **`$392A`** — player↔enemy collision/death: AABB overlap test (`$395E`) of each enemy sprite
  against the player sprite `$8000`; on a hit set player death `$841F=2`. (`$395E` is structurally
  the twin of `boulder_vs_enemy` `$3B74` — same AABB test, but this one kills the *player*, not the
  enemy. There is no "powered/invincible" player state — enemies are killed only by water, bomb,
  or boulder.)

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
$0962-$09EE : CODE + small tables (title/text draw); screen-blit routine $09BB (level-clear
                    intermission) via blit_rect-clone $09DC, called from $20BC
$09EF-$100E : DATA  intermission-screen background: intermission_screen ($09EF, 784B tilemap,
                    28x28 -> VRAM $9043) + intermission_screen_color ($0CFF, 784B color map)
$100F-$1390 : CODE  maze pipeline: draw_cur_level_map ($130B) -> draw_map ($1346)
                    -> blit_rect ($1360) / fill_rect ($1384) ; see "Maze / level data format"
$1391-$1FD0 : DATA  ** 4 MAZE TILEMAPS ** — banks of $310 bytes (=28x28) each:
                    level_1_map=$1391, $16A1, $19B1, $1CC1  (selected by ($8101 & 3),
                    blitted 28x28 to VRAM $9043)
$1FD1-$3FB3 : CODE  main engine (state dispatch $1FD1, actor/AI engine, collisions)
                    embedded data: $2342-$2390 display list; player_init_template $246C-$2499
                    (46B, ldir'd to $8400) + pad $249A; attract_demo_script $249B-$24FC
                    (FF-terminated joystick script, $0F-prefixed byte pairs); misc delta tables
$3FB4-$407C : DATA  VRAM-position pointer tables (ix=$3FB4/$3FC6, stride $12/$20) + small jump table
$407D-$44FD : CODE  score/status display + game logic
$44FE-$4558 : DATA  parameter + VRAM-address tables + direction map
$4559-$4919 : CODE  display/text routines
$491A-$4927 : DATA  text/font message table (blitted to VRAM $9100 by $48FA)
$4928-$4FFF : unmapped padding / dump end
```

### Maze / level data format
Each of the **4 maze banks** (`$1391`/`$16A1`/`$19B1`/`$1CC1`) is a **flat `$310` = 784-byte
array of tile-code bytes — one byte per cell, no header, no runtime compression**. The bytes
*are* the VRAM tile codes; they are copied verbatim.

- **Geometry: 28×28, stored column-major.** Each run of 28 source bytes is one screen column,
  top-to-bottom; because the hardware is **ROT90**, successive columns lay out **right-to-left**
  on the physical screen (matches the in-listing comment "27 cells per column, top-to-bottom,
  right to left"). Reshaping bank 0 as 28 columns × 28 rows renders a coherent symmetric maze
  (ladder shafts `$F5`, platform walls `$F4`, water `$37/$38`, food/boulder `$3x`, blank `$25`).

**Draw pipeline** (`draw_cur_level_map` `$130B`): `cur_map ($8101) & 3` selects the bank into
`de`, loads color byte `a=$83`, and calls **`draw_map` `$1346`**, which:
- fills the **tilemap** at VRAM `$9043` via **`blit_rect` `$1360`** — copies a `b`×`c` rect from
  `(de)` to `(hl)`, inner stride `+1` (`b`=28), row stride `+$20` (`c`=28); `de` reads the source
  linearly. (`ex af,af'` around the call preserves `a`, which `blit_rect` clobbers.)
- fills the matching **color RAM** window at `$9443` via **`fill_rect` `$1384`** — writes the
  constant `a` (=`$83`) into a `b`×`c` rect, row stride taken from `de` (`$0020`). So the whole
  playfield is a **single flat color**; there is no per-cell color data.

`blit_rect`/`fill_rect` are **general rectangle primitives**, reused for small blits (bridge
tiles 2×3, food pieces 2×2, `fill_rect` with `set 2,h` → color-RAM mirror). A third, **unused**
bottom-up copy variant sits at `$1372` (same as `blit_rect` but row stride `-$20`).

**Source-encoding caveat:** in `funnymou.asm` the banks are hand-written as a mix of
`dc count,value` (run-length fill) and literal `db` rows. Where `dc` runs replaced raw bytes the
baked-in **address column (cols 1–15) went stale** (e.g. shows `$13B8` where the real address is
`$13C7`) — trust `zout/src.lst`, not the address column, in the `$1391–$1FD0` data region.

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

There are **two labelling mechanisms**; pick by what the address *is*:

1. **Equates (`name = $addr`) — for RAM, hardware, data-table and constant addresses only.**
   Placed in the equate block at the top. eg:
   ```
       watchdog            = $B800 ; watchdog
   ```
   Use these for things that are *referenced but not executed*: work-RAM variables (`$80xx`),
   hardware ports (`$A000`/`$B000`…), and constants (tile codes, screen states). Equates use
   **20 leading spaces** (col 21+).

2. **Inline labels (`name:` at the address) — for code entry points / routines.**
   Do **not** equate a routine's address at the top. Instead put the label on its own line
   *immediately above the instruction at that address*, then replace the obvious `$addr`
   operand references (`call`/`jp`/`jr`/`ld`) in the code with the label name. This is how
   `init_game_RAM_test:` ($07F1, referenced by `jp init_game_RAM_test`) is done. Labels use
   **16 leading spaces** (col 17+) and may carry a trailing `; comment`:
   ```
                   cat_mgr:            ; cat manager (cats A/B/C)
   07F1  3A00B8  	    ld   a,(watchdog)      <- (the real instruction line follows)
   ```
   A label emits no bytes and takes the current PC, so the ROM stays byte-identical as long
   as it still assembles. **Verify every change with `./build.sh`.**

**Engine routines currently carried as inline labels** (grep the name in `funnymou.asm` to jump
to each). Pre-existing: `main_loop` ($0100, NMI service), `init_game_RAM_test` ($07F1, boot
selftest), `main_game_loop` ($1FD1, fg loop / consumes req_flags), `draw_cur_level_map` ($130B,
load maze), `get_player_tile_pos` ($251B, player pos→vram), `get_tile_pos` ($30B3, actor pos→vram).
Converted from equates:

```asm
; --- key routines (inline labels, not equates) ---
copy_sprites        $062C ; DMA sprite_mirror ($8000) -> sprite_ram each frame
score_add_apply     $063B ; apply pending score_add to score
read_inputs         $0743 ; read joystick / coin inputs
bomb_update         $100F ; drop ($1046) / arm+detonate ($10ED) / explode ($110D)
draw_map            $1346 ; draw current maze: blit_rect tiles ($9043) + fill_rect color ($9443)
blit_rect           $1360 ; copy b x c tile rect (de)->VRAM(hl), row stride $20 (general primitive)
fill_rect           $1384 ; fill b x c rect at (hl) with byte a, row stride de (general primitive)
bomb_collide        $116D ; explosion AABB vs player + each cat/snake (enemy->state 6)
ingame_update       $23A0 ; per-frame game pipeline (state 6)
level_end_seq       $23D3 ; run check_level_done, else end-level timer -> req_level_done
check_level_done    $2429 ; all 9 food_returned slots nonzero? => start end-of-level sequence
player_update       $2539 ; player state machine
cat_mgr             $2A51 ; cats A/B/C
cat_ai              $2C3E ; per-enemy state engine (cats)
enemy_rand_dir      $2CEC ; ld a,r random direction
enemy_chase         $2D0E ; steer toward player sprite ($8000/$8003)
cat_water_die       $2DD0 ; cat on $FE tile -> state 4, tile $1C, sound $95
food_pickup         $29C8 ; player over food tile ($DC-$EF) -> mark carried (food_state 0->2)
snake_mgr           $3206 ; snakes A/B
spawn_delay_sa      $3315 ; level-indexed spawn delay table (snake A)   [data table]
spawn_delay_sb      $332B ; level-indexed spawn delay table (snake B)   [data table]
snake_ai            $333F ; per-enemy state engine (snakes)
snake_water_die     $34B5 ; snake on $FE tile -> state 4, tile $2C, sound $95
player_vs_enemy     $392A ; AABB player sprite vs each enemy -> player death
enemy_eaten_sm      $394B ; enemy death/return-home driver
boulder_squash      $3ACC ; while boulder active: AABB-test it vs each enemy (boulder_vs_enemy=$3B74)
boulder_vs_enemy    $3B74 ; AABB falling boulder ($801C) vs one enemy -> squash (state $04) on overlap
food_maze_redraw    $3E29 ; repaint maze food from food_state (drops carried 2->0 on rebuild)
food_set_state      $3EB2 ; find food piece at VRAM cell (hl), write reg c into its food_state
food_return_add     $3EF2 ; append a carried-home piece to food_returned, draw it, +500 pts
food_log_redraw     $3F36 ; repaint all food_returned entries to VRAM (maze rebuild/page swap)
food_maze_erase     $3F62 ; blank carried (state 2) food cells in the maze (tile $25/$87)
food_pos_tbl        $3FC6 ; per-maze food VRAM-cell pointer table (stride $12, 9x2)   [data table]
platform_update     $407D ; sliding platform (slot 2), block $80A0-$80A8
bridge_update       $3BFF ; bridge open/close tile animation, block $80C0-$80C7
scripted_move       $3D0A ; scripted player move (home-entry), block $80E0-$80E7
food_return_home    $4167 ; home-entry: log carried piece (food_return_add) + food_state 2->1
boulder_update      $41BC ; boulder: spawn-on-touch / fall (boulder_y+=2, ROT90=>down) / despawn
```

(`spawn_delay_sa`/`sb` and `food_pos_tbl` are *data tables*, but they are pointer-load targets
reached by name — `ld bc,spawn_delay_sa` / `ld ix,food_pos_tbl` — so they carry an inline label
at the table's first byte rather than an equate.)

---

## 10. Open questions / next steps

- **Enemy record scratch fields** +$01/+$02/+$05/+$06/+$0A/+$0B/+$13/+$14 — not yet pinned.
- ~~**Maze "control tile" encoding**~~ **RESOLVED**: junctions are **not** tile-encoded — they
  are detected geometrically from the enemy's own X/Y hitting the decision lattice (X ∈
  `$14+$20·n`, Y ∈ `$22+$20·n`; see §6). The `$14/$34/…`, `$22/$42/…` values are position
  coordinates compared against record `+$08`/`+$09`, not tilemap bytes. Still open: the full
  wall/path/item **tile** legend
  (`$37`=water (funnymou `TILE_WATER`; player drowns) & enemy return-home scan target,
  `$39/$3A`=`TILE_BOULDER` (boulder rest cell; touch → boulder falls), `$F4`/`$EF`=cat walls, `$E1-$E4`=snake walls,
  `$FE`=open water/gap (enemy death; player enter-hole), `$F5`=exit/hole, `$FC`=bridge,
  `$F9`=sliding-platform, `$FF`=home-entry — see the §5 tile-effect table).
- **Player bomb subsystem** — *located* (`$100F`/`$116D`/`$8680`, see §5). Remaining detail:
  the exact meaning of the drop-gate maze-tile check (`$251B`+`$FFE2`, tile ≥ `$F0`) and
  the full explosion-stage tile/animation table (`$110D`).
- **`$8480` bonus subsystem** field semantics (handler `$4247`).
- Snake manager (`$3206`) internals were inferred as a twin of the cat manager — verify
  directly, and confirm what actually distinguishes cats from snakes (graphics only, or
  behaviour — e.g. the different wall-code set `$FE`/`$E1-$E4`).
- ~~Difference between enemy states 3 and 4~~ **RESOLVED**: only **3** is active chase (`$2CB6`);
  **4** is the dying/return-home start (`$30DD`). State 1→3 promotes when the emerge counter
  (record `+$13`) reaches `$80`; there is no persistent walk-vs-chase mode (chase-vs-drift is a
  per-enemy dice roll on the step counter `+$1C`, gate selected by record-address low byte —
  see §6). Remaining: states 5/6/7 animation details.
- Sound command values (writes to `$B800`) → map to audio-CPU behaviors (`fm.6`).
- The attract-demo script (`attract_demo_script` `$249B`-`$24FC`, now `db` data) decoding: it's
  `$0F`-prefixed FF-terminated byte pairs consumed from `$2507` (`ld de,attract_demo_script`) —
  confirm what the second byte of each pair encodes (direction/duration?).

### How to extend
1. Pick a routine/region from §7 or an open question.
2. Grep its address as an operand; re-decode by hand if it sits after a data block (§2).
3. Label it in `funnymou.asm` per §9: an **inline label** at the address for a code entry point
   (and swap obvious `$addr` operand refs → the name), or an **equate** for a RAM/HW/constant
   address. Verify with `./build.sh` (all 5 shasum pairs must match), then update this file.
