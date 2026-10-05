# Guide test plan (18.x / MC 26.2)

In-game checks to confirm that `docs/guide/` matches the real pack. The plan covers changed vanilla recipes and drops, new features, mod interactions, and the spots where the guide hedges ("unverified", "may not work", hidden `<!-- maintainer: -->` comments). Known and suspected problems are tracked in [guide-maintainer-notes.md](guide-maintainer-notes.md). Test IDs (`LOAD-1`, `REC-3`, …) are referenced from there.

**How to use it.** Work top to bottom: section 1 catches whole classes of failure cheaply, so don't spend time on individual recipes until it passes. Tick boxes as you go. When a result differs from the guide, fix the guide page linked in the row, or log a bug in the maintainer notes. Don't change the guide to match a bug.

## 0. Setup

| Environment | Use it for |
|---|---|
| **A. Fresh singleplayer world**, Survival, cheats on, default world type, created *after* installing the pack | Most tests. New-world-only behaviour (StackItUp global config, Fire Spread Tweaks `doFireTick`, Flat Bedrock, Random Village Names) only shows up here. |
| **B. Same world in Creative** (`/gamemode creative`) | Recipe checks and placing blocks quickly. |
| **C. Dedicated server** from `server/` plus 2 clients (second account or offline-mode alt) | Anything marked *(MP)*: claims, voice chat, Lootr per-player loot, Hand Over Your Items, graves, `/trigger` permissions as a non-op, MiniHUD/Servux, AFK display. |
| **D. Superflat world** | `MOB-6` only. |

Useful commands:

- `/datapack list`: confirm which packs are enabled.
- `/reload`: re-run data loading, then grep `logs/latest.log` (see `LOAD-2`).
- `/recipe give @s *`: unlock every recipe so REI and the crafting grid agree.
- `/execute as @s run loot spawn ~ ~1 ~ kill @e[type=<mob>,limit=1,sort=nearest]`: rolls a mob's loot table as if you had killed it with your main-hand weapon. Looting on the held weapon applies. Put it in a repeating command block to sample drop rates without farming.
- `/loot spawn ~ ~1 ~ mine <x> <y> <z> mainhand`: rolls a block's loot table with the held tool (Silk Touch/Fortune).
- `/loot give @s loot <table>`: roll any table directly, e.g. `minecraft:chests/end_city_treasure`.
- `/enchant`, `/give @s <item>[enchantments={...}]`: build test tools.
- `/summon <mob> ~ ~ ~ {CustomName:'"jeb_"'}` and similar: set up variant or name cases.

Record the pack version, dev-instance name and date at the top of your results.

---

## 1. Load sanity (do first)

These catch failures that would invalidate many later checks.

- [ ] **LOAD-1: datapacks are actually loaded.** In world A run `/datapack list`. Expect all 16 packs from `client/overrides/datapacks/` to be enabled (afk-display, armor-statues, bacap, bacap-torture-edition, back, homes, more-effective-tools, silence-mobs, spawn, track-raw-statistics, track-statistics, vanillatweaks (several entries), villager-workstation-highlights, wandering-trader-announcements, wandering-trades-hermit-edition, world-of-pannotia). Do this in a world created before the pack update too, because the guide claims they "apply to existing worlds". The datapacks ship as `overrides/datapacks/` and were seen loading via Global Packs in the dev log (2026-10-04). world-of-pannotia's `pack.mcmeta` now has `min_format`/`max_format` (maintainer notes §1.1); confirm the "missing mandatory fields" warning is gone for it.
- [ ] **LOAD-1b: load/tick functions run.** After world-of-pannotia loads, confirm that `#minecraft:load` didn't fail on the missing `vdf:load`/`vdf:tick` (log: `Couldn't load tag minecraft:load`). Quick functional check: `/trigger sethome` responds, and `/scoreboard objectives list` shows `homes.config`, `back.config` and the `ts_`/`hc_` objectives.
- [ ] **LOAD-2: no datapack or recipe parse errors.** After world load and after `/reload`, search `logs/latest.log` for `Couldn't parse`, `Failed to load`, `Unknown registry key`, `random_chance_with_looting`, `pannotia:`, `hopperxtreme:`, `minekea:`, `bat_membranes`, `villager_death`, `vdf:`. Every hit should map to a known item in the maintainer notes. Add any that don't.
- [ ] **LOAD-3: off-version jars load and work.** Check that each of these is listed in Mod Menu and visibly does something: Connectivity (26.1 build), Falling Leaves (26.1; leaf particles under a tree), Tax Free Levels (26.1; see `ENC-2`), WITS (26.1; `/wits` responds), Visuality (+26.3; hit particles on mobs). All five loaded in the dev log. Bow Infinity Fix was removed from the pack (see `ENC-7`).
- [ ] **LOAD-4: manifest vs instance.** Armored Elytra, Leaky, Fluid Void Fading, Mineable Spawner, Mineable Trial Spawner, Universal Enchants and Universal Graves are in the manifest but were missing from the dev instance. Confirm all seven are installed in a fresh install from the built zip. Confirm "Enchanting Changes", which is in the dev instance but not the manifest, does **not** end up in a fresh install.
- [ ] **LOAD-5: Patchouli absent.** No guidebook items in creative search, no Patchouli errors other than the known guidebook ones. The Minekea, Hopper X-Treme and pannotia books are expected to be unavailable.
- [ ] **LOAD-6: StackItUp config applied.** In the new world run `/stackitup show all` (op). Expect about 77 items at 64 and 35 at 16, matching `allstackable-global-config.json`. Repeat on the dedicated server's world; the global config only applies to *new* worlds.

