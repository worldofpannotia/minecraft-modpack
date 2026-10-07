# BlazeandCave's Advancements Pack (BACAP)

A large advancement datapack by Cavinator1 that adds roughly 1,200 custom advancements (the bundled readme says 1243) on top of the vanilla ones. They are grouped into themed tabs in the advancements screen, and many grant item rewards, XP or trophies. A chat config menu lets you switch rewards, trophies and message styles on and off.

## How to use

Open the advancements screen (default key **L**) and click the BlazeandCave's Advancements tab. Start with the early tabs (Adventure, Farming, Mining, Animal).

| Command / key | What it does |
|---|---|
| `L` (default) | Open the advancements screen |
| `/function blazeandcave:config` | Open the clickable config menu (operators) |
| `/datapack enable` | Only needed if the pack was not enabled at world creation |

The config menu lets you: enable/disable item rewards, trophies and the welcome message; choose which advancement-completion messages appear; show the advancements scoreboard in the tab list and/or sidebar (or clear it); and update the scoreboard for all online players. Back up your world when updating the pack; the readme targets Minecraft 26.2.

## What it changes

Custom tabs (approximate file counts from the pack, including hidden helper advancements; use 1243 as the headline total):

| Tab | Files | Tab | Files |
|---|---|---|---|
| Adventure | 113 | Monsters | 86 |
| Animal | 123 | Nether | 87 |
| Biomes | 74 | Potion | 28 |
| Building | 113 | Redstone | 49 |
| Challenges | 41 | Statistics | 66 |
| Enchanting | 56 | Technical | 75 |
| End | 41 | Weaponry | 54 |
| Farming | 60 | Root / info | 23 |
| Mining | 116 | | |

- **Rewards:** over 5,000 reward functions (namespace `bacap_rewards`) give items, XP or effects on completion (e.g. Birthday Song, Hero of the Village). Toggle in the config menu.
- **Trophies:** granted for the major/challenge advancements; items with CustomModelData so a resource pack can texture them. Can be disabled in the config menu.
- **Advancements scoreboard:** optional display of each player's advancement count in the tab list and/or sidebar.
- **Vanilla integration:** about 129 files in the vanilla `minecraft` namespace are replaced or extended so the Story, Nether, End, Adventure and Husbandry tabs fit into the new tree and can award rewards.
- Difficulty: mostly normal survival progression; Challenges, Statistics and some tab capstones are long-term grinds. Harder completionist content is in [BACAP Torture Edition](bacap-torture-edition.md).

## Notes

- A small `bacap_fanpacks` namespace (23 files) is the hook that add-ons such as Torture Edition plug into.
- Related mods: Advancement Screenshot and Paginated Advancements (see [Progression & Advancements](index.md)). [Track Statistics](track-statistics.md) covers statistic scoreboards.

