# Funny Mouse — How the Enemy AI Works

A guide to the behaviour of the enemies (the **cats** and **snakes**) that chase the mouse through the maze. 


## The enemies

The maze can hold **five enemies at once**: up to **three cats** and **two snakes**.

Cats and snakes look different, but **they share the same brain** - the exact same chasing and maze-navigation logic drives both. The differences are their appearance, their speed, and when they show up - not how they move through the maze.


## Spawning

Each enemy emerges at a fixed spot on the maze, blinking into view over roughly **two seconds**.

While an enemy is still emerging it is **harmless and untouchable** - it can't catch you, and none of your traps can hurt it yet. The instant its entrance finishes, it switches on and begins to chase. There's no "wandering" or "patrol" phase.


## Enemy chasing

**The enemy always heads toward wherever the mouse is right now.** It doesn't plan a clever route or remember where you've been - it just greedily moves in your direction, re-deciding as it goes. The maze is a grid of corridors, so an enemy can only actually change direction at an **intersection**. Every time it reaches one, it makes a fresh decision.

At each intersection the enemy only corrects ONE direction at a time. **Cats alternate strictly**: first "is the mouse above or below me?" (turn vertically), at the next intersection "left or right?" (turn horizontally), then vertical again, and so on. When a cat first appears, its first decision is always *vertical*.

**Snakes run a different rhythm.** Instead of a strict alternation they follow a repeating **9-beat pattern** — horizontal on beats 1, 3, 4 and 6, vertical on the other five — so a snake's *first* decision is **horizontal**, and over time it corrects vertically slightly more often than horizontally (5:4). On top of that, after each decision a snake **locks its heading for 16 or 48 frames** (the two hold lengths alternate in long blocks), which is why snakes feel committed and floaty where cats feel twitchy and reactive.


## The "same lane" rule

If an enemy is on the same row or the same column as you, it will come straight at you.

If you're already lined up on one axis, the enemy's check for that axis keeps coming back "already lined up - no turn needed," so it never veers off. Meanwhile its check for the *other* axis points dead at you.

When you are lined up with the enemy on neither axis, its opening move is much less predictable - it has two directions to sort out, plus the randomness described below.


## Enemies aren't perfectly predictable

The AI is deliberately imperfect in two ways:

- **Each enemy has its own "drift" habit.** Every so often, instead of re-aiming at you at an intersection, an enemy just **keeps walking straight past it**. This is what makes them occasionally overshoot and keep going straight.

- **The five enemies drift by different amounts.** Some re-aim almost every junction; others let more intersections slide and feel loose and wandery. This is baked into each individual enemy, which is why they don't all behave identically even though they share the same brain - one cat can feel far more aggressive than another.

- **Random choices when stuck.** When an enemy is boxed in and can't move the way it wanted, it picks a new direction essentially at random rather than freezing.

### The "drift" produces different behaviours

Each cat keeps a private counter that ticks up by one every time it reaches an intersection, and each cat drifts on a **different beat**:

**Cat 1** drifts about **1 intersection in 4** (as early as its 4th junction)
**Cat 2** about **1 in 8** (its 5th junction)
**Cat 3** about **1 in 8** (not until its **7th** junction)

Cat 1 is the one that will most often overshoot a corner or go straight past you.
Cat 3 practically never drifts and feels relentless. Its counter has to get to 7 before skipping one. But that counter resets to zero every time the cat dies.
Cat 2 sits in between - same drift *rate* as cat 3, but it's allowed to start drifting sooner, so you'll occasionally catch it wandering where cat 3 won't.


## Every enemy's stats at a glance

All five enemies share one brain, but each is seeded from its own template in ROM with a
different spawn spot, entry delay, and drift habit. Here is the whole roster side by side:

| Enemy | Template | Record | Spawn (X, Y) | Corner | Sprite slot | Entry delay (Lvl 1 → Lvl 10) | Base speed | Emerge time | Drift rate | First drift |
|-------|----------|--------|--------------|--------|-------------|------------------------------|-----------|-------------|-----------|-------------|
| **Cat 1** | `$2B75` | `$8510` | `$B4, $42` (180, 66) | top-right | 1 | **168f ≈ 2.8s** → 16f ≈ 0.3s | 1 px/f (**+⅓ after rage timer**) | ~128f ≈ 2.1s | **1-in-4** | junction **4** |
| **Cat 2** | `$2BCB` | `$8550` | `$34, $42` (52, 66) | top-left | 3 | **1340f ≈ 22.3s** → 256f ≈ 4.3s | 1 px/f (**+⅓ after rage timer**) | ~128f ≈ 2.1s | 1-in-8 | junction **5** |
| **Cat 3** | `$2C21` | `$8570` | `$34, $C2` (52, 194) | bottom-left | 4 | **396f ≈ 6.6s** → 16f ≈ 0.3s | 1 px/f (**+⅓ after rage timer**) | ~128f ≈ 2.1s | 1-in-8 | junction **7** |
| **Snake 1** | `$3292` | `$8610` | `$B4, $C2` (180, 194) | bottom-right | 5 | **304f ≈ 5.1s** → 0f (instant) | 0.8 px/f (**½ or ¼ near food**) | ~128f ≈ 2.1s | 1-in-4 | junction **4** |
| **Snake 2** | `$32D7` | `$8630` | `$B4, $C2` (180, 194) | bottom-right | 6 | **912f ≈ 15.2s** → 80f ≈ 1.3s | 0.8 px/f (**½ or ¼ near food**) | ~128f ≈ 2.1s | **1-in-4** | junction **2** |

*(Frames assume 60 fps. Positions are game-logic coordinates; the screen is rotated 90°, so these map to physical corners as noted.)*

**Reading the table:**

- **Spawn / corner.** The three cats claim three different corners; both snakes emerge from the
  same bottom-right spot but staggered in time (snake 2 always trails snake 1). So enemies fan
  out across the maze instead of all appearing together.

- **Entry delay** is a per-level countdown baked into each enemy's own delay table (cat 1 `$2B5A`,
  cat 2 `$2BB0`, cat 3 `$2C06`, snake 1 `$3315`, snake 2 `$332B`). It shrinks every level, which is
  the main way the game ramps up: on level 1 you get a long grace period (cat 2 doesn't show for
  ~22 seconds); by level 10 the enemies are on you almost immediately (snake 1 is instant).
  On level 1 the order of arrival is roughly **cat 1 (2.8s) → snake 1 (5.1s) → cat 3 (6.6s) →
  snake 2 (15.2s) → cat 2 (22.3s)**.

  > Encoding note: the *cats'* countdown is stored as **seconds : frames** (the low byte wraps at
  > 60), while the *snakes'* countdown is a plain 16-bit **frame** count. Both tick down once per
  > frame; the numbers above are the resulting real times.

- **Base speed.** Every template ships the same ±1 velocity, but the two types apply it
  differently. **Cats** step 1 pixel *every* frame — and after the in-level **rage timer**
  expires (see the next section) they pulse to 2 px on one frame in three, i.e. **⅓ faster,
  permanently for that life**. **Snakes** run the same ±1 velocity through a frame-*skipping*
  engine (`$3730`): normally they sit out 2 of every 10 frames (**≈0.8 px/frame**), and they
  drop to **half or quarter speed while passing certain food pieces** — see "Snakes guard the
  food" below. Snakes never speed up over time.

- **Emerge time** (the harmless blink-in) is also uniform: an internal counter climbs to 128
  (~2.1 s) before the enemy switches on and starts chasing.

- **Drift rate / first drift.** This is each enemy's personality — how often it blows through an
  intersection instead of re-aiming, and how many junctions it must survive since (re)spawn before
  it's *allowed* to drift at all. Cat 1 is the loosest (drifts often, early); cat 3 is the most
  relentless (1-in-8 and can't drift until its 7th junction, which it rarely reaches because deaths
  reset the counter). Snake 2 is notably twitchy — same 1-in-4 rate as cat 1 but allowed to drift
  as early as its **2nd** junction.