---

## 2. Recipes ([vanilla-changes.md](guide/vanilla-changes.md))

For each row: find the recipe in REI, craft it once for real, and check the output count. "REI ≠ craft" is itself a bug, because REI can show recipes that fail at craft time.

### 2.1 World of Pannotia datapack recipes

REC-1 to REC-3 are source-verified as failing to parse (old `{"item":…}` result). REC-4 and REC-5 should work once the datapack loads (`LOAD-1`). Retest everything here after the fixes.

- [ ] **REC-1: copper oxidation.** `#G#/#W#/###` with 7 Copper Blocks, gunpowder and a water bucket gives 7 Exposed Copper. Repeat Exposed→Weathered and Weathered→Oxidized. Check that the water bucket comes back empty.
- [ ] **REC-2: dyes.** Brown Mushroom → brown dye; Twisting Vines → cyan; Big Dripleaf → green; Carrot → orange; Yellow + Blue dye → 2 green.
- [ ] **REC-3: coral ↔ fan.** All 5 corals → fan, and each fan → coral (10 recipes).
- [ ] **REC-4: concrete → powder (blast furnace).** All 16 colours, 0.1 XP.
- [ ] **REC-5: small dripleaf + bone meal → small dripleaf.** This one is expected to work even if REC-1 to REC-4 fail.

### 2.2 VanillaTweaks Crafting Tweaks ([vanillatweaks.md](guide/datapacks/vanillatweaks.md))

- [ ] **REC-10: stairs give 8.** Check a sample: oak, bamboo mosaic, cobblestone, stone brick (also with chiseled and cracked stone bricks as input), purpur (block works, pillar should *not*), quartz (block, pillar and chiseled all work), waxed cut copper.
- [ ] **REC-11: trapdoors give 12.** Oak, bamboo, crimson. Iron trapdoor unchanged. Copper trapdoor still 2x2 → 1.
- [ ] **REC-12: wood/hyphae give 4.** Oak wood, stripped cherry wood, warped hyphae.
- [ ] **REC-13: bricks.** 2x2 bricks → 4 brick blocks.
- [ ] **REC-14: block → 2 slabs (shapeless).** Smooth stone, waxed cut copper, bamboo mosaic. The vanilla 3 → 6 still works. Wood planks are **not** covered.
- [ ] **REC-15: Back to Blocks.** 2 slabs side by side → 1 block (stone, oak, cut sandstone). 4 stairs → 3 blocks (oak, deepslate brick). No recipe for cut sandstone, cut red sandstone or smooth stone stairs.
- [ ] **REC-16: smooth stone.** 2x2 smooth stone slabs → 2 smooth stone.
- [ ] **REC-17: blackstone recipes.** Basalt + coal diagonal → 4 blackstone; polished basalt + charcoal → 4 polished blackstone; dispenser, dropper, lever, observer and piston using blackstone (piston uses 4 blackstone + iron + redstone + 3 planks); brewing stand with blackstone. Cobbled deepslate should **not** work in the first five.
- [ ] **REC-18: dispenser from dropper.** Shapeless dropper + bow; shaped sticks/string around a dropper.
- [ ] **REC-19: copper powered rail.** 6 copper ingots + stick + redstone → 6 powered rails. The gold recipe still works.
- [ ] **REC-20: Universal Dyeing.** 8 mixed-colour terracotta + dye → 8 of that colour; 8 stained glass + ice → 8 glass. Also try candles, concrete powder, glazed terracotta and panes. Try ink sac, lapis, cocoa and bone meal as the dye. Wool, carpet, beds and banners are **not** covered by this pack.
- [ ] **REC-21: Sandstone Dyeing.** 8 sand + red dye → 8 red sand; 2 sandstone + red dye → 2 red sandstone; 2 smooth sandstone + red dye → 2 smooth red sandstone.
- [ ] **REC-22: unpacking.** Packed ice → 9 ice; blue ice → 9 packed ice; nether wart block → 9 nether wart; any wool → 4 string.
- [ ] **REC-23: misc shapeless.** Coal or charcoal → black dye; 3 wheat in any arrangement → bread; 3 sugar cane in any arrangement → 3 paper; 2 shells + chest in any arrangement → shulker box.
- [ ] **REC-24: misc.** 2x2 flint → gravel; rabbit-hide bundle (`SRS/R_R/RRR`; the leather bundle still works); 2x2 coral/coral fan → coral block (dead coral not accepted).
- [ ] **REC-25: smelting.** Concrete powder → stained glass (furnace only, not blast furnace). Rotten flesh → leather (furnace only, 1.0 XP).

### 2.3 Mod recipes that touch vanilla items

