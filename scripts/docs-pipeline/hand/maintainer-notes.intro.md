# Guide maintainer notes

Issues found while writing `docs/guide/` and checking it against the pack (2026-10-01). These notes are for the pack maintainer, not players. Player pages also carry hidden `<!-- maintainer: ... -->` comments at the relevant spots. In-game checks are in [guide-test-plan.md](guide-test-plan.md), and test IDs (`LOAD-1`, `LOOT-3`, …) refer to it.

**Status labels**

- **Source-verified:** checked in the repo files, mod jars, mod source or the 26.2 game jar.
- **Log-confirmed:** seen in the dev instance's `logs/latest.log`.
- **Needs in-game test:** can't be settled from files. Run the linked test.
- **Refuted:** an earlier note that turned out to be wrong. These are kept so the guide pages that repeat them get fixed.

The original notes came straight from the docs pipeline. Each one was checked again against the source. Items the pipeline missed were added from a full read of the guide (all `<!-- maintainer -->` comments and every *(unverified)* or *may not work* marker) and from cross-page comparison. The per-unit appendix at the end is the raw pipeline output. Where it disagrees with the sections above, the sections above win.

Update 2026-10-04: a dev-instance log from a built pack shows all 16 datapacks loading (Global Packs). The head tables and the 18 recipes parse without errors. Datapack behaviour (drops, recipes, commands) is still mostly untested in game; the remaining items below are mostly in-game checks.

---

## 1. Critical: fix before release

1. ~~**The world-of-pannotia datapack is probably rejected at load.** *Source-verified.* `client/overrides/datapacks/world-of-pannotia/pack.mcmeta` declares only `"pack_format": 107`. All other packs declare `min_format`/`max_format` (e.g. `[107, 1]`). For formats at this level, 26.2 requires those fields and rejects the pack with "…missing mandatory fields min_format and max_format". The same error appears in the dev log for a mod's resource pack. If it is rejected, *every* World of Pannotia feature in the guide is absent: mob heads, Mini blocks, dragon/husk/shulker drops, block drop changes, beacon bases and recipes. → `LOAD-1`, `LOAD-2`~~
2. ~~**Fixing #1 alone would break every datapack's load and tick functions.** *Source-verified.* `world-of-pannotia/data/minecraft/tags/function/load.json` and `tick.json` list `vdf:load` / `vdf:tick`, which don't exist anywhere. Tag entries are required by default, and one missing entry makes the whole merged tag fail; the log shows exactly this for `c:tools/wrenches`. When world-of-pannotia loads, `#minecraft:load` and `#minecraft:tick` would fail for all 13 packs that use them, including homes, back, spawn, afk-display and bacap. **Delete both tag files (or mark the entries `"required": false`) in the same change as #1.** → `LOAD-2`, `CMD-1`~~
3. ~~**Nobody has confirmed the datapacks get loaded.** *Source-verified.* Datapacks ship as `client/overrides/datapacks/<pack>/` folders. The Global Packs jar's default config loads `datapacks/`, `resourcepacks/` and `global_packs/required_data/` as data packs, so this should work, but the repo ships no `config/global_packs.toml` to pin it. The old `config.old/global_data_and_resourcepacks.toml` is unused, and the zip/paxi steps in `scripts/build-client.mjs` are commented out. → `LOAD-1`~~
4. ~~**Bow Infinity Fix isn't loaded at all.** *Log-confirmed.* The log says `Found 1 non-fabric mod: bowinfinityfix-26.2-neo-3.3.0.jar`; the jar only has `neoforge.mods.toml`. Manifest fileID 8391223 points to the NeoForge build. Switch it to the Fabric file. Universal Enchants also claims to make Infinity arrowless, so the feature may still work. → `LOAD-3`, `ENC-7`~~
5. ~~**The dev instance doesn't match the manifest.** *Source-verified* (manifest vs. the instance's `minecraftinstance.json`). Seven manifest mods are missing from the instance: **Armored Elytra, Leaky, Fluid Void Fading, Mineable Spawner, Mineable Trial Spawner, Universal Enchants, Universal Graves** (the two Mineable mods were later replaced by Silkier Touch, and Servux was added). The instance also has **Enchanting Changes** (492032), which isn't in the manifest. Test from a fresh install of the built zip, not the dev instance. → `LOAD-4`~~

## 2. Confirmed bugs

**World of Pannotia datapack** (only matters once §1.1 is fixed)

