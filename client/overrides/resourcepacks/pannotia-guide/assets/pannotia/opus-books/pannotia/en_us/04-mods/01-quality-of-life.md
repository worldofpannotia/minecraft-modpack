---
icon: item:minecraft:diamond_pickaxe
---
# Quality of Life

This page covers the small conveniences scattered through World of Pannotia: pack-wide config tweaks such as bigger stack sizes, sneak and block-placement improvements, tidier world behavior (fast leaf decay, tamer fire), and client-side utilities like a zoom key, a Mods menu and the Tweakeroo toolbox. Most of these mods do one small thing and need no setup. Several are server-side, so they work for everyone on a server even with a vanilla client.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Advancement Screenshot | Auto-screenshots each advancement you earn | Client |
| Amecs (Fabric) | Modifier-key keybinds, shared keys and a search bar on the Controls screen | Client |
| Bottled Air | Right-click an empty bottle underwater to breathe in extra air | Server |
| Cut Through | Melee attacks pass through grass and other non-solid blocks | Client |
| Daily Dad (Server) | Occasional dad jokes | Server |
| Diggus Maximus Reborn | Vein mining while holding a key | Both |
| Dismount Entity | Sneak and right-click a vehicle to eject its passenger | Server |
| Double Doors | Double doors open and close together | Server |
| Fire Spread Tweaks | Fire no longer spreads and burns out on its own | Server |
| Full Brightness Toggle | One-key fullbright (gamma) toggle | Client |
| Hide Experimental Warning | Skips the experimental-settings warning screens | Both |
| Improved Sign Editing | Auto line wrap when typing on signs | Client |
| KleeSlabs | Breaking a double slab removes only one half | Both |
| Leaves Be Gone | Leaves decay almost instantly after a tree is cut | Server |
| Mod Menu | Mods list and quick access to mod config screens | Client |
| Name Tag Upgrade | Rename name tags on the spot, no anvil or XP | Both |
| Pack Configuration Overrides | The pack's custom settings for six mods (stack sizes, crop harvesting, villagers, etc.) | Both |
| Rain Be Gone Ritual | Stop rain with a cauldron-and-log ritual | Server |
| Reacharound | Bedrock-style block placement past the edge of a block | Client |
| Scaffolding Drops Nearby | Chained scaffolding drops at the first broken block | Server |
| Sneaky Tweaks | Safe berry bushes, campfire grace time and crouch bridging | Both |
| Tweakeroo | Client-side toolbox of toggleable tweaks | Client |
| Traversable Leaves | Walk and jump-climb through leaf blocks; sneak for solid leaves | Both |
| Visual Workbench | Crafting tables keep and display their grid contents | Both |
| WI Zoom | A zoom key | Client |

## Pack-wide tweaks

World of Pannotia ships custom settings for six mods. They apply automatically; there is nothing to set up. Together they change play in these ways:

### Pack Configuration Overrides
Changes below come from the pack's config files. Each mod also has its own entry elsewhere on the wiki.

- **Stack sizes** (originally an AllStackable config, now carried by **StackItUp**, see [Storage & Inventory](03-storage-and-inventory.md)):
  - **Stack to 64:**
    - boats (oak, spruce, birch, jungle, acacia, dark oak only)
    - signs (the same woods plus crimson and warped; mangrove, cherry, bamboo, pale oak and hanging signs are not listed)
    - all 16 bed colors and all 16 banner colors
    - empty buckets, cake, eggs, snowballs, ender pearls, saddles, armor stands
    - enchanted, writable and written books
    - honey bottles
    - minecarts (plain, chest, furnace, hopper, TNT, command block)
    - 14 music discs: 11, 13, Blocks, Cat, Chirp, Far, Mall, Mellohi, Otherside, Pigstep, Stal, Strad, Wait, Ward (newer discs such as Relic and 5 are not listed)
  - **Stack to 16:**
    - shulker boxes of all colors (filled boxes stack too)
    - water, lava, milk and powder snow buckets
    - axolotl, cod, pufferfish, salmon and tropical fish buckets
    - potions, splash potions and lingering potions
    - mushroom, rabbit and beetroot stews, and suspicious stew
    - shields and totems of undying
- **Right Click Harvest:** right-click a ripe crop to harvest and replant it. No hoe is required. Higher-tier hoes harvest a larger area at once. Harvesting costs no hunger and no XP. Fortune on a hoe still raises yield.
- **Deepslate Instamine:**
  - Renewable deepslate is on: lava over water at or below Y 11 makes deepslate instead of cobblestone. The mod also adds cobbled deepslate and calcite generator variants.
  - Netherite pickaxes instantly mine deepslate, cobblestone and end stone, and netherite axes instantly mine logs. Per the mod description this needs an Efficiency V tool and Haste II from a beacon.