- [ ] **REC-30: Minekea barrels and bookshelves.** The guide now says the vanilla barrel and bookshelf recipes are unchanged: the Minekea overrides sit in the ignored `recipes/` folder. Check what spruce planks + slabs give (vanilla barrel or Minekea spruce barrel?) and what spruce planks + books give (1 vanilla bookshelf or 3 Minekea spruce bookshelves?). Two recipes may clash on the same grid, so record which one REI and the crafting grid pick.
- [ ] **REC-31: Minekea lanterns.** Craft `###/#P#/#T#` (iron nugget, ender pearl, torch) and record which of the Ancient, Doom and End lanterns you get. Check REI for any alternative recipes for the other two.
- [ ] **REC-32: Minekea nugget bags and honey bucket.** Confirm there's no recipe that makes a Nugget Bag from nuggets, and that a Nugget Sack needs 9 bags. Confirm the Honey Bucket has no recipe, and that you can fill one from a honey cauldron or jar.
- [ ] **REC-33: Minekea misc.** End rod ↔ End(less) Rod; smooth basalt in the stonecutter → basalt bricks and chiseled basalt bricks; pillow → 4 wool; egg crate → 9 eggs; compressed dye block → 9 dyes; 1x compressed block → 9 base.
- [ ] **REC-34: Camel Nostrils.** A chest alone → upside-down chest → chest; same for the crafting table. Check that neither recipe hides another single-item recipe for chests or crafting tables in REI.
- [ ] **REC-35: Artificial Heart.** Artificial Creaking Heart + 8 resin clumps → creaking heart. Clipped eyeblossom → gray dye; clipped open eyeblossom → orange dye.
- [ ] **REC-36: Fast Item Frames.** Item frame + any dye → dyed frame, and the same for the glow item frame.
- [ ] **REC-37: Hopper X-Treme.** 4 hoppers → Multi-Hopper and back; hopper + honeycomb/copper/gold. Hopper X-Treme skips registering its own wrench when Minekea is present. Confirm the Minekea wrench configures hoppers. Craft the filter.
- [ ] **REC-38: Sponj.** 2 sponges → 2 sponj.
- [ ] **REC-39: Nature's / Explorer's Compass.** Both recipes, plus the shapeless repair with a compass.
- [ ] **REC-40: Easy Anvils.** A damaged anvil repaired with iron blocks (in a grid or in world, whichever the mod does).

### 2.4 Recipe conflicts

- [ ] **REC-50: ambiguous grids.** In REI, look at the output for each of these and confirm there's exactly one result, or that the clash is acceptable: 1 chest alone; 1 crafting table alone; 1 stone/smooth stone/cut copper block alone (VT block → 2 slabs vs any Minekea single-block recipe); 9 wheat seeds (Minekea seed storage) vs Golden Wheat Seeds (8 seeds + gold ingot); 2 identical slabs in a row (Back to Blocks vs Minekea recipes for its own slabs); 8 terracotta + dye (vanilla vs Universal Dyeing).

---

## 3. Loot and drops

Use the `loot spawn … kill` command from section 0 for chances, and real kills for at least one case of each to confirm the `killed_by_player` path works.

### 3.1 Mob heads (World of Pannotia)

- [ ] **LOOT-1: core-module heads.** Zombie Head, Skeleton Skull, Creeper Head (uncharged), Piglin Head. Over about 400 rolls with no Looting, expect about 2.5%/2.5%/2.5%/4%. The tables now use `random_chance_with_enchanted_bonus`. Charged creepers did not double-drop (checked 2026-10-04).
- [ ] **LOOT-2: tropical fish heads.** These use the current condition and should work. Summon named-variant fish (e.g. Clownfish) and a random one. Expect a 10% named head, or a plain Tropical Fish head for unknown variants.
- [ ] **LOOT-3: jeb_ sheep head.** The guide now says unnamed sheep don't drop it. Source shows the pool is name-gated with a `set_name` selector + `filtered` count trick, so **expect no jeb_ head from unnamed sheep**. Kill about 100 unnamed sheep with the command (expect 0 jeb_ heads), then about 30 sheep named `jeb_` (expect about 10%). Either result means a guide or datapack fix.
- [ ] **LOOT-4: More Mob Heads sample.** Check at least: a guaranteed drop (Warden, Elder Guardian, Wandering Trader, Camel); a variant drop (Cat by variant; Horse by coat; Fox red vs snow; Llama; Parrot); and each NBT-predicate case the guide flags as fragile: **Bee** (angry/pollinated), **Goat** (screaming), **Panda** (by gene), **Villager** (by profession), **Trader Llama**, **Copper Golem** (by oxidation), **Wolf** (angry and snowy variants), **Mooshroom** (brown). Also check Axolotl (blue is 100%), Strider, Zombie Nautilus, the "Toast" rabbit and the Killer Bunny.
- [ ] **LOOT-5: head details.** Placed heads render the mob skin. Each head on a note block plays the mob's sound. The "Nautilus Shell" drop is a player head, not the vanilla item. Heads only drop on a player kill: kill with `/kill` or lava and expect none.
- [ ] **LOOT-6: bat and villager pools.** Bat and villager drops still work (bat head 10%, villager head 100%), and no errors appear for `bat_membranes:` or `villager_death:`.

### 3.2 Other mob drops