- **Opening turn**: vertical for the three cats (every cat template spawns the axis-toggle at 0),
  **horizontal for both snakes** (their 9-beat steer counter starts on a horizontal beat — see
  "Enemy chasing").


## The rage timer — cats speed up if you take too long

Dawdle on a level and the **cats get 33% faster — permanently, for the rest of that life**.

Each cat carries its own countdown (record `+$1D/+$1E`, loaded from the shared level-indexed
table `cat_speedup_tbl $2B28`). It ticks once per frame in the `cat_ai $2C3E` prelude — in
*every* state, so it keeps running while the cat is emerging, chasing, dying, or walking home.
When it expires, a one-way flag (`+$1F`) is set and the movement code starts calling the
velocity pulser `$3017`: a 3-phase counter toggles the cat's velocity between ±1 and ±2, so it
covers 4 pixels every 3 frames instead of 3 — exactly **4/3 speed**.

**How long you get** (per cat, from the moment that cat first enters the maze):

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10+ |
|-------|---|---|---|---|---|---|---|---|---|-----|
| Fuse  | **120s** | 100s | 90s | 70s | 60s | 50s | 40s | 30s | 20s | **~1s** |

From level 10 on the fuse is effectively zero — the cats are simply always in fast mode.

The fine print:

- **Each cat has its own timer**, but they all use the same fuse length, so they rage in spawn
  order: on level 1, cat 1 speeds up ~2 minutes after its 2.8s entrance, cat 3 ~2 minutes after
  its 6.6s entrance, and so on.
- **Killing a raged cat doesn't help.** The respawn template copy is only 29 bytes and stops
  just short of the timer fields, so a bombed, squashed, or drowned cat **comes back still
  fast**.
- **Dying resets everything.** Losing a life clears the cats' init flags (`$200A` wipes
  `$8500-$850F`), which reloads all three timers — a fresh 2 minutes on level 1.
- **The switch is seamless**: mid-chase, the flag waits until the cat is exactly grid-aligned
  before flipping, so you never see a stutter — the cat just quietly starts gaining on you.
- **Snakes are exempt.** Their engine (`snake_ai $333F`) has no countdown at all; the byte the
  cats use for the rage timer is repurposed in snakes as their frame-skip phase counter.

Strategy-wise this is the game's anti-camping mechanic: at 1 px/frame the cats exactly match
your walking speed and can never close a gap on a straight run — after the rage timer they can.


## Snakes guard the food

Snakes have their own speed system, and it has nothing to do with timers or levels: **snakes
slow down near food**.

A snake never moves every frame. Its movement engine (`$3730`) skips beats, and *which* beats
depends on what the snake is currently slithering past. Every step, the snake's movers probe
two maze cells (the cell it's over and the cell ahead, the same cells it uses to follow the
corridor) and look specifically for **food graphics**:

| What the probe sees | Flag set | Pace | Time to cross one maze cell |
|---------------------|----------|------|------------------------------|
| no food nearby | — | moves 8 of every 10 frames (**0.8 px/f**) | 10 frames |
| a food type-0 *corner* tile (`$E0`) | `+$15` | every other frame (**½ speed**) | ~15 frames |
| any other type-0 tile (`$E1-$E3`), or the `$E4` corner of type 1 | `+$13` | 1 frame in 4 (**¼ speed**) | ~28 frames |

For comparison: a cat crosses a cell in 8 frames (6 once raged), and the mouse in 8.

The tiles that trigger the crawl belong to specific food pieces: each maze's nine pieces cycle
through five graphics, and the "slow" tiles (`$E0-$E4`) belong to **food type 0** (all four of
its tiles) plus one corner of **type 1**. Every maze has **two type-0 pieces** — the strong
slow zones — and one or two type-1 pieces with the weaker corner trigger. The flags refresh at
every step, so the slowdown is a *local zone*: the snake crawls while its probes overlap the
piece and resumes 0.8 px/f a cell later.

The consequences are very visible in play:

- **Snakes linger around food** — exactly the pieces you need — crawling past them at quarter
  speed like guards on patrol. That's the design intent hiding in the code: cats hunt *you*,
  snakes defend *the food*.