- **Grind Enchantments:**
  - Put an enchanted item and a book in a grindstone to move the enchantments onto the book. The item comes back unenchanted rather than being consumed.
  - Put an enchanted book on top and another book below to move the top enchantment onto the second book.
  - Both cost XP levels, shown in the UI. Roughly 8 levels plus 0.3 times the enchantments' minimum power (unverified). Treasure enchantments cost more.
  - Curses can be moved or removed.
- **Villager Tweaks:**
  - Enabled: demand bonus (cure discounts and reputation can lower prices), negative reputation (hitting or killing villagers still hurts your standing), a fixed 3-minute zombie villager cure time, zombies always converting villagers on kill regardless of difficulty, display of remaining cure time, and villagers following you while you hold emerald blocks or emerald ore.
  - Disabled: global reputation (reputation stays per player) and the max-trade override (vanilla trade limits apply).
- **Random Bone Meal Flowers:** bone meal on grass can create most flowers in any biome. The pack blocks golden dandelion, torchflower, wither rose, open and closed eyeblossom, and the Artificial Heart clipped eyeblossoms. Dandelion, poppy, blue orchid, allium, azure bluet, the four tulips, oxeye daisy, cornflower and lily of the valley remain in the pool.


## Movement, sneaking and combat helpers

**Sneaky Tweaks**, **Dismount Entity**, **Cut Through** and **Diggus Maximus Reborn** make everyday actions smoother. Sneaky Tweaks is the pack author's own mod.

### Sneaky Tweaks
A collection of small changes that make sneaking safer or more useful.
- **How it works:**
  - Sweet berry bushes do not hurt you while you crouch.
  - Sneaking on a lit campfire or soul campfire prevents damage for a limited time (default 200 ticks, 10 seconds). A row of flame icons beside the air-bubble meter shows the remaining grace and refills when you step off. Sneaking longer starts the damage again.
  - Crouch bridging: sneak off a ledge without looking down and you walk across a gap as if it were solid, up to 3 blocks by default. Looking down past 30 degrees (default) or running out of gap makes you fall.
- **Controls:** hold sneak. To bridge, sneak toward the gap and keep looking straight ahead.
- **Pack note:** campfire immunity and its duration, crouch bridging, max gap and the look-down threshold are configurable in the config screen. Adds 6 advancements.
- Vanilla changes: berry bush and campfire damage while crouching, and sneaking across gaps.

### Dismount Entity
Sneak and right-click a boat, minecart or other vehicle to eject its passenger without breaking the vehicle. Dismounting other players is off by default (`beAbleToDismountOtherPlayers`; the pack does not change it).

### Cut Through
Melee attacks ignore blocks with no collision shape, such as tall grass, so you can hit a mob standing behind them without breaking the plant. Nothing to configure.

### Diggus Maximus Reborn
Vein mining: hold the excavate key (default `~`) while breaking a block to also mine all connected identical blocks (ores, logs and so on).
- **How it works:** configurable limits include max blocks per excavation, max distance, tool damage, hunger exhaustion, auto pickup, stop before or after the tool breaks, block block/allow lists, custom block groups and requiring a tool. Selectable excavation shapes. Server settings override the client's. A server option lets clients without the mod trigger excavation by sneaking.
- **Controls:** Excavate (default `~`), Cycle Shape (set in Controls). "Invert Activation" makes holding the key disable excavation instead.
- **Pack note:** the pack does not override the config, so defaults apply (default limits unknown, unverified). Required on both sides.

## Building and placement

### Reacharound
Bedrock-style placement: aim at empty space just past the block you are bridging from and place a block there without sneaking to the edge. It also works for building downward and upward, with an on-screen indicator.
- **How it works:** bridging with upper slabs keeps them as upper slabs, and vertically placed slabs stack without skipping. Three indicator styles (Default, Quark, Custom) with 2D/3D rendering, colors, offhand placement and axis options, found in the config screen via Mod Menu.
- **Controls:** a key mapping is registered, so check the Controls screen for the Reacharound entry (default key unverified).

### Double Doors
Matching double doors open and close together with one click, button or pressure plate. Connected door-type blocks open recursively up to a configurable distance (default 10, max 32), and villagers can use double doors. Crouch to open only a single block.
- **Pack note:** by default only doors are enabled; fence gates and trapdoors are off. The pack does not override this, so those probably do not open in pairs (unverified).

### KleeSlabs
Breaking a double slab removes only the half under your crosshair and leaves a single slab. Works with vanilla and many modded slabs.