- [ ] **LOOT-10: Ender Dragon.** First kill: Elytra + Dragon Egg + Dragon Head drop, **plus** the portal egg (2 eggs). Respawn the dragon and kill it again: the drops repeat. Kill it with no player damage (e.g. `/kill @e[type=ender_dragon]`) and record whether it still drops, because the guide says nothing requires a player kill.
- [ ] **LOOT-11: husk / parched / camel husk sand.** Husk and Parched give 0–2 sand, Camel Husk 0–3. The counts go up with Looting. Kills without a player still drop sand.
- [ ] **LOOT-12: shulker shells.** Every kill gives at least 2 shells (2 + 0–2 per Looting level), plus the vanilla 50% shell.
- [ ] **LOOT-13: lib 5555ff vs World of Pannotia entity tables.** Both override `minecraft:entities/*`. On the same mobs, check that a WoP head can drop *and* the lib 5555ff extras still happen: a named mob's name tag drop on death (Name Tag Upgrade), and the mace/trial-chamber ominous reward pool. Whichever pack loads last may silently drop the other's pools.
- [ ] **LOOT-14: Just Player Heads.** A player death drops their head (default chance 1.0). If graves are on, check whether the head goes into the grave or onto the ground.

### 3.3 Block drops

- [ ] **LOOT-20: Ancient Debris.** Diamond pickaxe without Silk Touch → Netherite Scrap. Fortune III raises the count. Silk Touch → Ancient Debris. An iron pickaxe → nothing.
- [ ] **LOOT-21: giant mushroom blocks.** About 40% chance of 1–2 mushrooms over 100 breaks (vanilla about 22%). Fortune increases it. Silk Touch drops the block.
- [ ] **LOOT-22: jungle leaves.** Sapling rate about 5% with no Fortune (sample 200+).
- [ ] **LOOT-23: budding amethyst.** Silk Touch → budding amethyst; any other tool → nothing. The separate Silk Touch Budding Amethyst datapack was removed, so only the world-of-pannotia table applies. Confirm you get exactly one block.
- [ ] **LOOT-24: player head data (3 overrides).** WoP, Hermit Edition and Miniblock Merchants all override `minecraft:blocks/player_head`. Place and break: a mob head, a Mini block, a Hermit head and a `/jph head` player head. Each should come back with name, lore, rarity and skin intact, and stack with an unplaced copy of the same head. Record which pack's version is in effect (e.g. `/loot spawn ~ ~ ~ mine …` on a head with custom lore).
- [ ] **LOOT-25: Mineable Spawner.** Break a spawner with a plain pickaxe: the spawner item + spawn egg drop, no XP. Place it again and confirm it spawns the same mob. `/trigger mineablespawner.config` works for a non-op *(MP)*.
- [ ] **LOOT-26: Mineable Trial Spawner.** The trial spawner and the vault drop with a pickaxe. Check whether a spawn egg drops (the guide marks this unverified). Check whether a re-placed vault still accepts keys.
- [ ] **LOOT-27: Shulker Stuff box loot.** A box with an enchantment, a dye colour and plating keeps all three when broken.
- [ ] **LOOT-28: Chorus Fruit / Scaffolding Drops Nearby.** Fruit drops at the plant's base; scaffolding drops at the first broken block.

### 3.4 Chest loot

- [ ] **LOOT-30: The Athenaeum.** `/loot give @s loot minecraft:chests/stronghold_library` about 50 times, and the same for `woodland_mansion`. Athenaeum written books should appear. The mod's jar has no minecraft-namespace override, so confirm how they're injected.
- [ ] **LOOT-31: Swift Flight.** About 8% of `minecraft:chests/end_city_treasure` rolls contain a Swift Flight book. Apply it to a harness at an anvil and check that a happy ghast flies faster.
- [ ] **LOOT-32: Miniblock Merchants conversion items.** Sample a few sources: igloo chest (Galilean Spyglass always), jungle temple (Prismatic Honeycomb always), village armorer (50%). Mining redstone ore and fishing are too rare for a quick check, so use `/loot` on the mod's table if it exists.
- [ ] **LOOT-33: Resource Backpacks.** Backpacks show up in structure chests. Zombies and creepers sometimes spawn wearing a leather or copper backpack.
- [ ] **LOOT-34: Lootr.** *(MP)* Two players open the same structure chest and each gets separate loot. The chest turns from gold to blue after opening. Breaking it needs sneaking. Check that mod-injected loot (LOOT-30 to LOOT-33) still appears in Lootr containers.

---

## 4. Mob and block behaviour

