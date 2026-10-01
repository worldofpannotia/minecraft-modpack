# Back

Adds `/trigger back`, which returns you to the place you last teleported from using the [Homes](homes.md) or [Spawn](spawn.md) packs. Optionally (off by default) it also remembers where you died.

## How to use

| Command | What it does |
|---|---|
| `/trigger back` | Teleport to your last teleport-origin (or your death location, if enabled). Works across dimensions. |
| `/function back:config` | Operators only: toggle "Save Death Location", set Delay and Cooldown |

Typical flow: use `/trigger home` or `/trigger spawn`, then `/trigger back` to return to where you were. Using Back also records the place you just left, so repeating `/trigger back` toggles between two places.

## What it changes

- `/trigger home` and `/trigger spawn` store your position, rotation and dimension before teleporting.
- **Save Death Location:** Disabled by default. When enabled, Back also remembers where you died.
- **Delay:** ticks you must stand still before teleporting (default 0). Set with `/scoreboard players set #delay back.config <ticks>`.
- **Cooldown:** seconds between uses (default 0). Set with `/scoreboard players set #cooldown back.config <seconds>`.
- Messages: "Teleporting back...", "You have nowhere to go back to.", "Your Back cooldown will end in N seconds."

## Notes

- The pack's advancement text mentions TPA, but no TPA pack or mod ships with World of Pannotia.

<!-- maintainer: Homes and Spawn call back:set_back directly. Defaults (death off, delay 0, cooldown 0) are not overridden anywhere in the repo. -->
