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

At each intersection the enemy only corrects ONE direction at a time, and it alternates between them. First it asks "is the mouse above or below me?" and turns toward you vertically. At the next intersection it asks "Is the mouse left or right of me?" and turns toward you horizontally. Then vertical again, then horizontal, and so on.

When it first appears, an enemy always makes a *vertical* decision first.


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


## Getting around the maze

Enemies look at the corridor ahead.  They stay on the proper paths and climb the ladders like the mouse does.

**Cats and snakes navigate the maze the same way.** Under the hood the two types run separate copies of the navigation logic, but in the actual mazes those copies behave identically, so you can treat every enemy's pathing the same.

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

A defeated enemy isn't gone for good. It plays a short death sequence and disappears and then **comes back into play** at the original spawn point. Clearing enemies buys you breathing room and **awards points** (worth progressively more).

---

## How it ramps up level to level

The chasing logic stays the same as you progress, but the pressure is dialled up:

- **Enemies arrive sooner.** On higher levels the delay before enemies (especially the snakes) enter the maze shrinks, so you get less of a head start.
- **Snakes enter staggered.** The second snake always trails the first, so the danger builds in waves rather than all at once.
- **Speed and behaviour are tuned per enemy and per level**, so later mazes feel faster and more relentless even though the underlying "chase the mouse" rule never changes.

---

## Appendix — the decision logic in pseudo-code
```python
# Enemy record fields it touches:
#   x, y          +$08/+$09  grid position (game axes; screen is rotated 90°)
#   dir           +$0A       heading bitmask: 0x01=X-  0x02=X+  0x04=Y+  0x08=Y-  0x00=aligned
#   axis_toggle   +$12       0 => next re-aim corrects Y, 1 => corrects X
#   move_timer    +$10*      counts down; re-steer only allowed at 0  (*offset from shifted base)
#   junc_counter  +$1C       +1 at each junction; feeds the per-cat drift gate
#   player.x / player.y  = sprite bytes $8000 / $8003 (the mouse, right now)


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


- **Alternating axis checks.** `enemy_chase` fixes only *one* axis per junction, flipping `axis_toggle` each time (Y first after spawn). 

- **`dir = 0x00` means "don't turn," not "stop."** When the checked axis is already aligned it just issues no new heading for that axis; the enemy keeps advancing and the *other* axis does the closing.

- **The junction test reads the enemy's own coordinates, not the map.** A "junction" is purely `x ∈ cols AND y ∈ rows` — no maze tile is consulted for the turn decision. Walls only enter the picture in step 4, when a chosen heading is physically blocked and the enemy re-rolls via the Z80 R (refresh) register.