- **Collecting food removes its slow zone** (the tiles are blanked from the maze). So as you
  clear a level, the snakes' territory shrinks and they effectively get faster — the level
  quietly tightens the screws the closer you are to finishing. Die while carrying a piece and
  it's redrawn, slow zone included.
- A related quirk of the corridor-following code: the two enemy types use different "is there
  path here?" thresholds (`$DF` for snakes, `$EF` for cats), and drawn food tiles fall exactly
  between them — so food reads as *walkable path* to a snake but as *no path* to a cat. Snakes
  slither straight over the pieces they guard; cats treat those cells as dead ends.

One more snake-only detail: the level-indexed parameter table `$31EF` looks like it should tune
snake speed per level (it's loaded into the speed flag on respawn), but the movers overwrite
that flag within one step — it's **vestigial**. Snake pace is the same on level 1 and level 50;
only their arrival times change.


## Getting around the maze

Enemies look at the corridor ahead.  They stay on the proper paths and climb the ladders like the mouse does.

**Cats and snakes follow the same corridors** — under the hood the two types run separate copies of the navigation logic against the same wall lattice. The one place they genuinely differ is **food**: a drawn food piece counts as path to a snake but as a wall to a cat (see "Snakes guard the food"), so a snake will slither over the piece it's guarding while a cat has to route around it.

---

## How to kill enemies

Enemies are only ever removed by the **maze's own hazards**, which the player triggers:

- **Water (bridges).** Crossing a bridge opens all bridges. Any enemy standing on that span when it opens **falls into the water** and is gone.

- **Sliding platforms.** Stepping onto a sliding platform carries the mouse across a gap. An enemy that chases you onto the gap **falls and dies** the same way.

- **Bombs.** The mouse can drop a bomb and detonate it; the explosion kills **any enemy (or mouse) it touches**.

- **Falling boulders.** Boulders perched at the edges drop when triggered and **squash any enemy they land on**.

So every "kill" is really you **using the maze against them** - steering a chaser into water, a gap, an explosion, or a boulder.

---

## After an enemy dies

A defeated enemy isn't gone for good. It plays a short death sequence and disappears and then **comes back into play** at the original spawn point. Clearing enemies buys you breathing room and **awards points** (worth progressively more). One thing death does *not* reset: a cat that had already hit its rage timer **respawns still sped-up** — only losing a life (or finishing the level) calms the cats back down.

---

## How it ramps up level to level

The chasing logic stays the same as you progress, but the pressure is dialled up:

- **Enemies arrive sooner.** On higher levels the delay before enemies (especially the snakes) enter the maze shrinks, so you get less of a head start.
- **Snakes enter staggered.** The second snake always trails the first, so the danger builds in waves rather than all at once.
- **The cats' rage timer shrinks.** The fuse before the cats speed up drops from 120 seconds on
  level 1 to 20 seconds by level 9, and from level 10 onward it's ~1 second — the cats
  effectively start every life already ⅓ faster than you.
- **Snakes don't ramp with level at all** — their pace is food-driven (see "Snakes guard the
  food") and identical on every level; only their arrival times shrink. But *within* a level
  they effectively speed up as you collect food, because each collected piece deletes one of
  their slow zones.

---

## Appendix — the decision logic in pseudo-code

*(This is the **cat** version. Snakes differ as described above: `axis_toggle` is a 9-beat
counter instead of a flip-flop, `move_timer` is reloaded with 16 or 48 at each junction, and
`move_enemy` runs through the food-aware frame-skipping engine.)*
```python
# Enemy record fields it touches:
#   x, y          +$08/+$09  grid position (game axes; screen is rotated 90°)
#   dir           +$0A       heading bitmask: 0x01=X-  0x02=X+  0x04=Y+  0x08=Y-  0x00=aligned
#   axis_toggle   +$12       0 => next re-aim corrects Y, 1 => corrects X
#   move_timer    +$10*      counts down; re-steer only allowed at 0  (*offset from shifted base)
#   junc_counter  +$1C       +1 at each junction; feeds the per-cat drift gate
#   player.x / player.y  = sprite bytes $8000 / $8003 (the mouse, right now)

```python
JUNCTION_COLS = {0x14, 0x34, 0x54, 0x74, 0x94, 0xB4, 0xD4}   # $14 + $20*n
JUNCTION_ROWS = {0x22, 0x42, 0x62, 0x82, 0xA2, 0xC2, 0xE2}   # $22 + $20*n

def enemy_frame(e):
    # 1. THROTTLE: don't re-decide every frame — only when the step timer expires.
    if e.move_timer != 0:
        e.move_timer -= 1                 # mid-cell: keep the current heading
    else:
        # 2. JUNCTION TEST (geometric, not tile-based): am I sitting exactly on the
        #    decision lattice — a junction column AND a junction row?
        if e.x in JUNCTION_COLS and e.y in JUNCTION_ROWS:
            drift_gate(e)                 # at a junction -> maybe re-aim

    # 3. FALL-AND-DIE: if the cell I'm on is open water/gap ($FE), I die.
    #    (produced by a bridge opening or a sliding platform leaving a gap)
    if tile_at(e.x, e.y) == 0xFE:         # TILE_GAP
        kill_enemy(e)                     # state=4, splash sound $95, reset sprite
        return

    # 4. MOVE one step in the current heading, avoiding walls (see move_enemy).
    move_enemy(e)


def drift_gate(e):                        # $2D49
    e.junc_counter += 1                   # bumped BEFORE the test
    # Skip re-aiming on this enemy's own "beat" — mask/excluded chosen by which
    # record address it lives at ($2D53: ld a,l; and $F0):
    #   cat A ($8510): skip when junc_counter & 3 == 0   -> drifts 1-in-4, first at #4
    #   cat B ($8550): skip when junc_counter & 7 == 5   -> 1-in-8,       first at #5
    #   cat C ($8570): skip when junc_counter & 7 == 7   -> 1-in-8,       first at #7
    if is_drift_beat(e, e.junc_counter):
        return                            # keep walking straight through the junction
    enemy_chase(e)                        # otherwise re-aim at the mouse


def enemy_chase(e):                       # $2D0E — corrects ONE axis, alternating
    if e.axis_toggle == 0:
        e.axis_toggle = 1                 # next junction will do X
        if   player.y > e.y: e.dir = 0x04 # mouse below -> move Y+
        elif player.y < e.y: e.dir = 0x08 # mouse above -> move Y-
        else:                e.dir = 0x00 # aligned on Y -> no turn this axis
    else:
        e.axis_toggle = 0                 # next junction will do Y
        if   player.x > e.x: e.dir = 0x02 # mouse right -> move X+
        elif player.x < e.x: e.dir = 0x01 # mouse left  -> move X-
        else:                e.dir = 0x00 # aligned on X -> no turn this axis


def move_enemy(e):                        # mover dispatch $2DF8 + per-dir movers
    # Route the heading bitmask to the matching mover (an rrca chain).
    # Each mover reads the tile directly AHEAD in that direction:
    if wall_ahead(e, e.dir):              # blocked?  (cats test $EF, snakes $DF)
        e.dir = random_open_dir(e)        # ld a,r & 3  -> pick a turn instead ($2CEC)
    step_position(e, e.dir)               # $3060: add the dir's velocity to x/y
    advance_walk_anim(e)                  # 4-frame walk cycle
    commit_to_sprite(e)                   # $309C: write y/tile/color/x to sprite mirror
```

```

- **Alternating axis checks.** `enemy_chase` fixes only *one* axis per junction, flipping `axis_toggle` each time (Y first after spawn). 

- **`dir = 0x00` means "don't turn," not "stop."** When the checked axis is already aligned it just issues no new heading for that axis; the enemy keeps advancing and the *other* axis does the closing.

- **The junction test reads the enemy's own coordinates, not the map.** A "junction" is purely `x ∈ cols AND y ∈ rows` — no maze tile is consulted for the turn decision. Walls only enter the picture in step 4, when a chosen heading is physically blocked and the enemy re-rolls via the Z80 R (refresh) register.

