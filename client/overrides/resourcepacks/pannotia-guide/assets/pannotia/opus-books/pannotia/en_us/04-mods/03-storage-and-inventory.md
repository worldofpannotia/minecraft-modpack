---
icon: item:minecraft:ender_chest
---
# Storage & Inventory

This part of the pack is about carrying more, organising it and spending fewer slots on it. **Resource Backpacks** and **Shulker Stuff** add new containers and upgrades, **Easy Shulker Boxes** lets you use them from your inventory, **StackItUp** raises stack sizes, and **Inventory Profiles Next**, **Simple Magnets** and **TrashSlot** handle sorting, collecting and discarding items.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Easy Shulker Boxes | Insert and extract items from shulker boxes and ender chests directly in your inventory | Both |
| Inventory Profiles Next | Sort, bulk-move, lock slots, auto-refill and gear profiles | Client |
| Resource Backpacks | Seven upgradable backpack tiers in an equip slot | Both |
| Shulker Stuff | Shulker enchantments, dyeing station and Netherite plating | Both |
| Simple Magnets | Handheld magnets and demagnetization coils | Both |
| StackItUp | Per-item stack sizes; the pack raises many to 16 or 64 | Both |
| TrashSlot | Draggable trash slot in inventory screens | Both |

## Portable storage

### Resource Backpacks
Seven tiers of upgradable backpacks. A dedicated slot holds an equipped backpack; press **B** to open it (optionally right-click it from the inventory, per config). Backpacks can also be placed as blocks and used like shulker boxes, and put on armor stands. Slot counts per tier are configurable and not listed here.
- **New:** Leather Backpack (8 leather around a wooden chest; also in structure chests); Copper (Leather + 8 copper ingots); Iron (Copper + 8 iron ingots); Gold (Iron + 6 gold ingots + 2 shulker shells, top and bottom centre); Diamond (Gold + 4 shulker shells + 4 diamonds); Netherite (Diamond + 4 netherite ingots + 2 diamonds + 2 shulker boxes); End (Gold + 4 diamonds + 2 eyes of ender + an ender chest; gives access to your Ender Chest). Upgrades are shaped with the previous backpack in the centre.
- **Loot:** zombies and creepers can spawn with leather or copper backpacks; backpacks appear in structure chests (villages, strongholds, mansions, shipwrecks, mineshafts and others) and trial chamber rewards, by tier.
- **Controls:** B opens the equipped backpack; hold Left-Shift for a compact summed item list or Left-Alt for the full layout in the tooltip. All keybinds are configurable.
- A config option allows backpacks inside backpacks (effectively infinite storage); its default is unconfirmed (unverified).

### Shulker Stuff
Shulker box upgrades by the pack author.
- **New:** **Shulker Dyeing Station** (pattern `DSD` / `BCB` / `BRB`: dyes top corners, shulker shell top centre, polished blackstone sides and bottom corners, crafting table middle, brush bottom centre) recolours shulker boxes in its own GUI. **Plated Shulker Upgrade** smithing template (duplicate with 7 diamonds around a netherite ingot, yields 2; a config option suggests it may also be loot, unconfirmed). Enchantments: **Refill** (max I, helps keep a stack topped up from the box), **Vacuum** (max II, pulls in nearby items), **Void** (max I, discards unwanted items), obtained via enchanting table, treasure or trades (unverified). Deep Storage appears in lang files only and is not currently registered.
- **How it works:** at a smithing table, template + shulker box + netherite ingot gives a Netherite Plated box, intended as sturdier. Broken boxes keep their name, contents, lock, loot, enchantments, dye colour and plated state.
- **Vanilla change:** shulker box loot tables (all colours) now copy the extra data to the dropped item.

### Easy Shulker Boxes
Use shulker boxes (and ender chests) without placing them, similar to bundles. Click an item onto a box in an inventory slot to insert it, or click the box onto a slot to pull items out. The tooltip previews contents; scroll or use arrow keys to pick which stored item to take. Click-drag across slots for bulk transfer; hold Ctrl (Command on Mac) to move single items. Optional bundle-style fill bars and hints. Other storage items can be supported through datapacks. Shulker boxes stack to 16 in this pack (see StackItUp).