### Scaffolding Drops Nearby
Breaking the bottom scaffolding block of a chained tower makes all the connected scaffolding drop at the first broken block instead of scattering.

### Visual Workbench
Crafting tables keep the items in the grid when you close them, and draw the ingredients and the craftable result on top of the block. Breaking the table drops the contents. A tag (`visualworkbench/tags`) controls which crafting tables are supported.

### Improved Sign Editing
Typing on a sign wraps to the next line when the next word will not fit, and backspacing returns to the previous line. An Improved/Normal Editing button on the sign screen toggles it.

## World and environment tweaks

### Leaves Be Gone
Leaves with no log support decay almost immediately (about a second) after a tree is chopped down. Works with most modded leaves via the `minecraft:leaves` tag. Timing and whether different leaf types connect are configurable; the pack has no override.

### Traversable Leaves
Leaf blocks no longer block you, so forests feel more open to explore. Needed on both client and server.
- **How it works:**
  - You can walk through leaves, but movement is slower while you are inside foliage.
  - Jump to climb upward through leaves, so tall trees and thick canopies are easy to explore without chopping a path.
  - Standing on top of leaves still works as usual.
- **Controls:** Hold **sneak** to get full collision with leaves back, so you can stand on them and move carefully.
- **Pack note:** Purely a movement change; leaves look the same.

### Fire Spread Tweaks
Stops fire from spreading and destroying blocks, and makes fires burn out after a delay.
- **How it works:** sets `doFireTick` to false on first world load. Fires burn out after roughly 10 to 20 seconds (default 300 ticks plus or minus 100). Trees and other flammables may burn briefly but are not destroyed. Fire above netherrack, magma blocks or soul sand stays lit.

### Rain Be Gone Ritual
Survival players can stop rain: place 4 to 8 cauldrons (empty or filled) around a log in one of the supported layouts, then ignite the log with flint and steel. A harmless explosion effect plays, the cauldrons fill with water and the rain stops.

### Bottled Air
Right-click an empty glass bottle underwater to breathe in extra air (default 150 of 300, half the bar), turning it into a water bottle.
- **How it works:** holding a fire-type item (campfire, fire charge, lava bucket, magma block) in the offhand evaporates the water bottle back into an empty bottle, with a 50% chance (default) that the bottle breaks. Water bottles cannot be drunk underwater by default, so they do not give infinite oxygen.
- **Controls:** right-click an empty bottle while underwater.

### Name Tag Upgrade
Use a name tag to open an edit screen and set its name, with no anvil or XP. Formatting codes allow colors, bold and italics.
- **How it works:** applying a tag with the mob's current name does not consume it. Shears on a named mob remove the name and return the matching tag. Renaming a named mob returns the old tag. Named mobs can drop their name tag on death (conditions undocumented, unverified). Applying a tag plays a sound.
- Vanilla change: naming no longer needs an anvil or XP.

### Daily Dad (Server)
Server-side mod that tells players dad jokes from time to time. Frequency and triggers are unknown (unverified).

## Interface and client utilities

**Mod Menu**, **Amecs**, **Tweakeroo**, **WI Zoom** and the other client mods below only change your own game, and are safe to use on any server unless the server rules say otherwise.

### Mod Menu
Adds a Mods screen to the title and pause menus. It lists installed mods with descriptions and links to the config screens of mods that support one. Library mods can be filtered out, and it can check for updates for Modrinth-hosted mods.
- **Getting started:** click Mods, select a mod, then use Configure if shown.

### Amecs (Fabric)
Improves the Controls screen: keybinds can use Alt, Ctrl and Shift modifiers, several actions can share a key (conflicts still show red as a warning), and a search bar filters the keybind list.
- **Controls:** adds keybinds Toggle Auto Jump, Toggle Cape, Toggle Hat, Toggle Jacket, Toggle Left/Right Sleeve, Toggle Left/Right Pants Leg and an alternative Escape key (default keys unverified). Hold Alt/Ctrl/Shift while binding to set a combination.

### Tweakeroo
A client-side toolbox of toggleable tweaks, plus "Yeets" that disable vanilla behaviors. Press `X + C` to open the config menu, browse Tweaks or Yeets, toggle features on, and bind hotkeys for them in the same menu.
- **Tweaks** add functionality, for example Accurate/Flexible Block Placement, Fast Left/Right Click, Hand Restock, Hotbar Swap/Cycle/Scroll, Free Camera, Gamma Override, Inventory Preview, Tool Switch, Permanent Sneak/Sprint, Print Death Coordinates, Placement Grid/Restriction/Limit.
- **Yeets** disable things such as terrain, nether and boss fog, rain effects, particles, item glint, scoreboard rendering, the shulker box text tooltip and the sign GUI.
- Features that need server code (Empty Shulker Boxes Stack, Fill/Clone and Structure Block limit overrides, Disable Entity/Tile Entity Ticking) only work in single player.
- **Controls:** `X + C` opens the config. Free Camera presets use the chat command `#fc <add|cycle|del|del_all|list|recall|rename|set|help>`.
- **Warning:** Flexible/Accurate Block Placement and Hand Restock send unusual packets and can trigger server anti-cheat. Check server rules before using.

