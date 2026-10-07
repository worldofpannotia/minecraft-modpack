---
icon: item:minecraft:crafting_table
---
# What's different from vanilla

Every change this pack makes to vanilla recipes, drops and behavior, collected from all mods and datapacks. Each row links to the page with the full details. Purely additive content, such as new blocks, is in the [items index](03-items-index.md) instead.

> [!TIP]
> In game, **REI** shows the recipes that are actually active. If a recipe here and REI disagree, trust REI.

Pack-wide config tweaks (stack sizes, right-click harvest, villager behavior and so on) are summarized on the [Quality of Life page](../04-mods/01-quality-of-life.md#pack-wide-tweaks).

## New recipes for vanilla items

| What | Change | Source |
|---|---|---|
| Black dye | Shapeless: 1 coal -> 1 black dye; 1 charcoal -> 1 black dye. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Blackstone | 2x2 with basalt on one diagonal and coal or charcoal on the other -> 4 blackstone. | [Craftable Blackstone (datapack)](../05-datapacks/vanillatweaks.md) |
| Bread | Shapeless: 3 wheat (any arrangement) -> 1 bread. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Brewing stand | blaze rod above 3 blackstone -> brewing stand. Redundant: vanilla already accepts blackstone via the stone_crafting_materials tag. | [VT Crafting Helper (Blackstone Redstone Recipes) (datapack)](../05-datapacks/vanillatweaks.md) |
| Bundle | 2 string (top corners) + 6 rabbit hide (S R S / R _ R / R R R) -> 1 bundle. The vanilla leather + string bundle recipe still works. | [Craftable Bundles (Rabbit Hide) (datapack)](../05-datapacks/vanillatweaks.md) |
| Candles (16 colors + plain) | 8 candles of other colors + dye (centre) -> 8 candles of the dye's color; 8 candles + ice -> 8 plain candles. | [Universal Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |
| Chest | Shapeless: upside-down chest -> chest | [Camel Nostrils](../04-mods/09-mobs-and-creatures.md#camel-nostrils) |
| Compass recipes | Added: SLS/LCL/SLS (S = any sapling, L = any log, C = compass) -> Nature's Compass. Shapeless repair: Nature's Compass + compass -> Nature's Compass. | [Nature's Compass](../04-mods/12-maps-and-navigation.md#natures-compass) |
| Concrete powder (16 colors) | 8 other-color concrete powder + dye -> 8 of the dye's color. | [Universal Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |
| Concrete powder from blasting | Blast Furnace: any of the 16 concrete colours -> the same-colour Concrete Powder, 0.1 XP (default blasting time). | [World of Pannotia: Core Pack Tweaks (datapack)](../05-datapacks/world-of-pannotia.md) |
| Coral and coral fans | Shapeless 1:1 conversion between each live coral and its coral fan (brain, bubble, fire, horn, tube), in both directions: 10 recipes. | [World of Pannotia: Core Pack Tweaks (datapack)](../05-datapacks/world-of-pannotia.md) |
| Coral blocks (brain, bubble, fire, horn, tube) | 2x2 of the matching live coral and/or coral fan (any mix of the two, via an item tag) -> 1 coral block of that type. Dead coral is not included. | [Craftable Coral Blocks (2x2) (datapack)](../05-datapacks/vanillatweaks.md) |
| Crafting Table | Shapeless: upside-down crafting table -> crafting table | [Camel Nostrils](../04-mods/09-mobs-and-creatures.md#camel-nostrils) |
| Creaking heart | Shaped: Artificial Creaking Heart surrounded by 8 resin clumps -> creaking heart. | [Artificial Heart](../04-mods/04-building-and-decoration.md#artificial-heart) |
| Damaged anvil | Can be repaired with iron blocks. | [Easy Anvils](../04-mods/07-enchanting-and-magic.md#easy-anvils) |
| Dispenser | 7 blackstone + bow + redstone (### / #B# / #R#) -> dispenser. Vanilla only accepts cobblestone here. | [VT Crafting Helper (Blackstone Redstone Recipes) (datapack)](../05-datapacks/vanillatweaks.md) |
| Dispenser | Shapeless: dropper + bow -> dispenser. | [Dropper to Dispenser (datapack)](../05-datapacks/vanillatweaks.md) |
| Dispenser | Shaped: dropper in the centre, sticks in a column on its left and 3 string in a column on its right (' S/' / 'S#/' / ' S/' with S = stick, / = string, # = dropper) -> dispenser. This is the bow's component layout around a dropper. | [Dropper to Dispenser (datapack)](../05-datapacks/vanillatweaks.md) |
| Dropper | 7 blackstone + redstone (### / # # / #R#) -> dropper. | [VT Crafting Helper (Blackstone Redstone Recipes) (datapack)](../05-datapacks/vanillatweaks.md) |
| Eggs, dyes, wool and storable items | Uncrafting recipes: Egg Crate to 9 eggs, compressed dye block to 9 dyes, pillow to 4 wool, compressed storage blocks to 9 items, compressed building blocks to 9 of the lower tier or base block. | [Minekea](../04-mods/04-building-and-decoration.md#minekea) |
| End Rod | Can be crafted from an End(less) Rod (shapeless). | [Minekea](../04-mods/04-building-and-decoration.md#minekea) |
| Faster copper oxidation (crafting) | Shaped 3x3: 7 copper-type blocks in every slot except top-middle and centre, Gunpowder top-middle, Water Bucket centre -> 7 of the next oxidation stage. Copper Block -> 7 Exposed Copper; Exposed Copper -> 7 Weathered Copper; Weathered Copper -> 7 Oxidized Copper. Pattern "#G#","#W#","###" (7 input blocks). | [World of Pannotia: Core Pack Tweaks (datapack)](../05-datapacks/world-of-pannotia.md) |
| Glazed terracotta (16 colors) | 8 other-color glazed terracotta + dye -> 8 of the dye's color. | [Universal Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |
| Gravel | 2x2 flint -> 1 gravel. | [Craftable Gravel (Flint) (datapack)](../05-datapacks/vanillatweaks.md) |
| Gray and orange dye | Shapeless: clipped eyeblossom -> gray dye; clipped open eyeblossom -> orange dye. | [Artificial Heart](../04-mods/04-building-and-decoration.md#artificial-heart) |
| Hopper | Shapeless: 4 hoppers -> Multi-Hopper, and Multi-Hopper -> 4 hoppers. The vanilla hopper itself is unchanged. | [Hopper X-Treme](../04-mods/14-redstone-and-automation.md#hopper-x-treme) |
| Ice | Shapeless: 1 packed ice -> 9 ice. | [Uncraftable Ice (Unpack Ice) (datapack)](../05-datapacks/vanillatweaks.md) |
| Item frame and glow item frame | Item frame (or glow item frame) + any dye (crafting_dye recipe) -> dyed item frame / dyed glow item frame. | [Fast Item Frames](../04-mods/04-building-and-decoration.md#fast-item-frames) |
| Leather | Furnace smelting: rotten flesh -> leather (1.0 XP, 200 ticks). Furnace only. | [Rotten Flesh to Leather (datapack)](../05-datapacks/vanillatweaks.md) |
| Lever | stick above blackstone -> lever. | [VT Crafting Helper (Blackstone Redstone Recipes) (datapack)](../05-datapacks/vanillatweaks.md) |
| More dye recipes | Brown Mushroom -> 1 Brown Dye; Twisting Vines -> 1 Cyan Dye; Big Dripleaf -> 1 Green Dye; Carrot -> 1 Orange Dye; Yellow Dye + Blue Dye -> 2 Green Dye (all shapeless). | [World of Pannotia: Core Pack Tweaks (datapack)](../05-datapacks/world-of-pannotia.md) |
| Nether wart | Shapeless: 1 nether wart block -> 9 nether wart. | [Uncraftable Nether Wart Block (datapack)](../05-datapacks/vanillatweaks.md) |
| Observer | 6 blackstone + 2 redstone + 1 quartz (### / RRQ / ###) -> observer. | [VT Crafting Helper (Blackstone Redstone Recipes) (datapack)](../05-datapacks/vanillatweaks.md) |
| Packed ice | Shapeless: 1 blue ice -> 9 packed ice. | [Uncraftable Ice (Unpack Ice) (datapack)](../05-datapacks/vanillatweaks.md) |
| Paper | Shapeless: 3 sugar cane (any arrangement) -> 3 paper. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Piston | 3 planks (any) across the top, then blackstone / iron ingot / blackstone, then blackstone / redstone / blackstone (### / BiB / BRB) -> piston (4 blackstone total). | [VT Crafting Helper (Blackstone Redstone Recipes) (datapack)](../05-datapacks/vanillatweaks.md) |
| Polished blackstone | Same 2x2 diagonal layout with polished basalt + coal or charcoal -> 4 polished blackstone. | [Craftable Blackstone (datapack)](../05-datapacks/vanillatweaks.md) |
| Powered rail | Extra recipe: 6 copper ingots + 1 stick + 1 redstone in the vanilla powered-rail layout (X X / X#X / XRX, X = copper ingot, # = stick, R = redstone) -> 6 powered rails. The vanilla gold-ingot recipe still works. | [Copper Powered Rails (datapack)](../05-datapacks/vanillatweaks.md) |
| Red sand | 8 sand + 1 red dye (shapeless) -> 8 red sand. | [Sandstone Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |
| Red sandstone | 2 sandstone + 1 red dye (shapeless) -> 2 red sandstone. | [Sandstone Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |
| Shulker box | Shapeless: 2 shulker shells + 1 chest (any arrangement) -> 1 shulker box. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Slabs -> block (60 types) | 2 identical slabs side by side (shaped, one row of two) -> 1 full block. Covers wood planks (incl. bamboo and bamboo mosaic), stone, cobblestone and mossy variants, stone/brick types, deepslate, tuff, blackstone, prismarine, purpur, quartz, sandstone and red sandstone (incl. cut and smooth), nether bricks, mud bricks, end stone bricks, and every cut copper stage including waxed. | [Back to Blocks (Slabs & Stairs to Block) (datapack)](../05-datapacks/vanillatweaks.md) |
| Slabs (47 non-wood types incl. waxed copper slabs, smooth stone/quartz/sandstone slabs, bamboo mosaic) | New shapeless recipe: 1 block -> 2 slabs (vanilla gives 6 slabs from 3 blocks in a row, which is still available). | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Small dripleaf duplication | Shapeless: Small Dripleaf + Bone Meal -> 1 Small Dripleaf (effectively duplicates a small dripleaf for one bone meal). | [World of Pannotia: Core Pack Tweaks (datapack)](../05-datapacks/world-of-pannotia.md) |
| Smooth Basalt | Smooth basalt can be stonecut into Basalt Bricks and Chiseled Basalt Bricks. | [Minekea](../04-mods/04-building-and-decoration.md#minekea) |
| Smooth red sandstone | 2 smooth sandstone + 1 red dye (shapeless) -> 2 smooth red sandstone. | [Sandstone Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |
| Smooth stone | 2x2 smooth stone slabs -> 2 smooth stone (extra, in addition to the 2-slabs recipe from Back to Blocks). | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Sponge | 2 sponges -> 2 sponj (shapeless crafting). Vanilla sponge behavior is not otherwise changed. | [Sponj](../04-mods/04-building-and-decoration.md#sponj) |
| Stained glass (all 16 colors) | Furnace smelting: \<color\> concrete powder -> \<color\> stained glass (0.1 XP, 200 ticks). Furnace only; no blasting or smoking variants in the data. | [Powder to Glass (datapack)](../05-datapacks/vanillatweaks.md) |
| Stained glass and glass panes (16 colors each) | 8 other-color stained glass (or panes) + dye -> 8 of the dye's color; with ice instead -> 8 plain glass (or glass panes). | [Universal Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |
| Stairs -> block (58 types) | 4 identical stairs (shapeless) -> 3 full blocks of the same type. Same families as the slab list, minus cut sandstone, cut red sandstone and smooth stone, which have no stairs. | [Back to Blocks (Slabs & Stairs to Block) (datapack)](../05-datapacks/vanillatweaks.md) |
| Stonecutter | 204 new stonecutting recipes: 1 of the listed block -> 8 Mini player heads. | [World of Pannotia: Mini Blocks (datapack)](../05-datapacks/world-of-pannotia.md) |
| String | Shapeless: 1 wool block of any color -> 4 string. | [Unpackable Wool (Wool to String) (datapack)](../05-datapacks/vanillatweaks.md) |
| Terracotta (16 colors + plain) | 8 other-color terracotta + dye -> 8 of the dye's color; with ice -> 8 plain terracotta. | [Universal Dyeing (datapack)](../05-datapacks/vanillatweaks.md) |

## Changed vanilla recipes

| What | Change | Source |
|---|---|---|
| Bricks | 2x2 bricks -> 4 brick blocks instead of 1. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Purpur stairs | Ingredient now only purpur block; vanilla also accepted purpur pillar. This is a minor regression from the vanilla recipe (8 stairs per craft otherwise). | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Stairs (about 57 types: all wood planks incl. bamboo and bamboo mosaic, stone, cobblestone, mossy, stone/deepslate/tuff/blackstone variants, bricks of all kinds, prismarine, purpur, quartz, smooth quartz, sandstone and red sandstone variants, all cut copper stages incl. waxed) | Same shaped recipe as vanilla (6 blocks in the stair shape) but now yields 8 stairs instead of 4. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Stone brick stairs | Now also accept chiseled and cracked stone bricks (vanilla: only plain stone bricks), in addition to the 8-per-craft change. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Wood and hyphae blocks (oak, spruce, birch, jungle, acacia, dark oak, mangrove, cherry, pale oak wood; crimson and warped hyphae; and their stripped versions) | Same 2x2 log/stem recipe but yields 4 instead of 3. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Wooden trapdoors (oak, spruce, birch, jungle, acacia, dark oak, mangrove, cherry, pale oak, bamboo, crimson, warped) | Same 2x3 planks layout (6 planks) but yields 12 trapdoors instead of 2. Iron trapdoor is not changed; copper trapdoor is only regrouped (still 2x2 copper ingots -> 1). | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |

## Loot and drops

| What | Change | Source |
|---|---|---|
| Ancient Debris | Mining it without Silk Touch drops Netherite Scrap directly (Fortune applies, ore-drops formula; explosion decay applies) instead of the debris block. With Silk Touch it drops Ancient Debris as before. A diamond or better pickaxe is still needed. | [World of Pannotia: Vanilla Loot Overrides (datapack)](../05-datapacks/world-of-pannotia.md) |
| Brown and Red Mushroom Blocks | Giant mushroom blocks drop their mushroom more often: count roll is uniform -2..2 (vanilla -6..2), roughly 40% chance of 1-2 mushrooms instead of roughly 22%, and Fortune now increases the amount. Silk Touch still drops the block. | [World of Pannotia: Vanilla Loot Overrides (datapack)](../05-datapacks/world-of-pannotia.md) |
| Budding Amethyst | Drops itself when mined with Silk Touch (vanilla never drops it). Without Silk Touch it drops nothing, as in vanilla. | [Silkier Touch](../04-mods/08-tools-weapons-and-armor.md#silkier-touch) |
| Camel Husk loot | Extra 0-3 Sand (+0-2 per Looting level). | [World of Pannotia: Husks Drop Sand (datapack)](../05-datapacks/world-of-pannotia.md) |
| Chorus plant breaking | All fruit from the broken plant drops at the base position. | [Chorus Fruit Drops Nearby](../04-mods/10-loot-and-drops.md#chorus-fruit-drops-nearby) |
| Dragon egg, cake, farmland, tall grass, snow layers, vines | Silk Touch picks these up as items (the dragon egg does not teleport). | [Silkier Touch](../04-mods/08-tools-weapons-and-armor.md#silkier-touch) |
| Ender Dragon loot table | Vanilla ender dragon has an empty loot table (XP and the egg on the exit portal are handled by game code). The pack adds a guaranteed Elytra, Dragon Egg and Dragon Head item drop to every kill, including repeat kills. | [World of Pannotia: Dragon Drops (datapack)](../05-datapacks/world-of-pannotia.md) |
| Ender Dragon, Husk, Parched, Camel Husk, Shulker | Wrapper tables add the dragon_drops, husks_drop_sand and looting_shulker_shells extras. | [World of Pannotia: Vanilla Loot Overrides (datapack)](../05-datapacks/world-of-pannotia.md) |
| Husk loot | Extra 0-2 Sand (+0-1 per Looting level). | [World of Pannotia: Husks Drop Sand (datapack)](../05-datapacks/world-of-pannotia.md) |
| Jungle Leaves | Sapling chance doubled: 5% / 6.25% / 8.33% / 10% at Fortune 0/I/II/III (vanilla 2.5% / 2.78% / 3.13% / 4.17%). Stick drops unchanged. | [World of Pannotia: Vanilla Loot Overrides (datapack)](../05-datapacks/world-of-pannotia.md) |
| Loot tables | Stronghold library and woodland mansion chests can contain these books. | [The Athenaeum](../04-mods/10-loot-and-drops.md#the-athenaeum) |
| minecraft:blocks/player_head loot table | Overridden so a broken player head drops itself and keeps its stored components (name and skin). | [Wandering Trades (Hermit Edition) (datapack)](../05-datapacks/wandering-trades-hermit-edition.md) |
| Mob heads on kill | Most mobs gain extra player-head drops (see World of Pannotia: More Mob Heads). Zombie, Skeleton, Creeper and Piglin get vanilla-style heads from the pannotia module instead, and Tropical Fish gets named variant heads. | [World of Pannotia: Vanilla Loot Overrides (datapack)](../05-datapacks/world-of-pannotia.md) |
| Mob loot tables | Roughly 90 mobs gain an additional player-head pool (see the per-mob list). Vanilla drops are unchanged. | [World of Pannotia: More Mob Heads (datapack)](../05-datapacks/world-of-pannotia.md) |
| Parched loot | Extra 0-2 Sand (+0-1 per Looting level). | [World of Pannotia: Husks Drop Sand (datapack)](../05-datapacks/world-of-pannotia.md) |
| Player Head (placed block) | Breaking a placed player head keeps all of its data components (name, lore, rarity, etc.), not only the skin, custom name and note-block sound. This keeps custom heads (mob heads, Mini blocks) intact when picked up. | [World of Pannotia: Vanilla Loot Overrides (datapack)](../05-datapacks/world-of-pannotia.md) |
| Player head block loot table | Overrides minecraft:blocks/player_head to copy profile, note block sound, custom name, item name, lore and custom data from the block entity, so broken heads keep their data. | [Miniblock Merchants](../04-mods/06-villagers-and-trading.md#miniblock-merchants) |
| Shulker box loot tables (all colours) | Dropped box keeps enchantments plus the mod's dyed_color and plated data in addition to vanilla components. | [Shulker Stuff](../04-mods/03-storage-and-inventory.md#shulker-stuff) |
| Shulker loot | Guaranteed 2 Shulker Shells (+0-2 per Looting level) added to the vanilla 50%-chance single shell. | [World of Pannotia: Looting Shulker Shells (datapack)](../05-datapacks/world-of-pannotia.md) |
| Spawners | Mine a spawner with a Silk Touch tool and it drops as an item that keeps its mob. Without Silk Touch it drops nothing, as in vanilla. | [Silkier Touch](../04-mods/08-tools-weapons-and-armor.md#silkier-touch) |
| Zombie, Skeleton, Creeper and Piglin heads | Killed by player: Zombie Head 2.5% (+1% per Looting level), Skeleton Skull 2.5% (+1%), Creeper Head 2.5% (+1%, uncharged creepers only), Piglin Head 4% (+1%). | [World of Pannotia: Core Pack Tweaks (datapack)](../05-datapacks/world-of-pannotia.md) |

## Mob behavior

| What | Change | Source |
|---|---|---|
| Allay | Sneak-right-clicking an allay while holding a glass jar does not give or take items, so the jar can capture it. | [Minekea](../04-mods/04-building-and-decoration.md#minekea) |
| Drowned spawning | Disabled around players with an active conduit effect (config preventDrownedInRange, default 400, max 400). | [Conduits Prevent Drowned](../04-mods/09-mobs-and-creatures.md#conduits-prevent-drowned) |
| Horse-family breeding | Each baby stat is at least as good as the better parent's stat. | [Horse Breeding Fix](../04-mods/05-farming-food-and-animals.md#horse-breeding-fix) |
| Mooshroom spawning | Naturally spawned mooshrooms can be brown as well as red. Config option becomeBrownChance (default 0.5) is the chance that a red mooshroom becomes brown. | [Mooshroom Tweaks](../04-mods/09-mobs-and-creatures.md#mooshroom-tweaks) |
| Pets and command teleports | Vanilla leaves pets behind when you teleport; now non-sitting tamed pets come with you. | [Followers Teleport Too](../04-mods/09-mobs-and-creatures.md#followers-teleport-too) |
| Piglin aggression | A full set of armor trimmed with the gold material makes piglins neutral, like gold armor; normal gold armor still works. | [Effective Gear](../04-mods/08-tools-weapons-and-armor.md#effective-gear) |
| Piglin/Hoglin zombification | Piglins, Piglin Brutes and Hoglins are not converted to their zombified form in the Overworld unless affected by Weakness, which makes them shake and convert as normal. | [Overworld Piglins](../04-mods/09-mobs-and-creatures.md#overworld-piglins) |
| Slime spawning | Slimes no longer spawn in superflat worlds. | [Superflat World No Slimes](../04-mods/09-mobs-and-creatures.md#superflat-world-no-slimes) |
| Vanilla pumpkins | A torch on a carved pumpkin makes a jack o'lantern; shears on a jack o'lantern take the torch back. | [All Hallows Steve](../04-mods/04-building-and-decoration.md#all-hallows-steve) |
| Villager following | Villagers follow players holding an emerald block, emerald ore or deepslate emerald ore. | [VillagerTweaks](../04-mods/06-villagers-and-trading.md#villagertweaks) |
| Zombie spawners | Spawners set to zombie can also spawn the zombie villager variant. | [Zombie Villagers From Spawner](../04-mods/09-mobs-and-creatures.md#zombie-villagers-from-spawner) |
| Zombie villager conversion | Zombies always convert villagers rather than killing them, and cured zombie villagers take a fixed 3600 ticks (3 minutes) with a displayed countdown. | [VillagerTweaks](../04-mods/06-villagers-and-trading.md#villagertweaks) |
| Zombie villagers | Cure time is fixed at 3 minutes and zombies always convert villagers. | [Pack Configuration Overrides](../04-mods/01-quality-of-life.md#pack-wide-tweaks) |

## Block behavior

| What | Change | Source |
|---|---|---|
| #minecraft:mineable/axe | Adds all beds, all candles, cactus and honeycomb block. | [More Effective Tools (datapack)](../05-datapacks/more-effective-tools.md) |
| #minecraft:mineable/hoe | Adds wool carpets. | [More Effective Tools (datapack)](../05-datapacks/more-effective-tools.md) |
| #minecraft:mineable/pickaxe | Adds glass, glass panes, tinted glass and all stained glass and stained glass panes; beacon; glowstone; sea lantern; redstone lamp; lever; frosted ice; ochre, verdant and pearlescent froglight; creeper, dragon, piglin, zombie, player, skeleton and wither skeleton heads/skulls (floor and wall). | [More Effective Tools (datapack)](../05-datapacks/more-effective-tools.md) |
| #minecraft:mineable/shovel | Adds cake and candle cakes. | [More Effective Tools (datapack)](../05-datapacks/more-effective-tools.md) |
| Banner pattern layers | Limit raised from 6 to 12 by default (config range 1-32 in config/bannertweaks.json5). | [Banner Tweaks](../04-mods/04-building-and-decoration.md#banner-tweaks) |
| Beacon and conduit range | Ranges are configurable (base range, per level, per block). | [Beacon & Conduit Tweaks](../04-mods/08-tools-weapons-and-armor.md#beacon--conduit-tweaks) |
| Beacon base blocks | Beacons can also be powered by Copper Block (all four oxidation stages and the waxed versions), Lapis Lazuli Block, Redstone Block, Coal Block, Quartz Block, Smooth Quartz and Amethyst Block, in addition to vanilla netherite, emerald, diamond, gold and iron blocks. | [World of Pannotia: Vanilla Loot Overrides (datapack)](../05-datapacks/world-of-pannotia.md) |
| Bone meal | Works on nether wart, cactus, sugar cane and vines; sneak-use fully grows crops. | [Extended Bone Meal](../04-mods/05-farming-food-and-animals.md#extended-bone-meal) |
| Bone meal on grass | Spawns random flowers from all types in any biome, except the pack blacklist (golden dandelion, torchflower, wither rose, eyeblossoms). | [Random Bone Meal Flowers](../04-mods/05-farming-food-and-animals.md#random-bone-meal-flowers) |
| Bone meal on grass | Produces a random mix of most flowers in any biome. | [Pack Configuration Overrides](../04-mods/01-quality-of-life.md#pack-wide-tweaks) |
| Campfire damage | Crouching on a lit campfire or soul campfire gives temporary immunity. | [Sneaky Tweaks](../04-mods/01-quality-of-life.md#sneaky-tweaks) |
| Crop growth | Crops with ice below never grow naturally; bone meal still works. Works for modded crops. | [Ice Prevents Crop Growth](../04-mods/05-farming-food-and-animals.md#ice-prevents-crop-growth) |
| Deepslate, cobblestone, end stone, logs | Instantly mined with a netherite pickaxe/axe at Efficiency V + Haste II. | [Deepslate Instamine](../04-mods/08-tools-weapons-and-armor.md#deepslate-instamine) |
| Dispenser | Dispensers can use additional items per the Dispenser Configurator's default datapack (see the mod page for the list). | [Dispenser Configurator](../04-mods/14-redstone-and-automation.md#dispenser-configurator) |
| Double slabs | Mining a double slab breaks only the half under the crosshair and leaves a single slab. | [KleeSlabs](../04-mods/01-quality-of-life.md#kleeslabs) |
| Farmland trampling | Boots with Feather Falling stop farmland trampling (Universal Enchants improves the enchantment this way). | [Universal Enchants](../04-mods/07-enchanting-and-magic.md#universal-enchants) |
| Fire | Sets doFireTick to false on first world load so fire does not spread; fires burn out after about 10-20 s (default 300 ticks +/- 100 random). Trees and other flammables may burn briefly but are not destroyed. Fire above netherrack, magma or soul sand stays lit. | [Fire Spread Tweaks](../04-mods/01-quality-of-life.md#fire-spread-tweaks) |
| Harvesting crops | Right-click harvests and replants crops without a hoe or hunger cost. | [Pack Configuration Overrides](../04-mods/01-quality-of-life.md#pack-wide-tweaks) |
| Hay bale fall damage | Hay bales cancel all fall damage (vanilla only reduces it). | [Softer Hay Bales](../04-mods/13-transport-and-movement.md#softer-hay-bales) |
| Hoes | Larger till area by tier, un-tilling, and faster melon/pumpkin breaking. | [Hoe Tweaks](../04-mods/08-tools-weapons-and-armor.md#hoe-tweaks) |
| Item frames | Placed frames become blocks rather than entities. | [Fast Item Frames](../04-mods/04-building-and-decoration.md#fast-item-frames) |
| Lava over water below Y 11 | Generates deepslate instead of cobblestone. | [Pack Configuration Overrides](../04-mods/01-quality-of-life.md#pack-wide-tweaks) |
| Leaf decay | Leaves with no log support decay much faster than vanilla; timing and whether leaves of different types connect are configurable. | [Leaves Be Gone](../04-mods/01-quality-of-life.md#leaves-be-gone) |
| Melon/pumpkin farms | After a stem-grown block is harvested, if farmland is around it, the dirt block below is automatically tilled. | [Keep My Soil Tilled](../04-mods/05-farming-food-and-animals.md#keep-my-soil-tilled) |
| Mining cobblestone, deepslate, end stone and logs | Netherite pickaxes and axes mine them instantly with Efficiency V and Haste II. | [Pack Configuration Overrides](../04-mods/01-quality-of-life.md#pack-wide-tweaks) |
| Mob spawners | Disabled while surrounded by 5 torches of any type. | [Better Spawner Control](../04-mods/09-mobs-and-creatures.md#better-spawner-control) |
| Nether portal frame | Crying obsidian is accepted as a frame block alongside obsidian; mixed frames work. | [Crying Portals](../04-mods/11-world-generation-and-exploration.md#crying-portals) |
| Nether portal linking | Frame corner blocks influence which destination portal is used. | [Better Portal Linking](../04-mods/13-transport-and-movement.md#better-portal-linking) |
| Nether portal minimum size | Portal frames with interior 1x2, 1x3 or 2x2 (width x height) can be lit and used; corners are optional. | [Smaller Nether Portals](../04-mods/13-transport-and-movement.md#smaller-nether-portals) |
| Placed anvils | Right-click with an iron ingot repairs one stage (consumes ingot); right-click with obsidian damages one stage (not consumed). | [Anvil Restoration](../04-mods/04-building-and-decoration.md#anvil-restoration) |
| Right-clicking crops | Harvests the crop and replants instead of doing nothing. | [Right Click Harvest](../04-mods/05-farming-food-and-animals.md#right-click-harvest) |
| Scaffolding breaking | Chained scaffolding blocks drop at the position of the broken block. | [Scaffolding Drops Nearby](../04-mods/01-quality-of-life.md#scaffolding-drops-nearby) |
| Sweet berry bush | No damage when the player is crouching. | [Sneaky Tweaks](../04-mods/01-quality-of-life.md#sneaky-tweaks) |
| Wheat seeds | Right-clicking a dirt block with wheat seeds converts it to a grass block. | [Grass Seeds](../04-mods/05-farming-food-and-animals.md#grass-seeds) |
| Wheat seeds | Right-clicking a grass block with seeds places (tall) grass on it. | [Grass Seeds](../04-mods/05-farming-food-and-animals.md#grass-seeds) |

## World generation

| What | Change | Source |
|---|---|---|
| Archaeology | Many more brushable suspicious block types generate in the world. | [Archaeology Tweaks](../04-mods/11-world-generation-and-exploration.md#archaeology-tweaks) |
| Bedrock generation | Overworld/Nether floor collapsed to a flat layer (default thickness 1); Nether roof flat or removable; bedrock can be swapped for another block per dimension. The End is unchanged. | [Flat Bedrock](../04-mods/11-world-generation-and-exploration.md#flat-bedrock) |
| Cobblestone generators below Y=11 | Produce deepslate variants and calcite instead of the usual stone/basalt results. | [Deepslate Instamine](../04-mods/08-tools-weapons-and-armor.md#deepslate-instamine) |

## Enchanting

| What | Change | Source |
|---|---|---|
| Anvil | No Too Expensive limit; renaming costs 1 level. | [Tax Free Levels](../04-mods/07-enchanting-and-magic.md#tax-free-levels) |
| Anvil costs | Reduced prior-work penalty, cheaper enchanted book application, fewer "too expensive" cases, free renaming. | [Easy Anvils](../04-mods/07-enchanting-and-magic.md#easy-anvils) |
| Channeling, Frost Walker and Power enchantments | The mod overrides the minecraft:channeling, frost_walker and power enchantment definitions (Power shown as +0.5 damage base, +0.5 per level above first, max level 5). Exact differences from vanilla were not diffed. | [Universal Enchants](../04-mods/07-enchanting-and-magic.md#universal-enchants) |
| Enchanting table | Minekea bookshelf variants count as enchantment power providers. | [Minekea](../04-mods/04-building-and-decoration.md#minekea) |
| Enchanting table | Level costs are charged as XP points that do not rise with player level. | [Tax Free Levels](../04-mods/07-enchanting-and-magic.md#tax-free-levels) |
| Enchantment exclusivity | Exclusive sets are lifted: Protection types together, Sharpness/Smite/Bane of Arthropods, Infinity with Mending, Silk Touch with Fortune, Depth Strider with Frost Walker, Multishot with Piercing, Riptide with Loyalty/Channeling. | [Remove Enchantment Incompatibility](../04-mods/07-enchanting-and-magic.md#remove-enchantment-incompatibility) |
| Grindstone | Grindstone gains the disenchant-to-book and move-enchantment operations (costs XP levels). | [Grind Enchantments](../04-mods/07-enchanting-and-magic.md#grind-enchantments) |
| Grindstone | Can move enchantments to a book, or between books, for an XP cost. | [Pack Configuration Overrides](../04-mods/01-quality-of-life.md#pack-wide-tweaks) |
| Infinity enchantment | Now applicable to water buckets and empty buckets (config options extend this to lava, milk and powdered snow buckets). | [Infinity Water Bucket](../04-mods/07-enchanting-and-magic.md#infinity-water-bucket) |
| Infinity enchantment | Bows and crossbows enchanted with Infinity no longer need a spare arrow in the inventory, and crossbows can take Infinity. | [Universal Enchants](../04-mods/07-enchanting-and-magic.md#universal-enchants) |

## Villagers and trading

| What | Change | Source |
|---|---|---|
| Wandering trader | 20% chance of offering a random pottery sherd for 8 emeralds and a brick. | [Archaeology Tweaks](../04-mods/11-world-generation-and-exploration.md#archaeology-tweaks) |
| Wandering trader offers | Each wandering trader gets 2 to 5 random hermit-head trades and 15 to 21 random mini-block trades (no duplicates), added to the front of its normal offers. The trader is frozen by a slowness effect while the trades are generated. | [Wandering Trades (Hermit Edition) (datapack)](../05-datapacks/wandering-trades-hermit-edition.md) |

## Other changes

| What | Change | Source |
|---|---|---|
| Anvil naming | Formatting codes allowed in item names. | [Easy Anvils](../04-mods/07-enchanting-and-magic.md#easy-anvils) |
| Axolotl bucket item texture | Texture reflects the axolotl variant and age (client-side visual only). | [Axolotl Bucket Fix](../04-mods/16-cosmetic-visual-and-audio.md#axolotl-bucket-fix) |
| Item entity merging | Dropped items can merge across a configurable radius rather than the vanilla 0.5 blocks. | [Get It Together, Drops!](04-technical.md#get-it-together-drops) |
| Item stack sizes | Many items that stack to 1 or 16 in vanilla now stack to 16 or 64 as listed in mechanics. | [StackItUp](../04-mods/03-storage-and-inventory.md#stackitup) |
| Item stack sizes | Beds, banners, signs, boats, minecarts, enchanted books, saddles, ender pearls, eggs, snowballs, empty buckets, cake, armor stands, books, honey bottles and most music discs stack to 64; potions, stews, shields, totems, filled buckets and shulker boxes stack to 16. | [Pack Configuration Overrides](../04-mods/01-quality-of-life.md#pack-wide-tweaks) |
| Kelp item | Can be used as bone meal on crops and plants, by hand or via dispenser. | [Kelp Fertilizer](../04-mods/05-farming-food-and-animals.md#kelp-fertilizer) |
| Milk bucket | Right-clicking a block with a milk bucket (not sneaking) now places a milk fluid source like a water bucket. Milk can also fill cauldrons. | [Minekea](../04-mods/04-building-and-decoration.md#minekea) |
| Name tags | Naming no longer needs an anvil or XP; shears remove names and return the tag; old tags are returned on rename; named mobs may drop their tag on death. | [Name Tag Upgrade](../04-mods/01-quality-of-life.md#name-tag-upgrade) |
| Packed ice and copper trapdoor | Overridden with a recipe group added but identical ingredients/output; no gameplay change. | [VanillaTweaks Crafting Tweaks (vanilla recipe overrides) (datapack)](../05-datapacks/vanillatweaks.md) |
| Quartz stairs ingredient | Tag more_stairs:quartz (quartz block, quartz pillar, chiseled quartz block) is the ingredient set for the overridden quartz stairs recipe; vanilla already accepted the same three blocks. | [More Stairs (quartz tag) (datapack)](../05-datapacks/vanillatweaks.md) |
| Sneaking at ledges | Crouch bridging lets a sneaking player cross gaps of up to 3 blocks without falling. | [Sneaky Tweaks](../04-mods/01-quality-of-life.md#sneaky-tweaks) |
| Totem of Undying | Triggers when carried anywhere in the player's inventory, not just held in a hand. | [Inventory Totem](../04-mods/08-tools-weapons-and-armor.md#inventory-totem) |
| Vanilla advancements | About 129 vanilla-namespace files are replaced/extended so the original tabs (Story, Nether, End, Adventure, Husbandry) integrate with BACAP's tree. | [BlazeandCave's Advancements Pack (BACAP) (datapack)](../05-datapacks/bacap.md) |
