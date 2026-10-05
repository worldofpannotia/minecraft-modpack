# Farming, Food & Animals

This part of the pack is a set of small tweaks that make crops, bone meal and horses less tedious. Harvesting and replanting are automatic, bone meal does more, farmland is harder to ruin, and a monocle plus a breeding fix make horse breeding predictable. Almost everything here is server-side and works without any new items; the only craftable is the Horse Expert monocle.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Crops Love Rain | Crops get extra growth ticks while it rains | Server |
| Extended Bone Meal | Bone meal works on nether wart, cactus, sugar cane and vines; sneak-use fully grows crops | Server |
| Grass Seeds | Wheat seeds turn dirt into grass and plant tall grass | Both |
| Horse Breeding Fix | Foals are never worse than the better parent | Server |
| Horse Expert | Monocle shows a mount's health, speed, jump and slots | Both |
| Ice Prevents Crop Growth | Ice under a crop freezes it at its current stage | Server |
| Keep My Soil Tilled | Re-tills the soil under harvested melon and pumpkin stems | Server |
| Kelp Fertilizer | Kelp works as bone meal | Server |
| Random Bone Meal Flowers | Bone meal on grass grows any flower in any biome | Server |
| Replanting Crops | Breaking a mature crop with a hoe replants it | Server |
| Right Click Harvest | Right-click a ripe crop to harvest and replant | Server |

## Harvesting and replanting
**Right Click Harvest** lets you right-click a fully grown crop to harvest and replant it. It works on vanilla crops including cocoa beans, nether wart, sugar cane and cactus, and on most modded crops. **Replanting Crops** does the same job from the other direction: breaking a mature crop replants it. The two overlap, and both are active.

### Right Click Harvest
- **How it works:** Harvest and replant in one click. Fortune on a hoe increases yield. Block and item tags can customise behaviour.
- **Pack note:** No hoe is required (any item or an empty hand works). Higher-tier hoes harvest more blocks around the target. Harvesting costs no hunger and gives or costs no XP. These match the mod defaults.
- **Vanilla change:** right-clicking crops now harvests instead of doing nothing.
<!-- maintainer: verify sugar cane/cactus behavior in 26.2 build; verify Right Click Harvest and Replanting Crops do not conflict in game. -->

### Replanting Crops
- **How it works:** Breaking a mature crop while holding a hoe replants it from the drops. Works for wheat, carrots, potatoes, beetroots, nether wart and cocoa beans, plus modded crops built on the standard crop class, and works when harvesting many crops at once.
- **Controls:** Hold sneak while breaking to skip replanting (handy when clearing a farm).
- **Pack note:** Mod defaults apply, including `mustHoldHoeForReplanting = true`.

### Hoe Tweaks
**Hoe Tweaks** (primarily in [Tools, Weapons & Armor](tools-weapons-and-armor.md)) also affects farming: see "Also relevant".

## Growth and bone meal
Several mods change how plants grow. **Crops Love Rain** speeds crops up in the rain, **Ice Prevents Crop Growth** stops them, and four mods change bone meal: **Extended Bone Meal**, **Kelp Fertilizer**, **Random Bone Meal Flowers** and **Grass Seeds** (which uses seeds on dirt instead).

### Crops Love Rain
Affects soil crops (wheat, carrots and so on), bamboo, saplings and sugar cane.
- **How it works:** While raining, each supported crop has a 1-in-X chance per tick to grow an extra step. X is configurable, optionally per crop, with a separate speed for stem crops (melon and pumpkin). A speed of 0 disables the boost for that crop.
- **Pack note:** The pack does not override the config, so mod defaults apply.
<!-- maintainer: default speed values not in facts; unknown whether sky exposure is required. -->

### Ice Prevents Crop Growth
- **How it works:** A crop on soil with ice underneath never advances to its next growth stage, so you can freeze a plant at a chosen stage for decoration. Bone meal still advances it. Works for modded crops.