- [ ] **MOB-1: VillagerTweaks.** On Easy difficulty, a zombie converts the villager instead of killing it (vanilla Easy kills it). Curing takes about 3 minutes with a visible countdown. Villagers follow you while you hold an emerald block, emerald ore or deepslate emerald ore. Shift-right-clicking a villager with a Bundle bags it and keeps its trades; placing it restores the villager.
- [ ] **MOB-2: Trade Cycling.** `C` or the button re-rolls an untraded villager's offers. It does nothing after the first trade.
- [ ] **MOB-3: Overworld Piglins.** A piglin, brute and hoglin in the Overworld don't zombify after 15+ seconds. Giving one Weakness makes it convert.
- [ ] **MOB-4: Effective Gear (gold).** Iron armour with a full set of gold trims keeps piglins neutral. A partial set or untrimmed iron armour doesn't.
- [ ] **MOB-5: Better Spawner Control.** Find which 5 torch positions disable a spawner (the guide doesn't say). Try 5 torches on the ground around it, and 4 sides + top.
- [ ] **MOB-6: Superflat World No Slimes.** (World D) No slimes spawn.
- [ ] **MOB-7: Zombie Villagers From Spawner.** A zombie spawner sometimes produces zombie villagers. Record the rough rate.
- [ ] **MOB-8: Conduits Prevent Drowned.** No drowned spawn near a player with Conduit Power.
- [ ] **MOB-9: Followers Teleport Too.** A standing tamed wolf comes along with `/tp`, `/trigger home`, `/trigger spawn` and `/trigger back`. A sitting one stays. If the datapack triggers don't bring pets, adjust the guide wording.
- [ ] **MOB-10: Mooshroom Tweaks.** Naturally spawned mooshrooms in a new mushroom island are mixed red and brown.
- [ ] **MOB-11: Woodwalkers vs ReMorphed.** The guide says ReMorphed disables Walkers' own unlock method. Check whether Woodwalkers' `U` scan does anything, which key `G` triggers, and whether the two mods conflict. Check ReMorphed's `^` menu, unlock-by-kill, the 5-morph limit and the `R` ability.
- [ ] **MOB-12: Camel Nostrils.** A leashed adult camel that lags far behind can lose its snout. Golden Cactus regrows it. Sleeping in an upside-down bed turns day into night (the guide flags this to verify). A leashed fish that dies out of water becomes a Zombie Cod/Salmon/Tropical Fish. Golden Wheat Seeds fed to a chicken can give a Golden Egg.
- [ ] **MOB-13: Horse Breeding Fix / Horse Expert.** Breed two horses with known stats; each foal stat should be ≥ the better parent's. Check which slot the monocle goes in (head or trinket) and that it shows stats.
- [ ] **MOB-14: Effective Gear (other bonuses).** Spot-check a few full-set bonuses: iron trim (iron golems ignore you), ender pearl trim (endermen ignore your gaze), resin trim (creakings ignore you), netherite armour (fire resistance), amethyst (extra XP). Check that a four-piece set must share one trim material. Craft the new trim materials (blaze powder, echo shard, enchanted golden apple, ender pearl, honeycomb, nether star, prismarine shard, slimeball, turtle scute) and apply one at a smithing table.
- [ ] **MOB-15: Effective Gear (patterns, Preserving, traders).** Bolt (sprint + `Use Trim Ability`) dashes and Flow (airborne + the key) boosts, each with a cooldown. Preserving shears keep leaf colour after placing in another biome, and crafting a preserved leaf alone reverts it. A wandering trader sometimes sells a smithing template.
- [ ] **MOB-16: All Hallows Steve.** Craft a Pumpkin Carving Station (iron ingot, shears, crafting table, planks). Dye a pumpkin with 1-3 dyes and carve it with stencils (Blank Stencil = paper + pumpkin seed). Light it with a torch, then add candles with sneak + candle, and shear them out. Wear a decorated pumpkin (not a lit one): endermen shouldn't anger, uncarved faces block your view, and `Turn Worn Pumpkin` (unbound by default) rotates it. Check that the rare stencils show up in village, stronghold and other loot.

- [ ] **BLK-1: Fire Spread Tweaks.** In the new world the fire-tick gamerule is off (`/gamerule doFireTick`, or whatever 26.2 calls it). A fire on a wooden floor burns out in 10–20 s and doesn't destroy blocks. Fire on netherrack stays lit. Check an older world too.
- [ ] **BLK-2: Leaves Be Gone.** Leaves are gone within about a second of chopping a tree.
- [ ] **BLK-3: Double Doors.** Double doors open together, villagers use them, and sneaking opens one. Check whether fence gates and trapdoors also open in pairs; the guide says probably not.
- [ ] **BLK-4: KleeSlabs.** Breaking a double slab removes only the targeted half.
- [ ] **BLK-5: Smaller Nether Portals / Crying Portals / Better Portal Linking.** Light a 1x2 interior portal, a mixed obsidian/crying obsidian frame, and two pairs of portals with matching concrete corners. The matched pair links even when an unmatched portal is closer.
- [ ] **BLK-6: Deepslate Instamine.** Lava over water at Y ≤ 11 makes deepslate. Check the calcite generator variant. A netherite pickaxe with Efficiency V + Haste II instamines deepslate, cobblestone and end stone; a netherite axe instamines logs.
- [ ] **BLK-7: More Effective Tools.** A pickaxe breaks glass, glowstone and a redstone lamp faster than a hand, and glass still drops nothing without Silk Touch. An axe breaks beds and candles faster; a hoe, carpet; a shovel, cake. Note which of these vanilla 26.2 already tags.
- [ ] **BLK-8: beacon bases.** A pyramid of copper (and waxed oxidized copper), lapis, redstone, coal, quartz, smooth quartz and amethyst blocks activates a beacon.
- [ ] **BLK-9: Beacon & Conduit Tweaks.** Measure the effect range at pyramid level 1 and 4. A carpet on top hides the beam. Test what tinted glass does.
- [ ] **BLK-10: Anvil Restoration / Easy Anvils.** An iron ingot on a chipped anvil repairs it one stage; obsidian damages one stage and never breaks it. Items stay in the anvil after closing.
- [ ] **BLK-11: Softer Hay Bales / Minekea Pillows.** A 30-block fall onto a hay bale or a pillow does 0 damage.
- [ ] **BLK-12: Sneaky Tweaks.** No damage from berry bushes while sneaking. Sneaking on a campfire grants about 10 s of immunity with flame icons. Crouch-bridge across a 3-block gap looking straight ahead, and fall when looking down.
- [ ] **BLK-13: Visual Workbench.** Items stay in the grid and render on top. Breaking the table drops them. Check the upside-down crafting table too.
- [ ] **BLK-14: Fast Item Frames.** Frames are blocks: they pop off when the support breaks and move with pistons. Shift + empty hand makes a frame invisible. Honeycomb waxes it.
- [ ] **BLK-15: Minekea milk/honey.** A milk bucket on a block places milk. Check you can still *drink* milk by right-clicking air. Standing in milk clears effects. Honey slows you.
- [ ] **BLK-16: Rain Be Gone Ritual.** 4–8 cauldrons around a log, lit with flint and steel, stops the rain.
- [ ] **BLK-17: Houdini Block.** Find out how to switch modes (the guide doesn't say). Placing with it causes no neighbour updates; test with a sand block above air.

---

## 5. Farming

- [ ] **FARM-1: Right Click Harvest.** Right-click ripe wheat with an empty hand: it harvests and replants with no hunger cost. A diamond hoe harvests an area. Check sugar cane and cactus (the guide flags these), and cocoa and nether wart.
- [ ] **FARM-2: Replanting Crops vs Right Click Harvest.** Break ripe wheat with a hoe: it replants. Sneak-break: it doesn't. With both mods active, confirm a right-click harvest doesn't double-drop or double-replant.
- [ ] **FARM-3: Extended Bone Meal.** Bone meal works on nether wart, cactus, sugar cane and vines. Sneak + bone meal fully grows a crop.
- [ ] **FARM-4: Random Bone Meal Flowers.** Bone meal on grass in a plains biome gives a mixed flower set. None of the blacklisted flowers appear (golden dandelion, torchflower, wither rose, eyeblossoms, clipped eyeblossoms).
- [ ] **FARM-5: Kelp Fertilizer.** Kelp acts as bone meal by hand and from a dispenser.
- [ ] **FARM-6: Grass Seeds.** Seeds on dirt → grass block; seeds on grass → tall grass. Record whether a seed is consumed.
- [ ] **FARM-7: Ice Prevents Crop Growth.** Ice directly under farmland stops growth, and bone meal still works. Confirm the exact ice position.
- [ ] **FARM-8: Feather Falling and farmland.** No Feather Trample was removed. Jump on farmland with Feather Falling boots: Universal Enchants should stop trampling. Check Slow Falling too (vanilla tramples).
- [ ] **FARM-9: Keep My Soil Tilled.** Harvest a pumpkin; the soil under the stem stays farmland.
- [ ] **FARM-10: Crops Love Rain.** Hard to measure. At least confirm that crops grow visibly faster in `/weather rain` than in `/weather clear` over a few in-game days, and whether sky exposure matters.
- [ ] **FARM-11: Hoe Tweaks.** Sneak-till with a stone hoe gives 3x3; diamond 7x7; netherite 9x9. Right-click farmland with the off-hand empty untills it. Pumpkins break fast with a hoe.

---

## 6. Enchanting and XP

- [ ] **ENC-1: Remove Enchantment Incompatibility.** On one item at an anvil: Sharpness + Smite + Bane; all four Protections; Infinity + Mending; Silk Touch + Fortune; Riptide + Loyalty (check how the trident then behaves).
- [ ] **ENC-2: Tax Free Levels.** At level 50, an anvil job showing 10 levels should cost the same XP as at level 10. A 30-level table enchant should cost only the XP from 27 to 30. No "Too Expensive!" at 40+.
- [ ] **ENC-3: renaming cost.** Rename an item at an anvil. The guide says Easy Anvils makes it free and Tax Free Levels says 1 level. Record which one wins.
- [ ] **ENC-4: Easy Anvils.** Items stay in the anvil after closing. Formatting codes work in names. The prior-work penalty is lower than vanilla (compare repair costs on a tool combined 5 times).
- [ ] **ENC-5: Grind Enchantments.** Enchanted sword + book in a grindstone gives an enchanted book with all enchantments, and the sword comes back unenchanted. Enchanted book + book moves the first enchantment. Curses move too. Record the XP cost for a few cases, because the guide's cost formula is a guess.
- [ ] **ENC-6: Universal Enchants.** Looting on a bow, Power on a crossbow, Sharpness on a trident/mace, Protection on horse/wolf armour. Check whether Sharpness + Smite and Protection + Fire Protection stack (bundled datapacks), and diff Power damage against vanilla.
- [ ] **ENC-7: Infinity without arrows.** Bow Infinity Fix was removed. Infinity bow and crossbow with an empty inventory: confirm Universal Enchants lets them fire, and record what projectile.
- [ ] **ENC-8: Infinity Water Bucket.** Infinity on a water bucket gives an endless source. Infinity on an empty bucket voids liquid and can't milk cows. Test with a *stack* of water buckets: check the real stack size and whether an anvil enchants one bucket or the whole stack.
- [ ] **ENC-9: Better Than Mending / Bottle Your XP.** Sneak-right-click a damaged Mending tool: it repairs from XP. Record the XP per durability. Sneak-right-click an empty bottle: a Bottle o' Enchanting, −10 XP, half a heart of damage.
- [ ] **ENC-10: Enchanting Commands.** `/ec sharpness 15` as an op works. As a non-op *(MP)*, record the result. The tooltip shows "XV".
- [ ] **ENC-11: Gentle Touch / Shulker Stuff enchants.** Find out how Gentle Touch is obtained (table, villager or loot) and what it does. Do the same for Refill, Vacuum and Void on shulker boxes. Deep Storage is source-verified as unregistered, so confirm it doesn't show in `/enchant` tab-completion. Check that the Shulker Stuff config screen has only the plated-upgrade option.
- [ ] **ENC-12: Minekea bookshelves.** 15 non-oak Minekea bookshelves around a table give level-30 options. Minekea bookshelf slabs/stairs don't count.

---

## 7. Storage and inventory

- [ ] **INV-1: stack sizes.** Spot-check against [quality-of-life.md](guide/mods/quality-of-life.md#pack-wide-tweaks): oak sign 64, cherry sign 16 (not listed); white bed 64; water bucket and milk bucket (the guide contradicts itself; see notes); empty bucket 64; potion 16; mushroom stew 16; totem 16; shield 16; enchanted book 64; music disc "Relic" (not listed). Record actual values.
- [ ] **INV-2: stacked edge cases.** Drink one potion from a stack of 16 (bottle returned, stack decrements). Eat one stew from a stack (bowl handling). Use one milk bucket from a stack. Pop a totem from a stack of 16 with Inventory Totem (one consumed, not all). An anvil with a stack of 64 enchanted books (how many consumed). Brewing stand with stacked potions.
- [ ] **INV-3: filled shulker boxes stack.** Two shulker boxes with *different* contents shouldn't merge. Two identical full boxes may stack (config `stackEmptyShulkerBoxOnly=0`). Check Easy Shulker Boxes insert/extract on a stack of boxes, and placing a box from a stack. Look for duplication or loss.
- [ ] **INV-4: Resource Backpacks.** Craft leather through netherite and the End backpack. `B` opens the equipped one (see the key clash with Xaero). Place one as a block. Test whether a backpack fits inside a backpack (default unconfirmed).
- [ ] **INV-5: Simple Magnets.** A Basic Magnet pulls items within 5 blocks. The Advanced Magnet GUI filter works. A Demagnetization Coil blocks pulling. Find the magnet toggle key and whether a magnet works from a trinket slot.
- [ ] **INV-6: Easy Shulker Boxes / Shulker Box Tooltip.** Click items into a box in your inventory and pull them out. Check whether the two tooltip previews duplicate each other.
- [ ] **INV-7: TrashSlot / IPN.** `T` toggles the trash slot and Delete deletes. Find IPN's default sort key.
- [ ] **INV-8: Minekea storage.** A crate is 54 slots, and two adjacent crates merge. A glass jar holds 8 buckets of fluid or about 8 stacks and keeps contents when broken. A jar captures a bee. A shelf and an armoire place and take items.
- [ ] **INV-9: Hopper X-Treme.** Golden hopper throughput is 2x vanilla (time a stack). Copper ignores redstone lock. A hupper pushes up. A glazed hopper ejects. Find out how to insert a filter (the guide doesn't say) and that include/exclude works.
- [ ] **INV-10: Universal Shops.** *(MP)* Make a Trade Shop on a chest and set a price. Player 2 buys. Player 2 can't open the source chest inside player 1's claim.

---

## 8. Commands and datapack features

Run each as a **non-op** on the server *(MP)* unless marked operator.

- [ ] **CMD-1: Homes.** `sethome`, `home` (also cross-dimension), `homes`, `delhome`. A second `sethome set 2` is refused at the default limit of 1. `namehome` with a renamed name tag; also with a tag renamed through Name Tag Upgrade's editor instead of an anvil.
- [ ] **CMD-2: Spawn.** `/trigger spawn` from the Overworld, the Nether and the End. Record where you land compared with the real world spawn (`/setworldspawn` somewhere far from 0,0 first).
- [ ] **CMD-3: Back.** After `home`, `back` returns you. Repeating `back` toggles. Dying doesn't record a back point (default off).
- [ ] **CMD-4: Armor Statues.** Sign a book and quill titled `Statues` and confirm it turns into the command book. Pose a stand. Copy and paste. Lock. `/trigger if_invisible` on an item frame. With Fast Item Frames making frames blocks, the invisible-frame link may not work; record what happens.
- [ ] **CMD-5: Silence Mobs.** A "Silence me" name tag silences a cow and then removes the name. "Unsilence me" restores sound. Check the tag can be made with Name Tag Upgrade (no anvil), and whether Name Tag Upgrade gives the tag back.
- [ ] **CMD-6: Villager Workstation Highlights.** `/trigger vwh_findStation` near a villager: it glows, hearts appear over the workstation, and coordinates show in chat.
- [ ] **CMD-7: Wandering traders.** *(MP)* `/summon wandering_trader`: an announcement reaches players within 64 blocks. The trade list starts with 2–5 Hermit head trades and 15–21 Mini block trades (1 emerald + block → 8 heads). Check whether the Archaeology Tweaks sherd trade can also appear. A placed Hermit head keeps its skin when broken.
- [ ] **CMD-8: AFK Display.** *(MP)* Stand still: your name turns grey after 2.5–5 minutes. Moving removes it.
- [ ] **CMD-9: BACAP.** The tabs appear. Earn an easy advancement and check its reward item. `/function blazeandcave:config` works (op), and confirm whether it's refused for a non-op. Check whether the menu shows Torture Edition options.
- [ ] **CMD-10: stat scoreboards.** (op) `setdisplay sidebar ts_Deaths` and `hc_playTime` show values.
- [ ] **CMD-11: StackItUp / Lootr / WITS / Areas / Just Player Heads / Death Backup / graves.** `/stackitup show hand`; `/lootr custom` (op); `/wits` in a village; an Areas sign `[R:20]` + a name shows enter/leave messages and `/areas` lists it; `/jph head <name>`; `/deathbackup list` after a death (op); `/graves` (non-op). For each, record whether a non-op can run it.
- [ ] **CMD-12: Mineable Spawner config.** `/trigger mineablespawner.config` and `/trigger mineable_trial_spawner.config` as a non-op.

---

## 9. Multiplayer and death

- [ ] **MP-1: Universal Graves.** Die with items and XP. Check that a grave appears with all items and the compass points to it. Another player can't open it for 15 min. Note whether the totem, Just Player Heads and Death Backup all also trigger, and in what order. Read `config/universal-graves/config.json` and check the guide's defaults against it.
- [ ] **MP-2: Open Parties and Claims.** `'` opens the UI. Claim a chunk. Player 2 can't break blocks there until added to the party. Claims show on Xaero's maps. Record the server's claim limit.
- [ ] **MP-3: Simple Voice Chat.** Two clients hear each other with distance falloff. `V` opens the menu (it clashes with AutoRun). Record the UDP port in the server config.
- [ ] **MP-4: Hand Over Your Items.** Sneak-right-click player 2 with a stack: they receive it and both get chat messages.
- [ ] **MP-5: MiniHUD structure boxes.** These need Servux on the server. Confirm they don't show on the pack server, and decide whether to add Servux.
- [ ] **MP-6: AudioPlayer.** As a non-op, upload a short file by URL and apply it to a disc. Record which subcommands need op.

---

## 10. Client, HUD and keybinds

- [ ] **KEY-1: default key clashes.** In Options → Controls (red entries), confirm the documented clashes on `B`, `G`, `U` and `V`. Look for others the guide misses. Likely candidates: **`M`** (Xaero's World Map vs Litematica main menu), `R` (ReMorphed ability vs anything), `C` (Trade Cycling vs combos), `H` (MiniHUD), `Z`, `~` (Diggus Maximus). Record any clash and decide whether to ship a default `options.txt`.
- [ ] **KEY-2: unknown defaults.** Record the actual default for: Reacharound, WI Zoom (plus scroll-wheel zoom), Crawl (unbound; hold vs toggle), Simple Magnets toggle, Extreme Sound Muffler, Adaptive Tooltips scrolling, Amecs toggles, Ore Height Indicator, IPN sort, Jade "show details" / profile, REI recipe/usage keys (`R`/`U`).
- [ ] **KEY-3: Jade.** The numpad keys work. Keypad 3/4 (recipes/uses) are documented for JEI; check whether they open REI or do nothing.
- [ ] **HUD-1: tooltips.** Hover a damaged diamond sword. Check whether Durability Tooltip and EnhancedTooltips both add a durability line, and whether Adaptive Tooltips and EnhancedTooltips fight over layout. Check that Enchantment Descriptions appear on books, and whether they also appear on gear.
- [ ] **HUD-2: Fluid Void Fading.** Pour water off the world bottom (or the End void edge). Check whether it fades with Sodium active.
- [ ] **HUD-3: Boat Item View.** Hold an item in a moving boat. Check whether it shows by default.
- [ ] **HUD-4: Armored Elytra.** Wear a chestplate and an elytra together. Check whether both render, and whether any recipe, smithing or anvil combination exists.
- [ ] **HUD-5: Tweakeroo.** `X + C` opens it. Check whether "Disable all terrain fog" is greyed out with Sodium.
- [ ] **HUD-6: Litematica / WorldEdit CUI.** `M` opens Litematica's menu; see KEY-1. `//wand` selection outlines render.
- [ ] **HUD-7: Daily Dad.** Over a long session, note how often jokes appear and what triggers them.
- [ ] **HUD-8: Leaky.** Make a big pile of dropped items (e.g. break a large chest of cobble repeatedly). Record whether Leaky posts chat warnings and what they say.

---

## 11. Guide correctness pass

After the in-game tests:

- [ ] **DOC-1:** Replace every *(unverified)* in `docs/guide/` that a test above resolved, and remove the matching `<!-- maintainer: -->` comment. `grep -rn -i "unverified\|not in the facts\|confidence" docs/guide` should only list items still open.
- [ ] **DOC-2:** Remove pipeline wording that leaks into player text: "not in the facts", "Medium confidence (unverified details)", "(medium confidence)", "low confidence it is functional", "not confirmed in the notes".
- [ ] **DOC-3:** Fix the contradictions listed in the maintainer notes under "Guide inconsistencies". Bucket stack size, Woodwalkers unlock, the datapack loader name, the REI keys and the Jade keys all appear on more than one page, so fix them everywhere.
- [ ] **DOC-4:** Update the key-clash tables in [controls.md](guide/controls.md) and [getting-started.md](guide/getting-started.md) with the results of KEY-1.