- ~~**Head tables using a removed condition.** *Source-verified.* `pannotia/loot_table/entities/{zombie,skeleton,creeper,piglin}.json` use `random_chance_with_looting`, which isn't in 26.2's condition registry, so those four tables fail to parse. Replace with `random_chance_with_enchanted_bonus`. → `LOOT-1`~~
- ~~**18 recipes in the old result format.** *Source-verified.* The 10 coral↔fan, 3 copper-oxidation and 5 extra-dye recipes use `"result": {"item": …}` and fail to parse. They need `{"id": …}`. → `REC-1`–`REC-3`~~
- ~~**Dangling loot-table references.** *Source-verified.* `minecraft/loot_table/entities/bat.json` references `bat_membranes:entities/bat`, and `villager.json` references `villager_death:entities/villager`. Neither exists. These are the only two dangling references among the 307 loot-table references across all packs. Remove the pools. → `LOOT-6`~~ **Done:** removed the two pools (verified in the 2026-10-04 log: no errors).
- ~~**Unconditional dragon drops.** *Source-verified.* `dragon_drops/loot_table/entities/ender_dragon.json` has three unconditional pools (elytra, egg, head) and no `killed_by_player`. Repeat kills farm elytras, and the first kill yields two eggs. Decide whether that's intended. → `LOOT-10`~~
- ~~**Budding amethyst is overridden twice.** *Source-verified.* Both world-of-pannotia and `silk-touch-budding-amethyst` override `minecraft:loot_table/blocks/budding_amethyst.json` with equivalent logic. It's harmless but redundant, so drop one. → `LOOT-23`~~
- ~~**Unused files.** *Source-verified.*~~
  - ~~`more_mob_heads/loot_table/entities/tropical_fish.json` is never referenced, because the wrapper uses `pannotia:entities/tropical_fish`.~~
  - ~~`more_mob_heads/.../sheep/jeb_sheep.json` is never referenced and uses an obsolete JSON-string `CustomName` match.~~
  - **Correction:** `looting_shulker_shells/tags/item/shulker_shell.json` is empty but **is used**: `world-of-pannotia/.../entities/shulker.json` references `#looting_shulker_shells:shulker_shell`. Deleting it broke the shulker loot table in the dev log, so it was restored and must stay.
- ~~**Creeper wrapper.** *Source-verified.* `minecraft:entities/creeper` pulls in both `more_mob_heads:entities/creeper` (charged-creeper head) and `pannotia:entities/creeper` (plain head, broken per above). Check that they don't double-drop once fixed. → `LOOT-1`~~

**Pack author's mods**

- **Minekea:** *Source-verified* in `minekea-fabric-26.2-10.1.0.jar`.
  - The Ancient, Doom and End Lantern recipes are identical apart from the result, so only one is reachable. → `REC-31`
  - Nugget Bags can't be made from nuggets. The only recipes are 1 compressed sack → 9 bags and 9 bags → 1 sack. → `REC-32`
  - The Honey Bucket has no recipe (lang key only). → `REC-32`
- **Shulker Stuff:** the **Deep Storage** enchantment has a lang entry but no `data/shulkerstuff/enchantment/deep_storage.json` and isn't registered. *Source-verified.* → `ENC-11`
- **Miniblock Merchants:** the README (`minecraft-mods/miniblock-merchants/README.md:368`) says 25 professions, but the jar lang has 26 `mm_*` professions. Fix the README, and the guide's "25" in [villagers-and-trading.md](guide/mods/villagers-and-trading.md) and [building-and-decoration.md](guide/mods/building-and-decoration.md). *Source-verified.*
- **Patchouli** is in `files_waiting` (placeholder fileID 9999999). `client/overrides/patchouli_books/pannotia/` still ships. The log shows parse failures for `minekea:minekea_catalogue`, `minekea:grant_book_on_first_join`, `hopperxtreme:hx_manual` and `hopperxtreme:grant_book_on_first_join`. These are expected until Patchouli returns. *Log-confirmed.* → `LOAD-5`

## 3. Earlier claims that verification corrected

The guide currently repeats each of these, so the linked pages need fixing.

