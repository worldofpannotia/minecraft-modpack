# Spawn

Adds `/trigger spawn`, which teleports you to the spawn area with no cost and no default cooldown.

## How to use

| Command | What it does |
|---|---|
| `/trigger spawn` | Teleport to spawn ("Teleporting to world spawn...") |
| `/function spawn:config` | Operators only: Delay (ticks standing still, default 0) and Cooldown (seconds, default 0) |

Use `/trigger back` ([Back](back.md)) to return to where you were.

## What it changes

- You are placed at the first safe spot (the pack moves up out of solid blocks and down to the ground). Your previous position is saved for Back.
- Messages: "Your Spawn cooldown will end in N seconds." and "You must stand still to teleport."

## Notes

- The destination is computed from fixed coordinates (about X 0.5, Z 0.5 in the Overworld) and then adjusted for safe height, so it may not be the true world spawn point (unverified).
- See also [Homes](homes.md).

<!-- maintainer: target is computed from the tick-function position (world origin, Overworld), not the actual world spawn point. Verify in-game that it matches spawn and whether it works from the Nether/End (probably teleports to the Overworld). -->
