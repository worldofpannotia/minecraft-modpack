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

- **AFK Display** (`datapacks__afk-display`, confidence high): Players on the team 'tg_tagged' (from another pack) are skipped. Timing: advancement text says 5 minutes, functions check every 150 s with an unchanged-position comparison, so the effective delay is 150-300 s depending on phase. Uses team colour gray, which also affects name colour in chat.
- **Armor Statues** (`datapacks__armor-statues`, confidence high): Book content verified from the loot table armor_statues:book. Defaults from load.mcfunction: book_craft Enabled, book_help Disabled, fixed_item_frame Disabled, uuid_lock Disabled.
- **BlazeandCave's Advancements Pack (BACAP)** (`datapacks__bacap`, confidence medium): Advancement counts per tab are file counts from the jar, not exact player-visible numbers; use the readme's 1243 total as the headline. Config menu permission (operator) is the usual /function requirement - verify in game. Verify rewards/trophies are left at defaults (on).
- **BACAP Torture Edition (Blackbird's Torture Chamber)** (`datapacks__bacap-torture-edition`, confidence medium): Pack description says 'TE for 26.2'. Exact player-visible advancement totals were not retrieved; tab counts are file counts. Does nothing without bacap. Verify in game whether the base config menu lists Torture Edition options.
- **Back** (`datapacks__back`, confidence high): Advancement text also mentions TPA, but no TPA pack/mod ships here; Homes and Spawn call back:set_back directly. Defaults (death off, delay 0, cooldown 0) are not overridden anywhere in the repo.
- **Homes** (`datapacks__homes`, confidence high): Default limit is 1; no pack config in the repo raises it, so a server operator would need to run /scoreboard players set #limit homes.config <n> if more homes are wanted.
- **More Effective Tools** (`datapacks__more-effective-tools`, confidence high): Only block tags change; no loot tables, so drops are unchanged (glass still needs Silk Touch to drop). Blocks intended to have no effective tool (powder snow, reinforced deepslate, vault) are deliberately excluded. Vanilla 26.2 may already tag some of these.
- **Silence Mobs** (`datapacks__silence-mobs`, confidence high): The mob ends up unnamed afterwards, so a silenced mob cannot keep a custom name via this pack.
- **Spawn** (`datapacks__spawn`, confidence medium): The teleport target is computed from the position the tick function runs at (world origin X 0.5 / Z 0.5, Overworld), then adjusted for safe height, rather than reading the actual world spawn point. Verify in-game that it matches spawn, and whether it works from the Nether/End (probably teleports to the Overworld).
- **Track Raw Statistics** (`datapacks__track-raw-statistics`, confidence high): Admin/server feature with no player-visible output by default. Objective names listed in load.mcfunction; document as 'about 250 objectives' only if you count them.
- **Track Statistics** (`datapacks__track-statistics`, confidence high): The elytra and swim divisors are inconsistent in the original code (km vs metres); document as-is. Server/admin oriented.
- **Copper Powered Rails** (`datapacks__vanillatweaks__copper_powered_rails`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Craftable Coral Blocks (2x2)** (`datapacks__vanillatweaks__coral_blocks`, confidence high): Recipes accept the matching coral and coral fan interchangeably (tags coral_blocks:<type>_coral list only the live coral and live fan). Part of the bundled VanillaTweaks Crafting Tweaks datapack.
- **Craftable Blackstone** (`datapacks__vanillatweaks__craftable_blackstone`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Craftable Bundles (Rabbit Hide)** (`datapacks__vanillatweaks__craftable_bundles_rabbit_hide`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **VT Crafting Helper (Blackstone Redstone Recipes)** (`datapacks__vanillatweaks__crafting`, confidence high): Namespace 'crafting' holds 6 recipes only (no tags, advancements, or functions). Piston layout: top row 3 planks, middle row blackstone/iron ingot/blackstone, bottom row blackstone/redstone/blackstone (4 blackstone total). Vanilla dispenser/dropper/lever/observer/piston use cobblestone only; brewing stand uses the stone_crafting_materials tag (cobblestone, blackstone, cobbled deepslate), so that one adds nothing. Cobbled deepslate is not accepted by the other five.
- **Dropper to Dispenser** (`datapacks__vanillatweaks__dropper_to_dispenser`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Craftable Gravel (Flint)** (`datapacks__vanillatweaks__flint_to_gravel`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **VanillaTweaks Crafting Tweaks (vanilla recipe overrides)** (`datapacks__vanillatweaks__minecraft`, confidence high): 145 recipe files compared with vanilla: 93 overrides changing counts (stairs 8x, trapdoors 12x (that is the data value; vanilla 2), wood/hyphae 4x, bricks 4x), 2 cosmetic overrides (packed_ice, copper_trapdoor), 47 slab and 3 straight-to-shapeless and 2 dye recipes added. 'Stairs about 57' includes stone and stone-brick stairs; vanilla stair recipes use the pattern shown. Stripped wood/hyphae and bark recipes come from the More Bark tweak; 12 trapdoors per craft (VanillaTweaks More Trapdoors) is large and likely worth verifying in-game. Selected pack list (Selected Packs.txt): unpackable wool/nether wart/ice, craftable blackstone/bundles rabbit hide/coral/gravel, more bricks/stairs/bark/trapdoors, powder to glass, blackstone cobblestone, straight to shapeless, universal/sandstone dyeing, coal/charcoal to black dye, copper powered rails, rotten flesh to leather, dropper to dispenser, double slabs, back to blocks.
- **More Stairs (quartz tag)** (`datapacks__vanillatweaks__more_stairs`, confidence high): No recipes in this namespace. The actual effect (8 stairs per craft) is documented in datapacks__vanillatweaks__minecraft.
- **Powder to Glass** (`datapacks__vanillatweaks__powder_to_glass`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Rotten Flesh to Leather** (`datapacks__vanillatweaks__rotten_flesh_to_leather`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Sandstone Dyeing** (`datapacks__vanillatweaks__sandstone_dyeing`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Back to Blocks (Slabs & Stairs to Block)** (`datapacks__vanillatweaks__slabs_stairs_to_block`, confidence high): Counts from datapack: 60 slab recipes, 58 stair recipes. With the stair recipe in the minecraft module (6 blocks -> 8 stairs), 4 stairs -> 3 blocks is the exact reverse ratio.
- **Uncraftable Ice (Unpack Ice)** (`datapacks__vanillatweaks__uncraftable_ice`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Uncraftable Nether Wart Block** (`datapacks__vanillatweaks__uncraftable_nether_wart_block`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Universal Dyeing** (`datapacks__vanillatweaks__universal_dyeing`, confidence high): 100 recipes: candle 17, concrete powder 16, glazed terracotta 16, stained glass 16, glass 1, glass pane 1, stained glass pane 16, terracotta 17. Wool, carpet, beds and banners have no recipes here (a bed item tag exists but is unused). The input blocks listed in each recipe are the other colors only (15, or 16 incl. the plain version for the uncolored-capable families).
- **Unpackable Wool (Wool to String)** (`datapacks__vanillatweaks__wool_to_string`, confidence high): Part of the bundled VanillaTweaks Crafting Tweaks datapack (version 26.2 selection). Recipes are server-side; the datapack is loaded via Paxi.
- **Villager Workstation Highlights** (`datapacks__villager-workstation-highlights`, confidence high): Reads the villager's job_site memory only. It picks the nearest villager, not the one you look at.
- **Wandering Trader Announcements** (`datapacks__wandering-trader-announcements`, confidence high): Fires for any untagged wandering trader that loads in, not only newly spawned ones.
- **Wandering Trades (Hermit Edition)** (`datapacks__wandering-trades-hermit-edition`, confidence high): Counts come from add_trade.mcfunction: 29 hermit trades (indexes 2-32 minus gaps) and 190 mini-block trades (indexes 129-318), 219 total. Trade count ranges from provide_hermit_trades (random 2..5) and provide_block_trades (random 15..21). Likely overlaps with mods__miniblock-merchants and datapacks__world-of-pannotia__mini_blocks; check whether those also sell mini-block heads and whether they are placeable.
- **World of Pannotia: Dragon Drops** (`datapacks__world-of-pannotia__dragon_drops`, confidence high): The vanilla Dragon Egg still appears on the exit portal on the first kill, so the first kill gives two eggs. Drops are not gated behind a player kill. Table has no "type" field (harmless).
- **World of Pannotia: Husks Drop Sand** (`datapacks__world-of-pannotia__husks_drop_sand`, confidence high): Counts are uniform integer ranges starting at 0. These mobs also have a head drop in more_mob_heads.
- **World of Pannotia: Looting Shulker Shells** (`datapacks__world-of-pannotia__looting_shulker_shells`, confidence high): The module also contains tags/item/shulker_shell.json with an empty value list. It is still required: minecraft:entities/shulker references #looting_shulker_shells:shulker_shell, and deleting the tag made the shulker table fail to load. Shulker also has a 5% head drop from more_mob_heads.
- **World of Pannotia: Vanilla Loot Overrides** (`datapacks__world-of-pannotia__minecraft`, confidence high): The bat and villager tables used to reference loot tables in namespaces bat_membranes and villager_death, which exist nowhere in the pack; those pools were removed. The budding amethyst override was removed (Silkier Touch handles it). The load.json and tick.json function tags pointing at the nonexistent vdf:load and vdf:tick were removed.
- **World of Pannotia: Mini Blocks** (`datapacks__world-of-pannotia__mini_blocks`, confidence high): Coral entries use the coral block as input; Hay Bale uses hay_block; Wool uses white wool only. Verify the skin textures in game.
- **World of Pannotia: More Mob Heads** (`datapacks__world-of-pannotia__more_mob_heads`, confidence high): The jeb_ sheep head is name-gated (set_name from @s[name=jeb_], then count 0 when the name is empty), so unnamed sheep do not drop it; confirm in game (LOOT-3). Several entries rely on entity NBT predicates (bee, goat, panda, villager, trader llama, copper golem, wolf anger) that may not match reliably in 26.2; verify in game. The nautilus drop is a player head named "Nautilus Shell", not the item. The unreferenced jeb_sheep.json and tropical_fish.json tables were deleted.
- **World of Pannotia: Core Pack Tweaks** (`datapacks__world-of-pannotia__pannotia`, confidence medium): Fixed 2026-10-04: the zombie, skeleton, creeper and piglin head tables now use random_chance_with_enchanted_bonus, and the 18 recipes (copper oxidation, dyes, coral) now use result id. The concrete blasting recipes use a bare string result, which 26.2 accepts. The dev log showed no parse errors afterwards.
- **World of Pannotia: Vanilla Loot Copies** (`datapacks__world-of-pannotia__vanilla`, confidence high): 1404 loot tables. Compared with vanilla 26.1.2, the only differences are 26.2 vanilla additions (cinnabar and sulfur blocks, sulfur cube, a music disc added to the abandoned mineshaft chest); they are not pack changes. Not player-facing.
- **Adaptive Tooltips** (`mods__adaptive-tooltips`, confidence medium): No modrinth body or author readme; behavior inferred from the config strings in the jar. Default values and default keys not verified.
- **Advancement Screenshot** (`mods__advancement-screenshot`, confidence high): Requires Collective library.
- **All Hallows Steve** (`mods__all-hallows-steve`, confidence medium): Facts come from the mod's README (1.0.1) in the author's repo, not from the jar or in-game testing. See TEST_PLAN in the mod repo and MOB-16 in the guide test plan.
- **Amecs (Fabric)** (`mods__amecs-fabric`, confidence high): Bundled amecs-api-legacy.
- **Anvil Restoration** (`mods__anvil-restoration`, confidence high): Server-side; requires Collective.
- **AppleSkin** (`mods__appleskin`, confidence high): Needs to be on the server for accurate saturation/exhaustion values; this pack has it on both.
- **Archaeology Tweaks** (`mods__archaeology-tweaks`, confidence high): Enchantment description not in readme; verify Gentle Touch in-game.
- **Architectury API** (`mods__architectury-api-fabric-forge`, confidence high): Required by the pack author's mods (Archaeology Tweaks, Artificial Heart, Banner Tweaks, etc.).
- **Areas** (`mods__areas`, confidence medium): Exact line layout of the sign is approximate (from Modrinth page examples; screenshots not readable). Modrinth lists client required / server unsupported: players need the mod client-side. Requires Collective.
- **Armored Elytra** (`mods__armored-elytra`, confidence low): Jar missing from facts (missingJar). Modrinth page says it needs a separate datapack (Vanilla Tweaks Armored Elytra or Voodoo Beard's Plated Elytra) and lists support only up to 1.20.4; the pack uses CurseForge project 1056156 for 26.2, which may be a newer file. Verify whether the pack includes a datapack that makes the combined item; a grep of datapack facts found no armored elytra pack by name (only track-statistics and dragon_drops mention elytra).
- **Artificial Heart** (`mods__artificial-heart`, confidence medium): Recipe inputs not extracted; check jar recipes before publishing a recipe table. Two advancements: Change of Heart (strip a heart) and a creaking golem summon advancement. A shaped creaking_heart recipe exists, possibly for the detached variant.
- **AudioPlayer** (`mods__audioplayer`, confidence high): Command argument names partly stripped in the source; permissions may restrict commands for non-ops.
- **Auth Me** (`mods__auth-me`, confidence high): Bundles Resourceful Config.
- **AutoRun (Fabric)** (`mods__autorun-fabric`, confidence high): Author warns that Mod Menu without Cloth Config crashes when configuring Auto-Run; check that Cloth Config is in the pack.
- **Axolotl Bucket Fix** (`mods__axolotl-bucket-fix`, confidence high): Also has textures for More Axolotl Variants.
- **Banner Tweaks** (`mods__banner-tweaks`, confidence high): Pack may override the default of 12; check client/overrides/config for bannertweaks.json5.
- **Bathymetry** (`mods__bathymetry`, confidence high): Some shaders override water color and ignore the mod. Requires MossyLib.
- **Beacon & Conduit Tweaks** (`mods__beacon-conduit-tweaks`, confidence medium): Defaults appear to match vanilla beacon range (10 + 10 per level), so the pack's actual config values matter; they were not checked. Beam toggle behavior with tinted glass is only vaguely described.
- **Better Portal Linking** (`mods__better-portal-linking`, confidence high): Config options: enable address linking (default true), log linking decisions. Tag can be extended by datapack.
- **Better Spawner Control** (`mods__better-spawner-control`, confidence high): Exact torch placement (which 5 positions) not specified by the source; verify in-game if documenting precisely.
- **Better Statistics Screen** (`mods__better-statistics-screen`, confidence medium): The /statistics command is only partly described (lang strings: edit stat, clear stats, read value). The mod also has an optional online API endpoint and developer PSA chat messages (configurable). Depends on TCDCommons.
- **Better Than Mending** (`mods__better-than-mending`, confidence high): XP cost per durability point is not documented in the source. Required on server; client optional. The draft's claim about repairing non-held items is unsupported.
- **Boat Item View** (`mods__boat-item-view`, confidence high): Modrinth says to set showHandsInMovingBoat to true to enable it, so it may be off by default; pack config for it not verified.
- **Bobby** (`mods__bobby`, confidence high): Only previously visited areas can appear beyond server view distance.
- **Bookshelf** (`mods__bookshelf`, confidence high): Player-visible features are limited to debug commands and datapack recipe/loot types.
- **Bottle Your Xp** (`mods__bottle-your-xp`, confidence high): Config values are mod defaults; no pack override found. Produces the vanilla Bottle o' Enchanting.
- **Bottled Air** (`mods__bottled-air`, confidence high): Defaults per mod page; no pack override found. Category could also be Transport & Movement.
- **Camel Nostrils** (`mods__camel-nostrils`, confidence high): Author's own mod (chimericdream). Livna pattern: 'iii' / ' i ' / 'III' (i=iron ingot, I=iron block). 22 loot tables included (block drops). Verify bed/day-night behavior in-game.
- **Capes** (`mods__capes-fabric-forge`, confidence high): Requires Fabric Language Kotlin.
- **Carpet** (`mods__carpet`, confidence medium): No pack carpet config found in config overrides; check client/overrides for whether any rules are enabled. /player and /script are from general knowledge of Carpet, not facts.
- **ChimericLib** (`mods__chimericlib`, confidence high): Has a block get/set/update debug command (from lang strings) used for development.
- **Clumps** (`mods__clumps`, confidence high): Only needed server-side for 1.17+.
- **Collective** (`mods__collective`, confidence high): Contains small datapack JSON (collective/json); nothing player-relevant otherwise.
- **Connectivity** (`mods__connectivity-forge-fabric`, confidence medium): Jar is the 26.1 build (connectivity-fabric-26.1-7.6) in the 26.2 pack; verify it loads. Requires Cupboard.
- **Continuity** (`mods__continuity`, confidence high): Compatibility with other rendering mods in the pack is not verified here.
- **Crawl** (`mods__crawl-fabric`, confidence medium): Whether the key is hold or toggle depends on options; verify in-game. Installed on both sides.
- **Crops Love Rain** (`mods__crops-love-rain`, confidence medium): Default speed values not in facts; the pack does not override this mod's config. Whether sky exposure is required is unknown.
- **Cut Through** (`mods__cut-through`, confidence high): Modrinth lists it as client-required, server unsupported. Needs Puzzles Lib and Forge Config API Port.
- **Cycle Paintings** (`mods__cycle-paintings`, confidence high): Whether only same-size motives are cycled is not stated in sources; verify.
- **Daily Dad (Server)** (`mods__daily-dad-server`, confidence low): Only the jar description is available ("Sometimes I tell dad jokes, Sometimes he laughs at them"); frequency, triggers and commands unknown. Verify in-game or keep to a one-line mention.
- **Death Backup** (`mods__death-backup`, confidence high): Loading requires cheat-access (operator), so regular players need an admin.
- **Debugify** (`mods__debugify`, confidence medium): The full list of fixed bugs is not in the facts.
- **Deepslate Instamine** (`mods__deepslate-instamine-fabric-forge`, confidence high): Config values come from config-overrides.json (deepslate_instamine.json). Needed on both client and server.
- **Diggus Maximus Reborn** (`mods__diggus-maximus-reborn`, confidence medium): Pack does not override the config; default limits unknown. Required on both sides.
- **Dismount Entity** (`mods__dismount-entity`, confidence high): Config beAbleToDismountOtherPlayers defaults to false; pack does not change it.
- **Dispenser Configurator** (`mods__dispenser-configurator`, confidence medium): Default configurator list not extracted; check the mod wiki or in-game. Datapack id for /datapack disable should be confirmed.
- **Double Doors** (`mods__double-doors`, confidence high): The pack does not override defaults per config-overrides, so trapdoors and fence gates likely do not open as pairs; verify in-game. Mod edits configs of other double-door mods to avoid double-triggering.
- **Durability Tooltip** (`mods__durability-tooltip`, confidence high): Works without a server install. Style default unknown.
- **Dynamic FPS** (`mods__dynamic-fps`, confidence high): Frame rate floor of the loop is 15; lower rates are achieved by dropping frames.
- **Easy Anvils** (`mods__easy-anvils`, confidence high): Exact numbers are config-driven and not in the facts. Needed on both sides. The pack ships a separate grindenchantments config; interplay unverified.
- **Easy Shulker Boxes** (`mods__easy-shulker-boxes`, confidence high): Needed on both client and server. Includes nested Item Interactions library. Likely overlaps with Shulker Box Tooltip (tooltip previews) in the pack; verify no duplicate tooltip. Pack's allstackable config makes shulker boxes stack to 16 (interaction with inserting into a stack of boxes should be verified in-game). Exact keybinds not documented in facts; scroll wheel/arrow keys per description.
- **Effective Gear** (`mods__effective-gear`, confidence medium): Facts come from the mod's README (1.3.0-beta.0), not from the jar or in-game testing. Replaces Distracting Trims; the Gold material bonus covers piglin neutrality. See MOB-4, MOB-14 and MOB-15 in the guide test plan.
- **Enchanting Commands** (`mods__enchanting-commands`, confidence medium): Exact argument syntax is inferred from the description ('add an enchantment to the item in your main hand'); not verified. Server-side only; permission level assumed to be operator. Levels above 10 display as Roman numerals thanks to Enchantment Numbers Fix.
- **Enchantment Descriptions** (`mods__enchantment-descriptions`, confidence high): Client-side. Requires the Prickle library. Modrinth says descriptions appear on enchanted books; it does not say they appear on enchanted gear.
- **Enchantment Numbers Fix** (`mods__enchantment-numbers-fix`, confidence high): Pack author's own mod (chimericdream). Needs Architectury API. Only relevant when levels exceed 10 (commands, datapacks, other mods).
- **EnhancedTooltips** (`mods__enhancedtooltips`, confidence high): Overlaps with Durability Tooltip and Adaptive Tooltips in the pack; verify duplicated durability/other lines in-game. Client only.
- **Explorer's Compass** (`mods__explorer-s-compass`, confidence high): Recipes are for the mod's own item (crafting plus a repair recipe: Explorer's Compass + Compass -> Explorer's Compass), not vanilla changes. Search radius default not in facts. Needed on both sides.
- **Extended Bone Meal** (`mods__extended-bone-meal`, confidence high): Server-side mod (Modrinth: client unsupported). Exact per-block growth amounts not documented. Pack also has Random Bone Meal Flowers; both change bone meal.
- **Extreme Sound Muffler** (`mods__extreme-sound-muffler-fabric-official`, confidence medium): Default keybind not in facts. Client only; installing on server does nothing.
- **Falling Leaves** (`mods__falling-leaves-fabric`, confidence high): Client only. Jar is named for 26.1 (fallingleaves-2.0.7+26.1) but listed for the 26.2 pack; verify it loads.
- **Fast Item Frames** (`mods__fast-item-frames`, confidence high): Needed on client and server.
- **Fire Spread Tweaks** (`mods__fire-spread-tweaks`, confidence high): Defaults per Modrinth: timeFireBurnsInTicks 300, random extra -100..+100. No pack config override seen in config-overrides. doFireTick is only set on first world load, so existing worlds may differ.
- **FixBookGUI** (`mods__fixbookgui`, confidence high): Client only, no configuration.
- **Flat Bedrock** (`mods__flat-bedrock`, confidence high): Pack author's own mod (chimericdream). Needs Architectury and YACL. Config-overrides has no entry, so defaults are assumed.
- **Fluid Void Fading** (`mods__fluid-void-fading`, confidence high): Modrinth notes it does not work with Sodium; check whether the pack uses Sodium. Lava may need to be added in config as its texture is not transparent.
- **Folders! (Organizable Play Screens)** (`mods__folders-organizable-play-screens`, confidence high): Client only.
- **Followers Teleport Too** (`mods__followers-teleport-too`, confidence high): Only triggers on command-based teleports. Whether the pack's homes/spawn/back datapacks use /tp (and so trigger this) should be verified in-game.
- **Full Brightness Toggle** (`mods__full-brightness-toggle`, confidence high): Server rules may forbid fullbright; the author advises asking first on public servers.
- **Get It Together, Drops!** (`mods__get-it-together-drops`, confidence medium): The pack's configured radius/checkY values were not found in config-overrides; defaults assumed vanilla-equivalent unless the config says otherwise (verify).
- **Global Packs** (`mods__global-packs`, confidence medium): Jar description is a template placeholder; behavior taken from Modrinth body. Possibly overlaps with Paxi, which the pack uses to ship its datapacks - verify which handles what.
- **Gnetum** (`mods__gnetum`, confidence high): Tunable from the Video settings screen (Sodium config integration); high pass counts may make the HUD update slowly or look blurry.
- **Grass Seeds** (`mods__grass-seeds`, confidence high): Whether seeds are consumed per use is not stated in sources; verify.
- **Grind Enchantments** (`mods__grind-enchantments`, confidence high): Cost formula summary is an interpretation of the JSON cost functions; verify in-game. Mod supports Tax Free Levels, which is in the pack.
- **GUI Followers** (`mods__gui-followers`, confidence high): Sitting pets are not listed.
- **Hand Over Your Items** (`mods__hand-over-your-items`, confidence high): Author recommends installing on both client and server; server-only can desync.
- **Hoe Tweaks** (`mods__hoe-tweaks`, confidence high): Values are mod defaults; no pack override found.
- **Hopper X-Treme** (`mods__hopper-x-treme`, confidence high): Author's own mod. Creative tabs: Hoppers, Multi-Hoppers, Huppers, Multi-Huppers. Netherite multi-hopper etc. follow the same 4-hoppers rule. Wrench is 4 iron ingots in pattern ' # ',' ##','#  ' (count per the pattern). Verify how filters are inserted into hoppers.
- **Horse Breeding Fix** (`mods__horse-breeding-fix`, confidence medium): Thin source; exact formula not documented.
- **Horse Expert** (`mods__horse-expert`, confidence high): Equip slot not confirmed (jar ships trinkets data; verify whether the pack includes Trinkets or the monocle goes in the head slot). Config is TOML; edit via /config showfile horseexpert.
- **Houdini Block** (`mods__houdini-block`, confidence high): How to switch modes is not stated in the README; verify in-game.
- **Ice Prevents Crop Growth** (`mods__ice-prevents-crop-growth`, confidence high): Exact position of the ice (directly beneath farmland) is described only loosely in sources.
- **Infinity Water Bucket** (`mods__infinity-water-bucket`, confidence medium): allstackable gives buckets stack size 64 (lava/milk 16, per config-overrides); interplay with infinite buckets untested. Lava/milk/snow options not overridden by pack (assume default off). Server-side, but missing on client may cause visual glitches. Check whether pack changes Infinity availability.
- **Inventory Profiles Next** (`mods__inventory-profiles-next`, confidence medium): Default keybinds are not in the facts; verify in-game. Requires libIPN and Fabric Language Kotlin.
- **Inventory Totem** (`mods__inventory-totem`, confidence high): Server-side only (Serilum); needs Collective.
- **Item Highlighter** (`mods__item-highlighter-fabric`, confidence high): Mod ID is 'highlighter'; requires Iceberg.
- **Jade** (`mods__jade`, confidence high): Default keys are numpad keys; laptop players may need to rebind. Recipe/uses keys are documented for JEI; REI integration unverified.
- **Just Player Heads** (`mods__just-player-heads`, confidence high): Command permission level not stated in the facts; presumably operator-only. Heads placed as blocks are also affected by Miniblock Merchants' player_head loot table override.
- **Keep My Soil Tilled** (`mods__keep-my-soil-tilled`, confidence medium): Description is terse; exact trigger conditions not verified.
- **Kelp Fertilizer** (`mods__kelp-fertilizer`, confidence high): Thematic overlap with the other bone meal mods in the pack.
- **KleeSlabs** (`mods__kleeslabs`, confidence high): Requires Balm. Client optional, server required.
- **Leaky - Item Lag Fix** (`mods__leaky-item-lag-fix-forge-fabric`, confidence medium): Jar not available (missingJar). From the CurseForge page via search: it reports cluster size, state and location in chat with clickable coordinates, and confirmed oversized leaks can be auto-removed after a configurable size and warning delay. Players may see leak warnings in chat; defaults not verified.
- **Leaves Be Gone** (`mods__leaves-be-gone`, confidence high): Requires Puzzles Lib and Forge Config API Port. Pack has no config override for it.
- **Lib 5555ff** (`mods__lib-5555ff`, confidence high): Facts show it ships vanilla-namespace loot table overrides that chain vanilla: plus mob_heads:, name_tag:, swift_flight:, mace_protection: sub-tables (entity drops, creaking_heart, end_city_treasure, trial chambers ominous rare reward). This explains why mobs can drop heads and name tags together with vanilla loot. Not researched further.
- **Litematica** (`mods__litematica`, confidence high): Fork by sakura-ryoko. Requires MaLiLib. Keys differ on non-QWERTY layouts.
- **Lootr** (`mods__lootr-fabric`, confidence high): Required on both client and server. Pack has no config override. Data includes 72 lootr tags (blacklist/whitelist style). Centennial Trophy origin unverified.
- **Minekea** (`mods__minekea`, confidence high): Recipes were read from the author's generated recipe JSON in the repo (10.1.0 for 26.2), because the jar facts list only 400 of about 4,400 recipes. Counts of block families are approximate. Issues to check in-game: (1) Ancient, Doom and End Lantern recipes are identical (iron nugget ring, ender pearl, torch), so only one can be crafted by recipe and the others may be creative-only. (2) Nugget bags have no craft recipe; only a sack uncrafts into bags and sacks need bags, so bags appear creative-only. (3) Honey Bucket has no recipe; get it from a honey cauldron or jar. (4) Vanilla barrel and bookshelf recipes are overridden to oak-only (vanilla accepted any planks, as far as I know). (5) Jar item capacity is 7 compressed stacks plus 1 live stack. (6) No pack config override affects Minekea. (7) The mod's own Patchouli book exists alongside the pack's 'pannotia' book. (8) Mod depends on Architectury and ChimericLib, YACL; the wrench logic lives in ChimericLib. (9) BlockPainter, wrench and hammer keybinds and behaviour taken from source, not tested in-game.
- **Miniblock Merchants** (`mods__miniblock-merchants`, confidence high): Pack author's own mod. README lists 25 professions; the lang file lists 26 conversion items (one extra to check; the README list above gives 26 rows, so the '25' count in the README may be stale). Structure-chest conversion items interact with Lootr (per-player loot). The Arboriculturist/Pomologist leaf drop rates are very low (1 in 4096).
- **MiniHUD** (`mods__minihud`, confidence high): Requires MaLiLib. Client-only; should not be on the server. Servux is now in the manifest for structure boxes in multiplayer (MP-5). Config option set is large; mention only the main features.
- **Mod Menu** (`mods__mod-menu`, confidence high): The update checker may show a message that Modrinth API v2 is unavailable (string present in the jar); harmless.
- **Mooshroom Tweaks** (`mods__mooshroom-tweaks`, confidence high): No pack config override found for this mod, so the default 0.5 should apply. Server-side only; requires Collective.
- **Name Tag Upgrade** (`mods__name-tag-upgrade`, confidence high): Exact conditions for the death drop (chance/config) are not documented in the page; config is in config/nametagupgrade-*.toml. Needed on both client and server.
- **Nature's Compass** (`mods__nature-s-compass`, confidence high): Structure counterpart is Explorer's Compass. Mod ships 2 advancements (not inspected).
- **No Recipe Book** (`mods__no-recipe-book-fabric`, confidence high): Client-side only. Players who want to look up recipes will need a recipe viewer mod or the guidebook.
- **Open Parties and Claims** (`mods__open-parties-and-claims`, confidence high): Mod is in beta. Actual claim limits and protection settings on the pack's server are not known from facts; verify server config. Client install is optional (commands work without it).
- **OptiGUI** (`mods__optigui`, confidence high): Requires Fabric Language Kotlin. Client-side. Version is a 2.3.0 beta.
- **Ore Height Indicator** (`mods__ore-height-indicator`, confidence medium): The pack ships config/oreheightindicator.json with hudEnabled false. No default keybind is known. How it determines the best height (worldgen data vs. built-in) was not verified.
- **Overflowing Bars** (`mods__overflowing-bars`, confidence high): The page recommends AttributeFix for armor/toughness above vanilla caps; it is not in this batch, so it may not be in the pack. Config in config/overflowingbars-client.toml.
- **Overworld Piglins** (`mods__overworld-piglins`, confidence high): Server-side only; requires Collective. Useful for bringing piglins home or trading in the Overworld.
- **Paginated Advancements** (`mods__paginated-advancements-custom-frames`, confidence high): Config uses Cloth Config (AutoConfig). Relevant for the pack's large advancement set (for example BlazeandCave's).
- **Plague's Chat Timestamps** (`mods__plague-s-chat-timestamps`, confidence high): In-game settings need Mod Menu and Cloth Config.
- **Rain Be Gone Ritual** (`mods__rain-be-gone-ritual`, confidence high): Exact accepted cauldron layouts are shown only in images on the mod page; text states min 4, max 8 cauldrons around the log. Requires Collective. Serilum mod.
- **Random Bone Meal Flowers** (`mods__random-bone-meal-flowers`, confidence high): Blacklist semantics (! = prevented) taken from the mod description. Requires Collective. Possible overlap with Extended Bone Meal.
- **Random Village Names** (`mods__random-village-names`, confidence high): Requires Areas and Collective. Areas config controls the displayed text. Names likely apply only to newly generated villages.
- **Reacharound** (`mods__reacharound`, confidence medium): Core functionality ported from Quark. Default keybind/toggle not verified.
- **ReMorphed** (`mods__remorphed`, confidence medium): Keybinds from the mod description and help text; confirm in-game. No pack config override exists.
- **Remove Enchantment Incompatibility** (`mods__removeenchantmentincompatibility`, confidence high): Server-installed; no config. Interactions with other enchantment mods or datapacks not checked.
- **Replanting Crops** (`mods__replanting-crops`, confidence high): No pack config override found, so mod defaults apply. Overlaps with Right Click Harvest, which also replants; verify in-game that they do not conflict.
- **Resource Backpacks** (`mods__resource-backpacks`, confidence high): Slot counts per tier are configurable and not in the facts. Upgrade recipes are shaped with the previous backpack in the centre.
- **Right Click Harvest** (`mods__rightclickharvest`, confidence high): Pack config only restates the defaults. Verify sugar cane/cactus behaviour in 26.2 build.
- **Roughly Enough Items (REI)** (`mods__roughly-enough-items-fabric-forge-rei`, confidence medium): Recipe/usage keys (standard REI R and U) not in facts. Requires Architectury.
- **Roughly Enough Professions** (`mods__roughly-enough-professions-rep`, confidence medium): No published description in facts; summary based on the jar description "Adds info about professions to REI". Requires REI.
- **SB's Enchantment Effects** (`mods__sb-s-enchantment-effects`, confidence high): Purely visual; no gameplay changes.
- **Scaffolding Drops Nearby** (`mods__scaffolding-drops-nearby`, confidence high): Requires Collective.
- **Servux** (`mods__servux`, confidence medium): Modrinth: no commands yet in 0.1.x; commands to toggle features are planned. Config for the structures feature not checked. Confirm structure boxes render on the pack server (MP-5).
- **Shulker Stuff** (`mods__shulker-stuff`, confidence high): Author readme says the config screen contains unrelated Miniblock Merchants options by mistake; ignore them. Exact enchantment obtain methods and effects unverified in-game.
- **Silkier Touch** (`mods__silkier-touch`, confidence medium): Replaces Mineable Spawner and Mineable Trial Spawner. Details come from the Modrinth page, which lists versions only up to 1.21.11, and the jar was not available locally, so verify the behaviour and defaults in game (LOOT-25, LOOT-26). The config file name was not checked. The world-of-pannotia budding amethyst override was removed, so this mod is the only source of that change.
- **Simple Magnets** (`mods__simple-magnets`, confidence high): Exact recipes from recipe facts. Basic Magnet = AAB/AC_/AAD: A=iron ingot, B=lapis, C=ender pearl, D=redstone dust. Advanced Magnet = AAB/CDE/AAF: A=gold ingot, B=lapis, C=Basic Magnet, D=eye of ender, E=diamond, F=redstone dust. Basic Demag Coil = _A_/BCB/CCC: A=gold ingot, B=redstone dust, C=iron ingot. Advanced Demag Coil = _A_/BCB/CDC: A=glowstone dust, B=redstone dust, C=gold ingot, D=Basic Demagnetization Coil. Tag inputs (#c:ingots/iron etc.) accept equivalents from other mods. Basic range 5, Advanced max 11 per Modrinth; Basic coil 3, Advanced coil 5.
- **Simple Voice Chat** (`mods__simple-voice-chat`, confidence medium): Default UDP port (24454, from general knowledge) is not in the extracted facts; verify against server config. Works in single player/LAN only if run_local_server is enabled.
- **Smaller Nether Portals** (`mods__smaller-nether-portals`, confidence high): Server-side only; requires Collective. May interact with Better Portal Linking.
- **Sneaky Tweaks** (`mods__sneaky-tweaks`, confidence high): Pack author's own mod. Adds 6 advancements (root, sneak through berries, sneak on campfire, overstay your welcome, crouch bridge, looked down).
- **Sodium Extra** (`mods__sodium-extra`, confidence medium): Client-side performance addon; not researched in detail.
- **Softer Hay Bales** (`mods__softer-hay-bales`, confidence high): Server-side; requires Collective.
- **Sponj** (`mods__sponj`, confidence high): 5 advancements: root 'Soak it all up'; Big Gulp (dry a region with 16+ connected sponjes); Spill Response Team (absorb 100,000 blocks of water in total); Dry Heat (dry a wet sponj in the Nether); Space Heater (dry a wet lava sponj in the End). Smelting recipe: wet sponj -> sponj.
- **StackItUp** (`mods__stackitup`, confidence high): Author README is mostly empty; details come from source and the pack config (35 items at 16, 77 at 64). Signs listed are only the 8 types above (no bamboo, cherry, mangrove, pale oak or hanging signs). Global config applies to NEW worlds; existing worlds keep their own stackitup-config.json.
- **Stendhal** (`mods__stendhal`, confidence high): May overlap with Improved Sign Editing on the sign screen.
- **Superflat World No Slimes** (`mods__superflat-world-no-slimes`, confidence high): Only matters in superflat world types; likely no effect in the standard pack world.
- **Swift Flight** (`mods__swift-flight`, confidence medium): A datapack (jodek namespace) packaged as a mod; 15 functions and 3 advancements. Verify in-game that the pack's enchantment tweaks (universal-enchants, removeenchantmentincompatibility) do not conflict.
- **Tax Free Levels** (`mods__tax-free-levels-fabric-forge`, confidence medium): Jar is TaxFreeLevels-1.5.4-fabric-26.1 on a 26.2 pack; verify it loads. Pack's grind-enchantments config uses its own cost functions, which may not be flattened. Default Level Base not in facts.
- **The Athenaeum** (`mods__the-athenaeum`, confidence medium): 102 book definitions (Andersen, English, Grimm, Japanese fairy tales). No minecraft-namespace overrides appear in the jar facts, so the stronghold/mansion injection mechanism is not confirmed beyond the README; verify in-game. Exact edition-chance semantics not checked.
- **Trade Cycling** (`mods__trade-cycling`, confidence high): Pack's villagertweaks config does not affect cycling.
- **TrashSlot** (`mods__trashslot`, confidence high): Requires Balm. Delete keys do not work in creative unless enabled, and items trashed in creative are lost permanently.
- **Trinkets Updated** (`mods__trinkets-updated`, confidence medium): Mostly an API dependency; player-visible only if another mod in the pack uses trinket slots (not verified which do). Nested dependency yumi-mc-foundation.
- **Tweakeroo** (`mods__tweakeroo`, confidence high): Requires MaLiLib. 'Disable all terrain fog' is disabled if Sodium is installed.
- **Universal Enchants** (`mods__universal-enchants`, confidence medium): The pack ships config/universalenchants-common.toml, which turns on all the optional stacking and extra-target datapacks (bow, protection, mace, crossbow and damage compatibility; damage, weapon, shield, animal and ranged additions). They are added when a world is created. Overlaps with RemoveEnchantmentIncompatibility (both loosen exclusivity); check for conflicts. Bow Infinity Fix and No Feather Trample were removed because this mod covers arrowless Infinity and Feather Falling trample protection. Requires Puzzles Lib.
- **Universal Graves** (`mods__universal-graves`, confidence medium): Values come from the README's documented defaults/examples; verify against generated config/universal-graves/config.json in-game. Uses Polymer so vanilla clients work.
- **Universal Shops** (`mods__universal-shops`, confidence high): Currency is whatever item the owner sets. An economy API is bundled but no economy mod was verified in the pack.
- **Vectorientation** (`mods__vectorientation`, confidence high): Purely client-side; works on any server.
- **Villager Death Messages** (`mods__villager-death-messages`, confidence high): Requires Collective. Pack ships no config for it, so defaults apply.
- **VillagerTweaks** (`mods__villagertweaks`, confidence high): Config is also editable via YACL/Mod Menu. Demand modifier on means vanilla price behavior is kept.
- **Visual Workbench** (`mods__visual-workbench-forge-fabric`, confidence medium): Required on client and server; requires Puzzles Lib and Forge Config API Port.
- **Visuality** (`mods__visuality`, confidence high): Requires Cloth Config. The jar filename says +26.3 while the pack targets 26.2; verify it loads.
- **WI Zoom** (`mods__wi-zoom`, confidence low): Thin facts; default key and scroll-wheel behavior unverified in game.
- **WITS (What Is This Structure?)** (`mods__wits-what-is-this-structure`, confidence high): Jar is built for 26.1; 26.2 compatibility assumed.
- **Woodwalkers** (`mods__woodwalkers`, confidence medium): Default U conflicts with Xaero's Minimap waypoint list key (U); rebind one. Requires CraftedCore. Jar is 'Walkers' 8.3.2 with 20+38 shape datapack entries. Permanence of the choice not verified in game.
- **WorldEdit** (`mods__worldedit`, confidence medium): Admin/building tool. The commands listed are standard WorldEdit commands, not extracted from this jar.
- **WorldEdit CUI** (`mods__worldedit-cui-fabric`, confidence high): Not useful without WorldEdit.
- **Xaero's Minimap** (`mods__xaero-s-minimap`, confidence high): Author warns against XaeroPlus. Bundles XaeroLib. Default U conflicts with Woodwalkers' unlock key.
- **Xaero's World Map** (`mods__xaero-s-world-map`, confidence high): The author recommends optimizing singleplayer worlds after Minecraft updates for faster map generation.
- **Zombie Villagers From Spawner** (`mods__zombie-villagers-from-spawner`, confidence medium): Spawn chance/config not extracted; requires Collective.
- **Pack Configuration Overrides** (`other__config-overrides`, confidence medium): Grind Enchantments cost formula is a rough reading of nested config functions; verify in game. forceVillagerConversion is interpreted as 'zombies always convert villagers'. Vanilla default stack sizes were not asserted per item; confirm any comparison against vanilla before publishing. Verify StackItUp actually imported the allstackable values (its own config may differ).
- **Wyvernity Datapack Resources** (`other__resourcepack-wyvernity-datapack-resources`, confidence high): The Enchantment Plus datapack and any Simple Paxels datapack/mod are NOT in the current client/overrides/datapacks folder or the mod list (checked); the old 17.x config.old zip.sh still shipped enchantment-plus plus this resource pack. This pack appears to be a leftover with nothing to texture. Suggest omitting it from the player wiki (or a technical appendix only) and flagging it to the pack author for removal. Pack format 88.