### Full Brightness Toggle
Press `G` to toggle gamma to maximum (a night-vision-like fullbright view), and press again to return to normal. Rebindable in Options > Controls. Originally requested for players with impaired eyesight. Some servers forbid fullbright, so ask first on public servers.

### WI Zoom
A zoom key taken from the Wurst Client as a standalone mod. Bind it in Controls, category "WI Zoom" (default key and scroll-wheel behavior unverified).

### Advancement Screenshot
Takes a screenshot 1 second (20 ticks) after you earn an advancement so the toast shows. It uses the F2 code, so files go to the normal screenshots folder. The delay (0-100 ticks) and the "screenshot taken" chat message (default off) are configurable. Works on servers with the mod on your client only.

### Hide Experimental Warning
Hides the "experimental settings" warning screens when creating or loading worlds, and the yellow experimental triangle and text in the world list.

## Also relevant
- **Silence Mobs** (see [Silence Mobs](../05-datapacks/silence-mobs.md)): name a mob with a name tag reading "Silence me" to stop its sounds, "Unsilence me" to restore them.
- **Villager Workstation Highlights** (see [Villagers & Trading](06-villagers-and-trading.md) and [datapack](../05-datapacks/villager-workstation-highlights.md)): `/trigger vwh_findStation` next to a villager shows its job site.
- **Trade Cycling** (see [Villagers & Trading](06-villagers-and-trading.md)): re-roll a villager's offers from the trading screen before you trade with it.
- **StackItUp**, **Simple Magnets**, **TrashSlot**, **Inventory Profiles Next**, **Easy Shulker Boxes** (see [Storage & Inventory](03-storage-and-inventory.md)): per-item stack sizes (this is what carries the pack's stack-size tweaks), handheld magnets, a trash slot, client-side inventory sorting and refill, and shulker boxes usable from the inventory.
- **Jade**, **Better Statistics Screen**, **Cherished Worlds**, **Folders!**, **Item Highlighter**, **No Recipe Book**, **Stendhal** (see [Interface & HUD](02-interface-and-hud.md)): block/entity tooltip, better stats, starred worlds, world folders, new-item stars, recipe book removal, book/sign/chat editor buttons.
- **AutoRun** and **Softer Hay Bales** (see [Transport & Movement](13-transport-and-movement.md)): hands-free walking and sprinting; no fall damage on hay bales.
- **Replanting Crops**, **Right Click Harvest** and **Grass Seeds** (see [Farming, Food & Animals](05-farming-food-and-animals.md)): auto-replant with a hoe, right-click harvest, and wheat seeds that turn dirt to grass.
- **Easy Anvils**, **Tax Free Levels**, **Grind Enchantments**, **Better Than Mending** (see [Enchanting & Magic](07-enchanting-and-magic.md)): friendlier anvils and flat XP costs, grindstone enchantment moving, and sneak-right-click Mending repair.
- **Hoe Tweaks** and **Inventory Totem** (see [Tools, Weapons & Armor](08-tools-weapons-and-armor.md)): bigger tilling area and faster melon/pumpkin breaking; totems of undying work from anywhere in the inventory.
- **Banner Tweaks** and **Litematica** (see [Building & Decoration](04-building-and-decoration.md)): up to 12 banner layers by default, and a schematic mod for builders.
- **Chorus Fruit Drops Nearby** (see [Loot & Drops](10-loot-and-drops.md)): chorus fruit drops at the plant's base.
- **Clumps**, **Bobby**, **Debugify** (see [Performance & Technical](../03-reference/04-technical.md)): XP orb merging, extended render distance via cached chunks, and 70+ vanilla bug fixes.
- **Auth Me**, **Death Backup**, **Hand Over Your Items**, **Your Items Are Safe** (see [Multiplayer & Server](15-multiplayer-and-server.md)): re-login to Microsoft accounts, restoring inventories after death, giving items by sneak-right-click, and a chest with a sign and armor stand at your death spot.
- **Extreme Sound Muffler** (see [Cosmetic, Visual & Audio](16-cosmetic-visual-and-audio.md)): mute or lower almost any sound.
- **WITS** (see [World Generation & Exploration](11-world-generation-and-exploration.md)): `/wits` prints the structures at your position.