### Shulker Box Tooltip
(Primary category: Interface & HUD.) Hover over a shulker box and hold Shift for a contents preview (Alt+Shift for full layout). Also works for chests, barrels and other containers. Configure through Mod Menu or `config/shulkerboxtooltip.json5`.

## Stack sizes and organisation

### StackItUp
Lets stack sizes be set per item; the pack ships a global config that applies to every **new** world (existing worlds keep their own `stackitup-config.json`).
- **Stack of 64:** oak, spruce, birch, jungle, acacia, dark oak, crimson and warped signs; six boat types (oak through dark oak); all minecarts (plain, chest, furnace, hopper, TNT, command block); armor stands; all beds and banners; empty buckets; cake; eggs; snowballs; enchanted books; ender pearls; honey bottles; saddles; writable and written books; most music discs.
- **Stack of 16:** filled buckets (water, lava, milk, powder snow, fish, axolotl); potions (normal, splash, lingering); stews; all shulker boxes (filled too); shields; totems of undying.
- **Controls:** `/stackitup show all | show [item] | show hand [player]`; `/stackitup set [item] [count] | set hand | set vanilla | set modified | set all`; `/stackitup reset all | [item] | hand`; `/stackitup config reload | loadFromGlobal | saveToGlobal | globalConfigAutoApply [true/false] | restore`. Commands require operator permission (level 4). Start with `/stackitup show all`.
- Bamboo, cherry, mangrove and pale oak signs and hanging signs are not included.

### Inventory Profiles Next
Client-side only, so it works on any server.
- **Sorting** of inventory or an open container (configurable order, including Creative menu order and custom rule files in `config/inventoryprofilesnext`).
- **Move matching / move all** by button or hotkey, with modifiers (include hotbar, move everything, only the item type under the cursor, only refill existing stacks).
- **Locked slots** are ignored by sorting and bulk moves; locks can be stored per world or server.
- **Auto refill** replaces a used-up hotbar stack or broken tool.
- **Equipment profiles**: saved gear sets, set up on the Edit Profiles page in the config GUI.
- Scroll over a slot to move items; items matching the one under the cursor can be highlighted; villager-trading helpers.
- **Controls:** open the config GUI via Mod Menu; all hotkeys are rebindable there. The mod page mentions R+C for setting shortcuts; other defaults are unverified. Open an inventory or chest and use the sort and move buttons beside it.

### TrashSlot
A draggable trash slot on inventory screens: drop an item in to delete it, take it out to undo the last deletion. A deny list prevents trashing certain items; instant deletion can be enabled in config.
- **Controls:** T show/hide (default per Modrinth); Delete deletes the item under the cursor; Shift+Delete deletes all of that type; a lock/unlock key is in Controls. Delete keys don't work in Creative unless enabled, and items trashed in Creative are lost permanently.

### Simple Magnets
- **New:** **Basic Magnet** (iron ingots around an ender pearl, with lapis and redstone) pulls items and experience within 5 blocks. **Advanced Magnet** (Basic Magnet, eye of ender, diamond, gold ingots, lapis, redstone) reaches up to 11 blocks with separate item and XP ranges and a whitelist/blacklist filter. **Basic Demagnetization Coil** (4 iron ingots, 2 redstone, 1 gold ingot) stops items within up to 3 blocks being attracted. **Advanced Demagnetization Coil** (Basic coil, glowstone dust, 2 redstone, 4 gold ingots) has up to 5 blocks range and an item filter.
- **How it works:** right-click with a magnet to toggle it, or use a keybind (default unknown; check Options > Controls). Shift+right-click with the Advanced Magnet opens its GUI (filter slots, whitelist/blacklist, match-NBT). Right-click a coil with an empty hand to open its GUI. Magnets may also be worn in Trinkets-style slots. Coils keep sorting or farm collection areas from being drained by a player carrying a magnet.

## Also relevant

- **Hopper X-Treme** (see [Redstone & Automation](14-redstone-and-automation.md)): faster hoppers and item filters for storage systems.
- **Minekea** (see [Building & Decoration](04-building-and-decoration.md)): 54-slot crates, extra barrels, glass jars (hopper compatible), armoires, shelves, and 3x3 compressed item storage blocks.
- **Pack Configuration Overrides** (see Quality of Life): the stack sizes above come from the pack's allstackable config migrated into StackItUp. Those overrides also make shulker boxes stack to 16.
- **Shulker Box Tooltip**: shown above under Portable storage.
