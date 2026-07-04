# Funny Mouse — How the Enemy AI Works

A plain-language guide to the behaviour of the enemies (the **cats** and **snakes**)
that chase the mouse through the maze. No code, no jargon — just what the enemies
actually do and why.

---

## The cast

The maze can hold **five enemies at once**: up to **three cats** and **two snakes**.

Cats and snakes look different, but **they share the same brain** — the exact same
chasing and maze-navigation logic drives both. The differences you notice between them
come down to their appearance, their speed, and when they show up — not how they move
through the maze.

---

## Showing up: the "rising out" moment

Enemies don't just pop into existence and start hunting. Each one **emerges** at a
fixed spot on the maze, rising into view over roughly **two seconds**.

While an enemy is still emerging it is **harmless and untouchable** — it can't catch
you, and none of your traps can hurt it yet. The instant its entrance finishes, it
switches on and begins to chase. There's no "wandering" or "patrol" phase: once an
enemy is up, it is coming straight for you.

Each cat and each snake has its own home spot, so they fan out and enter from
different corners of the maze rather than all appearing in one place.

---

## The chase: how an enemy decides where to go

This is the heart of the AI, and it's simpler than it looks.

**The enemy always heads toward wherever the mouse is right now.** It doesn't plan a
clever route or remember where you've been — it just greedily moves in your
direction, re-deciding as it goes.

The maze is a grid of corridors, so an enemy can only actually change direction at an
**intersection**. Every time it reaches one, it makes a fresh decision.

Here's the important part:

> **At each intersection the enemy only corrects ONE direction at a time, and it
> alternates between them.** First it asks *"is the mouse above or below me?"* and
> turns toward you vertically. At the next intersection it asks *"is the mouse left or
> right of me?"* and turns toward you horizontally. Then vertical again, then
> horizontal, and so on.

The result is that an enemy chases you in a **staircase pattern** — a bit up, a bit
across, a bit up, a bit across — gradually closing the distance rather than gliding
diagonally.

**When it first appears, an enemy always makes a *vertical* decision first.**

---

## The "same lane" rule (the single most useful thing to know)

Because the enemy alternates vertical and horizontal corrections, something very
predictable happens when you share a straight line with it:

> **If an enemy is on the same row or the same column as you, it will come straight
> at you — every single time.**

Why? If you're already lined up on one axis, the enemy's check for that axis keeps
coming back "already lined up — no turn needed," so it never veers off. Meanwhile its
check for the *other* axis points dead at you. The two combine into a clean, relentless
beeline down the shared lane.

The flip side is just as useful: **when you are lined up with the enemy on neither
axis, its opening move is much less predictable** — it has two directions to sort out,
plus the randomness described below, so it may commit to a surprising first turn.

Practical takeaway: **don't sit in an enemy's lane** unless you want it charging
directly at you, and **break the line** (get off its row *and* its column) when you
want to shake it or make it hesitate.

---

## Why the enemies aren't perfect (and why that's on purpose)

If every enemy always made the perfect turn, they'd corner you instantly and the game
would be unfair. So the AI is deliberately imperfect in two ways:

- **Each enemy has its own "drift" habit.** Every so often, instead of re-aiming at
  you at an intersection, an enemy just **keeps walking straight past it**. This is
  what makes them occasionally overshoot, wander off, or let you slip by.

- **The five enemies drift by different amounts.** Some re-aim almost every chance
  they get and feel laser-focused; others let more intersections slide and feel
  loose and wandery. This is baked into each individual enemy, which is why they
  don't all behave identically even though they share the same brain — one cat can
  feel far more aggressive than another.

- **Random choices when stuck.** When an enemy is boxed in and can't move the way it
  wanted, it picks a new direction essentially at random rather than freezing.

Because the enemies never do true route-planning — they only ever make a greedy,
slightly-random local choice — **a clever player can juke them**: cut around a wall,
double back, or duck out of their lane and watch them commit to the wrong corridor.

---

## Getting around the maze

Enemies look at the corridor ahead and **won't walk into walls** — they stay on the
proper paths and climb the ladders like the mouse does.

**Cats and snakes navigate the maze the same way.** They see the same walls and the
same ladders, and they both fall to the same hazards (more on that below) — a snake is
*not* immune to a bridge or a sliding platform. Under the hood the two types run
separate copies of the navigation logic, but in the actual mazes those copies behave
identically, so you can treat every enemy's pathing the same. The real differences
between a cat and a snake are their looks, their speed, and *when* they enter the maze
— not how they get around it.

---

## You can't touch them — so how do enemies die?

There is **no way to kill an enemy by running into it**. Contact goes the other way:
**touching an enemy kills the mouse.** There's no power-up, no invincibility, no
"eat the ghost" mode — the mouse is always the vulnerable one.

Enemies are only ever removed by the **maze's own hazards**, which the player
triggers:

- **Water (bridges).** Crossing a bridge opens it. Any enemy standing on that span
  when it opens **falls into the water** and is gone. Lure a pursuer onto a bridge
  right as you cross and it drops out from under them.

- **Sliding platforms.** Stepping onto a sliding platform carries the mouse across a
  gap. An enemy that chases you onto the gap **falls and dies** the same way.

- **Bombs.** The mouse can drop a bomb and detonate it; the explosion kills **any
  enemy it touches**.

- **Falling boulders.** Boulders perched at the edges drop when triggered and
  **squash any enemy they land on**.

So every "kill" is really you **using the maze against them** — steering a chaser into
water, a gap, an explosion, or a boulder.

---

## After an enemy dies

A defeated enemy isn't gone for good. It plays a short death-and-return sequence —
heading back toward its home point — and then **comes back into play**, ready to
emerge and chase again. Clearing enemies buys you breathing room and **awards points**
(worth progressively more), but it doesn't permanently thin the pack; the pressure
returns.

---

## How it ramps up level to level

The chasing logic stays the same as you progress, but the pressure is dialled up:

- **Enemies arrive sooner.** On higher levels the delay before enemies (especially
  the snakes) enter the maze shrinks, so you get less of a head start.

- **Snakes enter staggered.** The second snake always trails the first, so the danger
  builds in waves rather than all at once.

- **Speed and behaviour are tuned per enemy and per level**, so later mazes feel
  faster and more relentless even though the underlying "chase the mouse" rule never
  changes.

---

## Cats vs. snakes at a glance

| | Cats | Snakes |
|---|---|---|
| How many | Up to 3 | Up to 2 |
| Brain / chase logic | **Identical** | **Identical** |
| Maze navigation | Same walls, same hazards | Same walls, same hazards |
| Entrance timing | Present from the start of a life | Delayed, and staggered (second trails first); arrive sooner on higher levels |
| Level completion | Carry over | Any survivors are wiped out automatically (small bonus) when you finish the level |

---

## The short version

Every enemy greedily chases the mouse, re-deciding at each intersection and
**alternating between "line up vertically" and "line up horizontally"** (vertical
first). That makes them **beeline straight at you whenever you share a row or column**,
but a built-in tendency to occasionally drift past intersections — different for each
enemy — plus random choices when they're stuck, keeps them beatable. You can never
kill them by touch (touching them kills you); instead you win by **luring them into
the maze's hazards** — water, gaps, bombs, and boulders. Beaten enemies return, and
each level sends them at you sooner and faster.
