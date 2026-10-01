# Homes

Lets each player save home locations and teleport to them with `/trigger` commands. By default each player may set only one home.

## How to use

| Command | What it does |
|---|---|
| `/trigger sethome` | Set home 1 at your position |
| `/trigger sethome set <ID>` | Set home number `<ID>` (setting an existing ID overwrites it) |
| `/trigger home` / `/trigger home set <ID>` | Teleport to that home (across dimensions) |
| `/trigger homes` | List your homes ("You are homeless." if none) |
| `/trigger namehome` / `/trigger namehome set <ID>` | Name a home: hold a name tag that already has a custom name (rename it in an anvil) in your main hand. Holding an unnamed name tag resets the home to its default name. Without a name tag you get an error. |
| `/trigger delhome` / `/trigger delhome set <ID>` | Delete a home |
| `/function homes:config` | Operators only: Max Home Limit (default 1), Delay in ticks (default 0), Cooldown in seconds (default 0) |

## What it changes

- Homes are numbered. You can only add a new ID while under the home limit (default 1 per player). Beyond that you get "You can only set a maximum of N home(s)."
- A per-player override exists via the `homes.limit` scoreboard.
- With a delay configured you must stand still ("You must stand still to teleport."). Defaults are 0 ticks and 0 seconds.
- Your previous position is saved so [Back](back.md) can return you.

## Notes

- The pack default is one home. A server operator who wants more can run `/scoreboard players set #limit homes.config <n>` or use `/function homes:config`.
- See also [Spawn](spawn.md).