### Extended Bone Meal
- **How it works:** Bone meal now advances nether wart, cactus, sugar cane and vines. Using bone meal on a crop while sneaking grows it straight to maturity.
<!-- maintainer: per-block growth amounts not documented; server-side only; overlaps Random Bone Meal Flowers. -->

### Kelp Fertilizer
- **How it works:** Kelp works exactly like bone meal on crops and plants, by hand or from a dispenser.

### Random Bone Meal Flowers
- **How it works:** Bone meal on grass grows a random flower from all registered flowers (including modded), in any biome, so flower farms work anywhere.
- **Pack note:** The pack blocks golden dandelion, torchflower, wither rose, open and closed eyeblossom, and the Artificial Heart clipped and clipped open eyeblossoms (via `config/randombonemealflowers/blacklist.txt`). Dandelion, poppy, blue orchid, allium, azure bluet, the four tulips, oxeye daisy, cornflower and lily of the valley can still spawn.

### Grass Seeds
- **How it works:** Right-click dirt with wheat seeds to make a grass block; right-click a grass block with seeds to place tall grass.
<!-- maintainer: unknown whether seeds are consumed per use; verify. -->

## Protecting farmland
### Keep My Soil Tilled
After a pumpkin or melon is harvested, the dirt under its stem is re-tilled automatically if farmland is around, so melon and pumpkin farms do not slowly erode.
<!-- maintainer: exact trigger conditions not verified. -->

## Horses and animals
### Horse Breeding Fix
Foals of horses, donkeys and mules inherit each stat (health, speed, jump) at least as good as the better parent's. (Exact formula undocumented, so treat as unverified.)

### Horse Expert
Craft and wear a monocle, then look at a tamed horse, donkey, mule or llama to see its stats. Useful for picking breeding stock together with Horse Breeding Fix.
- **New:** Monocle — shaped recipe: gold nuggets in a plus shape (top, left, right, bottom) around a glass pane in the centre. Tooltip: "Wear it and look at a mount to see all statistics!"
- **How it works:** Shows health in hearts, speed in blocks/second, jump height in blocks and storage slots, with min/max ranges. A tamed mount is required by default (configurable). Llamas show extra info.
- **Pack note:** Config is TOML; edit in game with `/config showfile horseexpert`.
<!-- maintainer: equip slot not confirmed (jar ships trinkets data; verify whether Trinkets is in the pack or the monocle goes in the head slot). -->

## Also relevant
- **Hoe Tweaks** (see [Tools, Weapons & Armor](tools-weapons-and-armor.md)): tilling area depends on tier (sneak and right-click the centre block: wood 1x1, stone 3x3, gold 5x5, iron 5x5, diamond 7x7, netherite 9x9); extra blocks cost durability (Unbreaking applies). Right-clicking tilled soil reverts it to dirt (by default only with the other hand empty so you can still plant). Melons and pumpkins break 8x faster with a hoe.
- **Camel Nostrils** (see [Mobs & Creatures](mobs-and-creatures.md)): Golden Wheat Seeds (8 wheat seeds around a gold ingot, yields 8) fed to a chicken give a chance of a Golden Egg (food equal to a golden carrot), and instantly grow a baby chicken. Golden Cactus (8 cactus around a gold ingot, yields 8) regrows a pulled-off camel snout or grows a baby camel.
- **Mooshroom Tweaks** (see [Mobs & Creatures](mobs-and-creatures.md)): naturally spawned mooshrooms can be brown as well as red (`becomeBrownChance`, default 0.5).
- **Axolotl Bucket Fix** (see [Cosmetic, Visual & Audio](cosmetic-visual-and-audio.md)): axolotl buckets show the actual colour and age of the axolotl.
- **World of Pannotia: Vanilla Loot Overrides** (see [../datapacks/world-of-pannotia.md](../datapacks/world-of-pannotia.md)): includes a doubled jungle-leaves sapling chance and a higher giant-mushroom drop rate (Fortune now applies).
- Right Click Harvest and the Random Bone Meal Flowers blacklist are also summarised in the pack's config overrides (see [Quality of Life](quality-of-life.md)).
