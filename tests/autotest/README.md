# Autotest datapack

A generated datapack that exercises the pack's recipes, loot tables and tags in game and reports pass/fail in chat. It covers much of [docs/guide-test-plan.md](../../docs/guide-test-plan.md) (sections 1 to 3 and parts of 4, 6 and 7) without manual crafting or mob farming.

It lives outside `client/` on purpose, so the build never ships it to players.

## Running it

1. Copy `tests/autotest/datapack/` into a test world's `datapacks/` folder, renamed to `autotest`. (On a dedicated server, the world's `datapacks/` folder.)
2. `/reload`, then, **as yourself** (not from a command block or the console):

   ```
   /function autotest:run
   ```

A run takes a few minutes. Failures print in chat as they happen, and a summary prints at the end.

| Command | What it does |
|---|---|
| `/function autotest:run` | Every suite |
| `/function autotest:run/<suite>` | One suite: `load`, `recipes`, `heads`, `mobs`, `blocks`, `stacks` |
| `/function autotest:failures` | Lists the failing test IDs again |
| `/function autotest:lab` | Teleports you to the lab to inspect crafters and chests |
| `/function autotest:cleanup` | Unloads the lab and removes the scoreboard and storage |

Run it as a player. Drops that need a player kill (all mob heads) and the stonecutting checks are skipped otherwise, and the summary says how many were skipped. Use a world created from the built pack so the mod-dependent checks (stack sizes) see the real config.

## How it works

- **Lab:** built in the Overworld at `40000 280 40000` (above any terrain) and force-loaded for the run. It stays in the world afterwards.
- **Crafting recipes:** each case is a crafter loaded with the recipe's grid, facing a chest, triggered with a redstone block. The chest must end up holding the result (and any bucket or bottle left over). Recipes that take a tag are tried with the first, middle and last member.
- **Cooking recipes:** a furnace, blast furnace or smoker with pre-loaded progress. The output slot and `RecipesUsed` (which recipe actually fired) are both checked.
- **Stonecutting (Mini blocks):** a crafter can't run these, so the test only checks that every recipe is registered.
- **Mob loot:** `loot insert <chest> kill <mob>` run as you, which counts as a player kill. Each head variant is rolled enough times that missing a real drop is about a one-in-a-million event, and the hit count must fall within about six sigma of the table's chance. A second check requires that no *other* head drops for that variant.
- **Block loot and tags:** `loot insert <chest> mine …` with a chosen tool, plus a `setblock` and `#tag` check for every block the packs add to a tag.
- **Stack sizes:** every item in `stackitup-global-config.json` must accept a stack of its configured size.

Test IDs start with the test-plan ID where there is one (`REC-4 …`, `LOOT-3 …`), so a failure points at the row it belongs to.

## Regenerating

Everything comes from the pack's own files, so regenerate after changing recipes, loot tables, tags or the stack config:

```
npm run gen:autotest
```

`scripts/autotest/vanilla-item-tags.json` is a snapshot of the vanilla item tags (recipes refer to `#minecraft:planks` and similar). Refresh it when the Minecraft version changes (needs Java and network access):

```
node scripts/gen-autotest.mjs --refresh-vanilla
```

## Limits

- Not covered: anything needing a client (keybinds, HUD, rendering), timing over minutes (crop growth, curing), multiplayer, and mod behaviour not reachable by command.
- Looting and other tool-dependent drop bonuses aren't tested for mobs, because the roll doesn't use your held item.
- The stack-size checks assume StackItUp's sizes show up in `item replace`. If every one fails identically in the real pack, suspect the check, not the config.
- Validated against a vanilla 26.2 server with the repo's datapacks. The player-kill and mod-dependent checks are only exercised by running it in the real pack.
