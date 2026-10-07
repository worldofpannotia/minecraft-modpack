---
icon: item:minecraft:diamond_sword
---
# Tools, Weapons & Armor

This section covers mods and a datapack that change how your gear behaves: faster mining, better hoes, ranged weapon fixes, armor trims, the totem of undying, and the blocks you can now pick up with a pickaxe. Most are small tweaks with no new items. Enchantment-related changes to gear live on [Enchanting & Magic](07-enchanting-and-magic.md).

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Beacon & Conduit Tweaks | Configurable beacon and conduit range; hide the beam with a carpet | Server |
| Deepslate Instamine | Netherite tools instamine deepslate, cobblestone, end stone and logs; renewable deepslate | Both |
| Effective Gear | New trim materials, Preserving shears, and full-set armor trim bonuses | Both |
| Hoe Tweaks | Bigger tilling area, un-till, faster melons and pumpkins | Both |
| Inventory Totem | Totem of Undying works from anywhere in the inventory | Server |
| Silkier Touch | Silk Touch also picks up spawners, dragon eggs, cake, farmland and more | Server |
| More Effective Tools (datapack) | Gives glass, lamps, skulls, beds and more a correct tool | Server |

## Mining and block-breaking

### Deepslate Instamine
A netherite pickaxe with Efficiency V under Haste II (from a beacon) mines certain blocks instantly. Pack config sets the speed factor to 1000.
- **How it works:** Netherite pickaxes instamine deepslate, cobblestone and end stone; netherite axes instamine logs. No other tools qualify. Per the mod description it needs Efficiency V and Haste II.
- **Renewable deepslate:** Below Y=11, lava/water generators produce deepslate (cobbled deepslate like cobblestone) and calcite (like basalt) instead of the usual results.
- **Getting started:** Enchant a netherite pickaxe with Efficiency V, stand in a Haste II beacon, and mine deepslate.
- **Pack note:** Needed on both client and server.

### More Effective Tools (datapack)
Gives blocks that had no proper tool a "correct tool", so they break faster with it. Drops are unchanged (glass still needs Silk Touch). See also the [datapack page](../05-datapacks/more-effective-tools.md).
- **Pickaxe:** glass, glass panes, tinted glass and all stained glass and panes; beacon; glowstone; sea lantern; redstone lamp; lever; frosted ice; ochre, verdant and pearlescent froglight; creeper, dragon, piglin, zombie, player, skeleton and wither skeleton heads/skulls.
- **Axe:** all beds, all candles, cactus, honeycomb block.
- **Hoe:** wool carpets.
- **Shovel:** cake and candle cakes.

### Silkier Touch
Extends Silk Touch so it can pick up blocks that normally cannot be collected. Server-side; each block is a config toggle.
- **Picked up with Silk Touch (on by default):** monster spawners (they keep their mob), dragon eggs (the egg does not teleport), full cakes and candle cakes, budding amethyst, farmland, tall grass, snow layers and vines.
- **Off by default:** trial spawners and infested stone.
- **Not covered:** vaults. Spawners need Silk Touch; a plain pickaxe no longer drops them.
- **Controls:** none. Settings are in the mod's config file.

## Farming gear

### Hoe Tweaks
- **Bigger tilling:** While sneaking and right-clicking the center block (default): wooden 1x1, stone 3x3, gold 5x5, iron 5x5, diamond 7x7, netherite 9x9. Each extra block tilled damages the hoe (Unbreaking counts).
- **Un-till:** Right-click tilled soil to turn it back to dirt; by default only when the other hand is empty so you can still plant seeds.
- **Faster crop blocks:** Pumpkins and melons break 8x faster with a hoe.
- **Pack note:** Mod defaults; no pack override found.

## Combat and survival

### Inventory Totem
The totem of undying works from anywhere in your inventory, not just the main or off hand. The resurrection effect is unchanged. Requires Collective (server-side).

### Effective Gear
Wearing a **full set** of armor trimmed with the same material or the same pattern gives a bonus while it is worn. Made by the pack author. Material bonuses and pattern bonuses stack. A full set of netherite armor also gives fire resistance.
- **New trim materials:** blaze powder, echo shard, enchanted golden apple, ender pearl, honeycomb, nether star, prismarine shard, slimeball, turtle scute.
- **Preserving enchantment (shears, via anvil):** leaves mined with Preserving shears keep their colour in any biome. Craft a preserved leaf block by itself to turn it back into an ordinary one.
- **Wandering traders:** 20% chance of selling a random smithing template, priced like duplicating it (7 diamonds plus 1 of the needed block).

