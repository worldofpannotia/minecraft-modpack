---
icon: item:minecraft:compass
---
# Getting started

World of Pannotia plays like vanilla Minecraft with the rough edges filed off. You don't need to learn a new progression system. This page covers what is worth knowing in your first hour.

## First things to look at

1. **Open your inventory.** The item list on the right is **Roughly Enough Items (REI)**. Click any item to see its recipe, or press `U` / `R` over it for uses and recipes. All modded and changed recipes show up here, so use it whenever this guide mentions a recipe. → [Interface & HUD](04-mods/02-interface-and-hud.md#roughly-enough-items-rei)
2. **Look at a block or mob.** The tooltip at the top of the screen is **Jade**. It shows what you're looking at, which mod it's from, crop growth, and more. → [Interface & HUD](04-mods/02-interface-and-hud.md#jade)
3. **Check the minimap.** **Xaero's Minimap** is in the corner. Press `M` for the full **World Map** and `B` to drop a waypoint. → [Maps & Navigation](04-mods/12-maps-and-navigation.md)
4. **Open Mod Menu** (the *Mods* button on the title or pause screen) to browse the installed mods and change client-side settings. → [Quality of Life](04-mods/01-quality-of-life.md#mod-menu)

> [!NOTE]
> Patchouli isn't in the pack yet because it is waiting for an update for this Minecraft version. Until it returns, the in-game guidebooks (the *World of Pannotia* book, the *Minekea Catalogue* and the *Hopper X-Treme* manual) aren't available. This guide covers the same ground.

## Things that work differently from vanilla

These are the changes you're most likely to notice right away. The full list is in **[What's different from vanilla](03-reference/01-vanilla-changes.md)**.

- **Bigger stacks.** Beds, banners, signs, boats, minecarts, buckets, eggs, ender pearls, enchanted books, music discs and more stack to 64. Shulker boxes, potions, stews, filled buckets, shields and totems stack to 16. → [Pack-wide tweaks](04-mods/01-quality-of-life.md#pack-wide-tweaks)
- **Right-click to harvest.** Right-click a ripe crop to harvest and replant it. You don't need a hoe, and better hoes harvest a wider area. → [Farming](04-mods/05-farming-food-and-animals.md)
- **Loot chests are per-player** (**Lootr**). Every player gets their own copy of each structure chest, so you never find a chest someone else already emptied. Chests you've opened change color. → [Loot & Drops](04-mods/10-loot-and-drops.md#lootr)
- **Graves.** When you die, your items and XP go into a grave at the spot where you died, and you get a compass pointing to it. Run `/graves` to list your graves. → [Multiplayer & Server](04-mods/15-multiplayer-and-server.md#universal-graves)
- **Enchanting is friendlier.** Enchantment incompatibilities are removed, anvil costs are flattened, and a grindstone can move enchantments from an item onto a book. → [How enchanting works in this pack](04-mods/07-enchanting-and-magic.md)
- **Fire doesn't spread** and burns out on its own. **Leaves decay** almost instantly after you chop a tree. **Double doors** open together. → [Quality of Life](04-mods/01-quality-of-life.md)
- **Villagers** follow you while you hold an emerald block. Curing a zombie villager takes a fixed 3 minutes, with a timer. Zombies always convert villagers. → [Villagers & Trading](04-mods/06-villagers-and-trading.md)
- **Mobs drop extras.** Many mobs can drop their heads, and several vanilla drops are more generous. → [World of Pannotia datapack](05-datapacks/world-of-pannotia.md)
- **Many vanilla recipes are cheaper or more flexible.** For example, stairs give 8, slabs and stairs can be crafted back into full blocks, and you can re-dye most colored blocks 8 at a time. → [VanillaTweaks crafting](05-datapacks/vanillatweaks.md)

## Getting around: teleport commands

The pack includes simple teleport commands. They use `/trigger`, so they work without operator permission:

| Command | What it does |
|---|---|
| `/trigger sethome` | Save your current location as your home (one home per player by default) |
| `/trigger home` | Teleport to your home |
| `/trigger spawn` | Teleport to the world spawn area |
| `/trigger back` | Return to where you were before your last `home`/`spawn` teleport |

→ [Homes](05-datapacks/homes.md) · [Spawn](05-datapacks/spawn.md) · [Back](05-datapacks/back.md)

## Playing on a server

- **Claim your base.** Press `'` (apostrophe) to open **Open Parties and Claims** and claim chunks so other players can't grief them. Create a party with `/oparties` to share with friends. Claims show on Xaero's maps. → [Multiplayer & Server](04-mods/15-multiplayer-and-server.md#open-parties-and-claims)
- **Voice chat.** **Simple Voice Chat** gives you proximity voice chat. Press `V` to open its menu and set up your microphone. → [Multiplayer & Server](04-mods/15-multiplayer-and-server.md#simple-voice-chat)
- **Shops.** Place a **Trade Shop** against a chest to sell items to other players. → [Villagers & Trading](04-mods/06-villagers-and-trading.md#universal-shops)

## Useful early crafts

- **Backpacks** (Resource Backpacks): start with the Leather Backpack (leather + chest), equip it, and press `B` to open it. Upgrade it through seven tiers. → [Storage & Inventory](04-mods/03-storage-and-inventory.md#resource-backpacks)
- **Magnet** (Simple Magnets): pulls nearby items and XP to you. Right-click to toggle it. → [Storage & Inventory](04-mods/03-storage-and-inventory.md#simple-magnets)
- **Explorer's Compass / Nature's Compass**: find structures and biomes. → [Maps & Navigation](04-mods/12-maps-and-navigation.md)

## Default key clashes to fix

Some mods share the same default key. Open **Options → Controls** (with **Amecs** you can search the list and use modifier keys) and rebind whichever clashing keys you use:

| Key | Used by |
|---|---|
| `B` | Xaero's Minimap (create waypoint) · Resource Backpacks (open backpack) |
| `G` | Full Brightness Toggle · Woodwalkers (transform) · ReMorphed (transform) |
| `U` | Xaero's Minimap (waypoint list) · Woodwalkers (unlock/scan) · REI (show uses, while hovering an item) |
| `V` | Simple Voice Chat (menu) · AutoRun (toggle) |

Jade's keys default to the **numpad**. If you play on a laptop, rebind them if you want to use them.

The full list is in [Controls and commands](03-reference/02-controls.md).

## Advancements

**BlazeandCave's Advancements Pack** adds over 1,000 extra advancements in new tabs, with rewards. You don't need to do anything to start it, because it tracks you automatically. → [BACAP](05-datapacks/bacap.md)
