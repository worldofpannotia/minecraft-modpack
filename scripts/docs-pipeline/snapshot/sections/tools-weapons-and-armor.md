# Tools, Weapons & Armor

This section covers mods and a datapack that change how your gear behaves: faster mining, better hoes, ranged weapon fixes, armor trims, the totem of undying, and the blocks you can now pick up with a pickaxe. Most are small tweaks with no new items. Enchantment-related changes to gear live on [Enchanting & Magic](enchanting-and-magic.md).

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Beacon & Conduit Tweaks | Configurable beacon and conduit range; hide the beam with a carpet | Server |
| Bow Infinity Fix | Infinity bows and crossbows need no arrow in the inventory | Both |
| Deepslate Instamine | Netherite tools instamine deepslate, cobblestone, end stone and logs; renewable deepslate | Both |
| Distracting Trims | Gold armor trim keeps piglins from attacking | Both |
| Hoe Tweaks | Bigger tilling area, un-till, faster melons and pumpkins | Both |
| Inventory Totem | Totem of Undying works from anywhere in the inventory | Server |
| Mineable Spawner | Spawners can be mined with a pickaxe | Server |
| Mineable Trial Spawner | Trial spawners and vaults can be mined with a pickaxe | Server |
| More Effective Tools (datapack) | Gives glass, lamps, skulls, beds and more a correct tool | Server |

## Mining and block-breaking

### Deepslate Instamine
A netherite pickaxe with Efficiency V under Haste II (from a beacon) mines certain blocks instantly. Pack config sets the speed factor to 1000.
- **How it works:** Netherite pickaxes instamine deepslate, cobblestone and end stone; netherite axes instamine logs. No other tools qualify. Per the mod description it needs Efficiency V and Haste II.
- **Renewable deepslate:** Below Y=11, lava/water generators produce deepslate (cobbled deepslate like cobblestone) and calcite (like basalt) instead of the usual results.
- **Getting started:** Enchant a netherite pickaxe with Efficiency V, stand in a Haste II beacon, and mine deepslate.
- **Pack note:** Needed on both client and server.

### More Effective Tools (datapack)
Gives blocks that had no proper tool a "correct tool", so they break faster with it. Drops are unchanged (glass still needs Silk Touch). See also the [datapack page](../datapacks/more-effective-tools.md).
- **Pickaxe:** glass, glass panes, tinted glass and all stained glass and panes; beacon; glowstone; sea lantern; redstone lamp; lever; frosted ice; ochre, verdant and pearlescent froglight; creeper, dragon, piglin, zombie, player, skeleton and wither skeleton heads/skulls.
- **Axe:** all beds, all candles, cactus, honeycomb block.
- **Hoe:** wool carpets.
- **Shovel:** cake and candle cakes.
<!-- maintainer: vanilla 26.2 may already tag some of these. Blocks intended to have no effective tool (powder snow, reinforced deepslate, vault) are deliberately excluded. -->

### Mineable Spawner
Monster spawners can be mined and picked up with a pickaxe. It is a datapack-style mod controlled by scoreboard/trigger settings.
- **Settings:** drop with a pickaxe (default on), require silk touch (default off), spawn egg also drops (default on), XP drops (default off).
- **Controls:** `/trigger mineablespawner.config` to change settings. Fallback: `/scoreboard players set <&break_spawner_pickaxe | &break_spawner_silktouch | &spawn_egg_drop | &xp_drop> config.mineablespawner <0 or 1>`. These may need operator permission (unverified).
- **Vanilla change:** Spawner loot table now drops the block (vanilla drops nothing).
<!-- maintainer: defaults come from Modrinth text, partly inconsistent between old and new settings; verify in-game. -->

### Mineable Trial Spawner
Companion to Mineable Spawner: trial spawners and vaults drop as items when mined with a pickaxe (default on); silk touch only is an option (default off). A spawn egg also drops by default (unverified).
- **Controls:** `/trigger mineable_trial_spawner.config`.

## Farming gear

### Hoe Tweaks
- **Bigger tilling:** While sneaking and right-clicking the center block (default): wooden 1x1, stone 3x3, gold 5x5, iron 5x5, diamond 7x7, netherite 9x9. Each extra block tilled damages the hoe (Unbreaking counts).
- **Un-till:** Right-click tilled soil to turn it back to dirt; by default only when the other hand is empty so you can still plant seeds.
- **Faster crop blocks:** Pumpkins and melons break 8x faster with a hoe.
- **Pack note:** Mod defaults; no pack override found.

## Combat and survival

### Bow Infinity Fix
Bows and crossbows with Infinity can be fired without any arrow in the inventory. (Universal Enchants also makes Infinity not need a spare arrow; see [Enchanting & Magic](enchanting-and-magic.md).)
<!-- maintainer: jar filename says neo; verify it loads on Fabric and what is fired with no arrow (assumed regular arrow). -->

### Inventory Totem
The totem of undying works from anywhere in your inventory, not just the main or off hand. The resurrection effect is unchanged. Requires Collective (server-side).

### Distracting Trims
Armor pieces trimmed with gold count as gold armor for piglin neutrality; normal gold armor still works. Apply a gold trim at a smithing table and wear it in the Nether. The trim materials are in the datapack tag `distractingtrims:distracts_piglins` (gold only by default).

## Beacons

### Beacon & Conduit Tweaks
- **Beacon range:** base range (default 10 blocks) plus range per pyramid level (default 10); optional per-block range.
- **Conduit range:** can add to or replace the vanilla range, with range per frame block.
- **Beam:** a carpet on top of the beacon stops beam rendering; tinted glass can show and hide the beam (behavior vaguely documented) (unverified).
<!-- maintainer: defaults appear to match vanilla; pack's actual config values were not checked. -->

## Also relevant
- **Easy Anvils**, **Universal Enchants** and **Infinity Water Bucket** (see [Enchanting & Magic](enchanting-and-magic.md)): anvil overhaul, enchantments on more gear, and infinite buckets.
- **Anvil Restoration** (see [Building & Decoration](building-and-decoration.md)): right-click a placed anvil with an iron ingot to repair one stage; obsidian damages one stage (never breaks it).
- **Armored Elytra** (client; see [Cosmetic, Visual & Audio](cosmetic-visual-and-audio.md)) renders chestplate and elytra together; it adds no recipe, so a separate datapack is needed to combine them (low confidence it is functional in the pack).
- **Cut Through** (client; see [Quality of Life](quality-of-life.md)): melee attacks pass through blocks without a collision shape, such as tall grass.
- **Diggus Maximus Reborn** (see [Quality of Life](quality-of-life.md)): vein mining. Hold the excavate key (default `~`) while mining; "Cycle Shape" keybind changes shape; server settings override the client's.
<!-- maintainer: Armored Elytra jar missing from facts; no armored elytra datapack found; Modrinth lists support only to 1.20.4. -->