| Material | Full-set bonus |
|---|---|
| Amethyst | Small bonus to experience from blocks and mobs |
| Blaze powder | Melee attacks set the target on fire |
| Copper | Channeling tridents can summon lightning when it is not storming |
| Diamond | Tools mine as if Efficiency were one level higher |
| Echo shard | Partial resistance to a warden's sonic boom |
| Emerald | Small discount when trading with villagers |
| Enchanted golden apple | Regeneration II and resistance |
| Ender pearl | Endermen ignore your gaze |
| Gold | Piglins treat you as if wearing gold armor |
| Honeycomb | Harvest bee nests without a campfire and without angering the bees |
| Iron | Iron golems won't attack you |
| Lapis lazuli | Small chance for an enchantment to come out at max level + 1 |
| Nether star | Regeneration |
| Netherite | Fire resistance |
| Prismarine shard | Partial resistance to guardian and elder guardian lasers |
| Quartz | Move more freely over terrain that slows you down |
| Redstone | Right-click a block with an empty hand to send it a redstone pulse, anywhere a button could be placed |
| Resin | Creakings ignore you |
| Slimeball | Knockback resistance |
| Turtle scute | Water breathing |

| Pattern | Full-set bonus |
|---|---|
| Bolt ⚡ | While sprinting, press the ability key to dash forward (short cooldown) |
| Coast | Aqua Affinity underwater; with real Aqua Affinity on the helmet, no mining-speed loss while off the ground |
| Dune | Melee attacks also weaken the target |
| Eye | Extra damage to endermen |
| Flow ⚡ | While airborne, press the ability key for an upward boost (once per jump, short cooldown) |
| Host | Villager trade discount, stacking with emerald |
| Raiser | Extra damage to undead |
| Rib | Immune to wither |
| Sentry | Extra damage to pillagers, melee or ranged |
| Shaper | Slightly longer reach for blocks and entities |
| Silence | Breaking a block while sneaking won't alert sculk sensors |
| Snout | Hoglins and piglin brutes leave you alone |
| Spire | Immune to levitation |
| Tide | Immune to mining fatigue |
| Vex | Partial resistance to evoker fangs and vexes |
| Ward | Extra partial resistance to sonic booms, stacking with echo shard |
| Wayfinder | Mounts you ride get a small speed boost |
| Wild | Immune to poison |

- **Controls:** patterns marked ⚡ use the "Use Trim Ability" key (set it in Controls). You can only wear one such pattern's full set at a time, so one key covers whichever ability you have.

## Beacons

### Beacon & Conduit Tweaks
- **Beacon range:** base range (default 10 blocks) plus range per pyramid level (default 10); optional per-block range.
- **Conduit range:** can add to or replace the vanilla range, with range per frame block.
- **Beam:** a carpet on top of the beacon stops beam rendering; tinted glass can show and hide the beam (behavior vaguely documented) (unverified).

## Also relevant
- **Easy Anvils**, **Universal Enchants** and **Infinity Water Bucket** (see [Enchanting & Magic](07-enchanting-and-magic.md)): anvil overhaul, enchantments on more gear, and infinite buckets.
- **Anvil Restoration** (see [Building & Decoration](04-building-and-decoration.md)): right-click a placed anvil with an iron ingot to repair one stage; obsidian damages one stage (never breaks it).
- **Armored Elytra** (client; see [Cosmetic, Visual & Audio](16-cosmetic-visual-and-audio.md)) renders chestplate and elytra together; it adds no recipe, so a separate datapack is needed to combine them (none ships with the pack, so it may not combine anything).
- **Cut Through** (client; see [Quality of Life](01-quality-of-life.md)): melee attacks pass through blocks without a collision shape, such as tall grass.
- **Diggus Maximus Reborn** (see [Quality of Life](01-quality-of-life.md)): vein mining. Hold the excavate key (default `~`) while mining; "Cycle Shape" keybind changes shape; server settings override the client's.