- ~~**jeb_ sheep head: REFUTED as a bug.** `more_mob_heads/loot_table/entities/sheep.json` does gate the pool. It runs `set_name` from the selector `@s[name=jeb_]`, then `filtered` sets the count to 0 when the resolved name is empty. Unnamed sheep should not drop the head. Fix [world-of-pannotia.md](guide/datapacks/world-of-pannotia.md) ("Sheep: the jeb_ head" section and its maintainer comment). Still worth a check that the selector trick works in 26.2. → `LOOT-3`~~ **Done:** guide page fixed. Still confirm `LOOT-3` in game.
- ~~**Concrete-powder blasting recipes: REFUTED as broken.** Cooking results in 26.2 use `ItemStackTemplate.CODEC`, which accepts either `{"id":…}` or a bare item string. The 16 blasting recipes should work. Remove "(may not work in the current version)" from that row in [vanilla-changes.md](guide/vanilla-changes.md) and [world-of-pannotia.md](guide/datapacks/world-of-pannotia.md). → `REC-4`~~ **Done:** markers removed.
- ~~**Tropical fish heads: REFUTED as broken.** `pannotia/.../tropical_fish.json` already uses `random_chance_with_enchanted_bonus`. Remove the "(may not work…)" marker. → `LOOT-2`~~ **Done:** marker removed.
- **Minekea oak-only barrel and bookshelf: REFUTED in effect.** The overrides are in `data/minecraft/recipes/`, the plural folder that 26.x ignores, and use the old `{"item":…}` format. The vanilla barrel and bookshelf recipes are still active. The guide states the opposite in [vanilla-changes.md](guide/vanilla-changes.md) ("Changed vanilla recipes") and [building-and-decoration.md](guide/mods/building-and-decoration.md) ("Vanilla changes"). Fix the guide, and in Minekea either delete the dead files or move them to `recipe/` if oak-only was intended. Minekea's own bookshelf variants do yield 3. → `REC-30`
- ~~**Hopper X-Treme wrench "missing": REFUTED as a bug.** The log shows `Minekea is loaded! Skipping registration of Hopper X-Treme's wrench.` (line 588). The skip is deliberate, but it causes harmless log noise: the `c:tools/wrenches` tag failure (:1504) and the wrench recipe parse error (:1510). Mark the tag entry `"required": false` and make the recipe conditional so the log is clean. The guide's Hopper X-Treme table lists a Wrench recipe that doesn't exist with Minekea present. Point it at the Minekea wrench in [redstone-and-automation.md](guide/mods/redstone-and-automation.md). → `REC-37`~~ **Done:** guide now points at the Minekea wrench. The log noise (`c:tools/wrenches`, wrench recipe) remains; making the tag entry optional is a change in the Hopper X-Treme mod.
- ~~**Stray Miniblock Merchants options in the Shulker Stuff config screen: can't reproduce.** `ShulkerStuffConfig` has a single option (`platedShulkerUpgradeChance`), and the jar has no "miniblock" strings. The README statement is stale. Remove the note in [storage-and-inventory.md](guide/mods/storage-and-inventory.md).~~ **Done:** note removed from the guide.
- **Off-version jars:** Connectivity, Falling Leaves, Tax Free Levels and WITS (26.1) and Visuality (+26.3) all **did load** in the dev log. Their effect still needs a quick look. → `LOAD-3`

## 4. Needs in-game verification

Couldn't be settled from files. Grouped by risk.

**Could break gameplay or lose items**

- **Filled shulker boxes stack to 16** (`stackEmptyShulkerBoxOnly=0`). Look for duplication or loss with Easy Shulker Boxes, placement and nesting, and decide whether full boxes should stack at all. → `INV-3`
- **Stacked buckets, potions, stews and totems:** check consumption and containers returned, Infinity on a stack of buckets, and Inventory Totem with 16 totems. → `INV-2`, `ENC-8`
- ~~**StackItUp config migration.** It imports `allstackable-global-config.json` only when `stackitup-global-config.json` is absent, and only for **new** worlds. The dev instance already has an *empty* `stackitup-global-config.json`, so it doesn't show pack values. Check a fresh install and the server world. → `LOAD-6`~~
- **Overlapping `minecraft:` loot overrides.** Whichever pack loads last wins, which can silently remove the other's pools:
  - `blocks/player_head`: world-of-pannotia, wandering-trades-hermit-edition and the Miniblock Merchants mod. → `LOOT-24`
  - `entities/*`: world-of-pannotia and the Lib 5555ff mod (which chains `mob_heads:`, `name_tag:`, `swift_flight:`, `mace_protection:` pools). → `LOOT-13`
