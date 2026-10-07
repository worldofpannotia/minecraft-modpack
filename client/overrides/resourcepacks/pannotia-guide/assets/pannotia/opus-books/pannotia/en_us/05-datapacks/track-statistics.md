# Track Statistics

Adds processed statistic scoreboards (prefix `hc_`) such as minutes played, elytra distance, swim distance and ores mined, intended for Hermitcraft-style leaderboards. Admin oriented: nothing is displayed by default.

## How to use

Operators run, for example, `/scoreboard objectives setdisplay sidebar hc_MineOreShow` (or `list` / `below_name`, and any other `...Show` objective).

## What it changes

| Objective | Meaning |
|---|---|
| `hc_playTime` | Minutes played (play ticks / 1200) |
| `hc_elytraKm` | Elytra distance (cm / 100000, kilometres) |
| `hc_swimKm` | Swim distance (cm / 100, so effectively metres despite the name) |
| Per-ore counts | Coal, diamond, emerald, redstone, lapis, iron, gold, copper (stone and deepslate variants summed), plus nether quartz and ancient debris |
| `hc_MineOre` | Combined total of all ores |

Each objective has a matching `...Show` objective meant for display.

## Notes

- The elytra and swim units are inconsistent in the original pack (km vs metres).
- For raw units see [Track Raw Statistics](track-raw-statistics.md).
