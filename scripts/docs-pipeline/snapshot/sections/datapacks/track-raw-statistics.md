# Track Raw Statistics

Creates over 100 scoreboard objectives (prefix `ts_`) that mirror vanilla statistics such as deaths, distance travelled, items crafted, ores mined and mob kills, in raw units. It is an admin/server feature: nothing is displayed by default.

## How to use

Operators choose an objective and display it:

| Command | What it does |
|---|---|
| `/scoreboard objectives setdisplay sidebar ts_Deaths` | Show deaths on the sidebar (also `list` or `below_name`) |
| `/scoreboard players get <player> <objective>` | Read one value |

## What it changes

Objectives created (raw values: distances in centimetres, play time in ticks):

- Deaths, kills, animals bred
- Distances: walk, sprint, swim, fly, climb, fall, crouch, boat/horse/pig/minecart rides
- Play time, damage dealt/taken, jumps
- Chests, ender chests and shulker boxes opened; crafts; villager trades
- Crafting counts for beacons, end crystals, conduits, shulker boxes
- Use counts: potions, totems, torches, golden apples, bone meal, buckets, ender pearls and more
- Tool break counts: diamond/netherite tools, bow, shears
- Ore mining counts, including deepslate variants
- Per-mob kill counts (about 70 mobs) and per-mob "killed by" counts

## Notes

- For processed units (minutes, km) see [Track Statistics](track-statistics.md). The client mod Better Statistics Screen shows vanilla stats without commands.