- **More Mob Heads entity `nbt` predicates** (bee, copper golem, creeper, goat, panda, trader llama, villager, wolf, zombie villager). These are valid syntax in 26.2, but the NBT paths may not match current entity data. → `LOOT-4`
- **Fast Item Frames turns frames into blocks.** The Armor Statues invisible and fixed frame features, and Lootr's "Item Frame with Loot", assume frames are entities. → `CMD-4`, `LOOT-34`

**Defaults and behaviour the guide states but nobody has checked**

- **Spawn** teleports to a point computed near X 0.5 / Z 0.5 in the Overworld, not the real world spawn. Check behaviour from the Nether and End. → `CMD-2`
- **Followers Teleport Too** with the homes, spawn and back triggers. → `MOB-9`
- **Woodwalkers vs ReMorphed:** see §6. → `MOB-11`
- **Tax Free Levels vs Easy Anvils renaming cost** (1 level vs free), and whether Grind Enchantments costs are flattened. → `ENC-2`, `ENC-3`, `ENC-5`
- **Universal Enchants and Remove Enchantment Incompatibility** both loosen exclusivity. Check for conflicts and whether the bundled stacking datapacks are on. Universal Enchants is missing from the dev instance (§1.5). → `ENC-1`, `ENC-6`
- **Right Click Harvest vs Replanting Crops** (double drop or replant), and sugar cane and cactus. → `FARM-1`, `FARM-2`
- **Silence Mobs and `/trigger namehome`** expect anvil-renamed name tags. Name Tag Upgrade changes name-tag handling. → `CMD-5`, `CMD-1`
- **Fluid Void Fading** reportedly doesn't work with Sodium. It's not installed in the dev instance, so this is untested. → `HUD-2`
- **Armored Elytra** needs a separate datapack to combine items, and none ships. Its Modrinth page lists support only up to 1.20.4, and the jar is missing from the dev instance. → `HUD-4`
- **Unknown defaults:** Better Spawner Control torch positions, Houdini Block mode switching, Hopper X-Treme filter insertion, Gentle Touch source and effect, Grass Seeds consumption, Double Doors on gates and trapdoors, Resource Backpacks nesting, Silkier Touch defaults, Athenaeum loot injection, Daily Dad frequency, and the key defaults in `KEY-2`.
- **Missing server-side companions:** ~~MiniHUD structure overlays need **Servux** on the server.~~ **Done:** Servux added to the manifest (`MP-5`). Overflowing Bars still recommends **AttributeFix**, which isn't in the manifest (*source-verified*).
- **Silkier Touch** replaced Mineable Spawner and Mineable Trial Spawner. Its details come from the Modrinth page (versions up to 1.21.11), so check the defaults on the 26.2 build. Silkier Touch also picks up budding amethyst, so the world-of-pannotia budding amethyst loot table override was removed (`LOOT-23`). Vaults are no longer minable. → `LOOT-25`, `LOOT-26`

## 5. Key clashes

Documented default clashes: `B` (Xaero's waypoint / Resource Backpacks), `G` (Full Brightness / Woodwalkers / ReMorphed), `U` (Xaero's waypoint list / Woodwalkers), `V` (Simple Voice Chat / AutoRun).

**Missing from the guide's clash tables:** `M` is both Xaero's World Map and Litematica's main menu. Run `KEY-1` to find others. Consider shipping a default `options.txt` or keybind config that resolves them.

## 6. Guide inconsistencies and defects

These are contradictions or wrong statements in `docs/guide/` itself.

- ~~**Datapack loader name:** [datapacks/index.md](guide/datapacks/index.md) says Global Packs, but the vanillatweaks maintainer comment and some notes say Paxi. Global Packs is correct.~~ **Done:** guide pages say Global Packs.
- ~~**Bucket stack sizes:** [enchanting-and-magic.md](guide/mods/enchanting-and-magic.md) (Infinity Water Bucket) says "Buckets stack to 64 (lava and milk buckets to 16)". The config and [quality-of-life.md](guide/mods/quality-of-life.md) say *empty* buckets 64, and water, lava, milk and powder snow buckets 16.~~ **Done:** Infinity Water Bucket page now matches the config.
- **Woodwalkers:** [mobs-and-creatures.md](guide/mods/mobs-and-creatures.md) says ReMorphed disables Walkers' own unlock method, yet the Woodwalkers section, [controls.md](guide/controls.md) and [getting-started.md](guide/getting-started.md) all describe `U` scanning as working. One of them is wrong.
- ~~**REI keys:** [getting-started.md](guide/getting-started.md) tells players to press `U` / `R`, while [interface-and-hud.md](guide/mods/interface-and-hud.md) says those keys are unconfirmed.~~ **Done:** getting-started and interface-and-hud now agree (R / U are REI's standard keys).
- ~~**Jade:** keypad 3/4 are documented as "needs JEI". The pack has REI, so these keys probably do nothing.~~ **Done:** guide says keypad 3/4 need JEI and probably do nothing here.
- ~~**Budding amethyst overlap:** [silk-touch-budding-amethyst.md](guide/datapacks/silk-touch-budding-amethyst.md) says the overlap is harmless, which is fine for players, but §2 recommends dropping one.~~ **Done:** the silk-touch-budding-amethyst datapack and its guide page were removed.
- ~~**Bow Infinity Fix** is documented as working on [tools-weapons-and-armor.md](guide/mods/tools-weapons-and-armor.md), but it isn't loaded (§1.4).~~
- ~~**The §3 refutations:** jeb_, concrete blasting, tropical fish, Minekea barrel/bookshelf, the Hopper X-Treme wrench and Shulker Stuff config all need page edits.~~ **Done:** pages edited; Minekea dead-recipe cleanup is still open in the Minekea repo.
- ~~**"(may not work in the current version)" markers** in world-of-pannotia.md and vanilla-changes.md assume only the recipes and conditions are broken. If §1.1 holds, *nothing* in that datapack works yet. Re-evaluate these after the fix.~~ **Done:** removed after the 2026-10-04 log showed no parse errors for the head tables or recipes.
- ~~**Pipeline wording in player text:** "not in the facts" ([vanilla-changes.md](guide/vanilla-changes.md) Dispenser row, [controls.md](guide/controls.md) WI Zoom and Simple Magnets rows), "Medium confidence (unverified details)" (interface-and-hud.md, Ore Height Indicator), "(medium confidence)" (quality-of-life.md Visual Workbench, multiplayer-and-server.md Universal Graves), "low confidence it is functional" (tools-weapons-and-armor.md), "not confirmed in the notes" (interface-and-hud.md REI). → `DOC-2`~~ **Done:** wording cleaned up.
- ~~**Gameplay economics worth a deliberate decision:**~~
  - ~~Ancient Debris → Netherite Scrap with Fortune is a large netherite buff.~~
  - ~~6 planks → 12 trapdoors is a net fuel gain (12 × 300 ticks vs 6 × 300).~~
  - ~~Repeatable dragon elytra.~~
  - ~~Several duplicate features: Universal Enchants overlaps both Bow Infinity Fix (arrowless Infinity) and No Feather Trample (Feather Falling stops trampling).~~

## 7. Housekeeping

- ~~**`wyvernity-datapack-resources`** only contains assets for `enchantmentplus` and `simple_paxels` (plus `minecraft/atlases/blocks.json`). Neither mod is in the pack, so remove it. *Source-verified.*~~
- ~~**`CLAUDE.md` is stale.** It says MC 1.21.10 / 17.0.0-alpha.0 and `config/paxi/...` paths. The real layout is `overrides/datapacks`, and `zip.sh` only survives under `config.old/paxi/`. *Source-verified.*~~ **Done:** CLAUDE.md is current for 26.2 / 18.0.0-alpha.0; the removed datapack was dropped from its list.
- **Leftover config folder:** `config.old/` (paxi, global_data_and_resourcepacks, passablefoliage) isn't used by the 18.x pack.
- ~~**Homes defaults:** limit 1, delay 0, cooldown 0 (`homes/.../load.mcfunction:15`). **Back defaults:** death location off, delay 0, cooldown 0. Neither is overridden anywhere in `client/` or `server/`. Raise the home limit in a server-side function if more than one home is wanted. *Source-verified.*~~
- ~~**Obsolete-pattern scan (clean):** no `looting_enchant`, `set_nbt` or `copy_nbt` in any pack JSON. No `{"item":…}` *ingredients*. No other dangling loot-table or function references.~~

---

## Appendix: raw per-unit notes from the pipeline

> Unedited output of the docs pipeline's verification pass, kept for reference. Some entries are now known to be wrong (Shulker Stuff config options, Minekea oak-only recipes, jeb_ sheep, Hopper X-Treme wrench). Sections 1–7 above supersede this list.


Low-confidence units and editor notes, straight from the refined research (`scripts/docs-pipeline/snapshot/refined/`):
