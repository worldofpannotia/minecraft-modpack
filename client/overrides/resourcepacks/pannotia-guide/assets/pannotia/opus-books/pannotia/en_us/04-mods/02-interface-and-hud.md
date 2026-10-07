---
icon: item:minecraft:spyglass
---
# Interface & HUD

This part of the pack changes what you see on screen: the in-game HUD, item tooltips, menus, the recipe browser and the book and sign editors. Most of these are client-side and need no server support. They are mostly passive, so the main thing to learn is a handful of keys (Jade, MiniHUD, REI) and where each mod's config lives. Most config screens are reachable through **Mod Menu** (see [Also relevant](#also-relevant)).

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Adaptive Tooltips | Wraps, repositions and scrolls long tooltips so they stay on screen | Client |
| AppleSkin | Shows food hunger/saturation values, hidden saturation and exhaustion | Both |
| Better Mount HUD | Shows food and mount health together while riding | Client |
| Better Statistics Screen | Searchable, sortable statistics screen with a visual grid | Client |
| Boat Item View | Shows your held item in a moving boat | Client |
| Cherished Worlds | Star favorite worlds and servers to pin them and block deletion | Client |
| Durability Tooltip | Adds a durability line to tooltips | Client |
| Enchantment Descriptions | Explains each enchantment on enchanted books | Client |
| Enchantment Numbers Fix | Roman numerals for enchantment levels above 10 | Client |
| EnhancedTooltips | Overhauls tooltips with badges, borders, animations and previews | Client |
| FixBookGUI | Centers the book screen vertically | Client |
| Folders! (Organizable Play Screens) | Folders for worlds and servers on the play screens | Client |
| GUI Followers | HUD list of nearby tamed, standing pets | Client |
| Item Highlighter | Marks newly picked-up items with a star | Client |
| Jade | "Looking at" tooltip for blocks and entities | Both |
| MiniHUD | Configurable mini-F3 info lines and overlays | Client |
| No Recipe Book | Removes the vanilla recipe book | Client |
| Ore Height Indicator | HUD ranking of ores by suitability of your current Y level | Client |
| Overflowing Bars | Layered health/armor bars plus a toughness bar | Client |
| Paginated Advancements | Larger advancements screen with paginated, pinnable tabs | Client |
| Plague's Chat Timestamps | Timestamps on chat messages | Client |
| Reese's Sodium Options | Alternate tabbed layout for Sodium's video settings | Client |
| Roughly Enough Items (REI) | Item and recipe browser beside the inventory | Both |
| Roughly Enough Professions | REI addon with villager profession info | Client |
| Shulker Box Tooltip | Preview container contents by holding Shift | Client |
| Stendhal | Book, sign, anvil and chat editing helpers | Client |

## Information while you play (HUD)
**Jade** and **MiniHUD** are the two main information sources, and they complement each other. Jade tells you about whatever you are looking at; MiniHUD tells you about where you are and the state of the world around you. **AppleSkin**, **Overflowing Bars**, **Better Mount HUD**, **GUI Followers** and **Ore Height Indicator** each add one specific piece of HUD information.

### Jade
An on-screen tooltip at the top of the screen showing the block or entity you are looking at: name, source mod, crop growth, redstone state, villager profession and more. It works with only the client installed, but many details (item storage, brewing stand fuel, bees in hives) need it on the server too (this pack has it on both).
- **New:** nothing (HUD only).
- **How it works:** shows crop growth/maturity, comparator mode, repeater delay, power level, villager profession and similar details. Optionally shows the mod name on item tooltips. Position, scale, theme, opacity, display mode (toggle, hold or lite) and boss bar overlap handling are configurable. Selectable profiles and text-to-speech narration of the target are available.
- **Controls:** Keypad 0 opens configuration; Keypad 1 toggles the overlay; Keypad 2 toggles liquid display; Keypad 3 shows recipes and Keypad 4 shows uses (these need JEI, which this pack does not have, so they probably do nothing); Keypad 5 narrates the target. Show Details and profile-switch keys also exist (defaults not verified). Laptop players without a numpad should rebind these in Controls.
- **Getting started:** look at any block or mob. Open config with Keypad 0 or via Mod Menu.

### MiniHUD
A client-side "mini F3": you pick which info lines appear and which overlays are drawn.
- **How it works:**
  - Info lines (each individually toggleable): coordinates (including dimension-scaled), block/chunk position, biome, difficulty, block break speed, chunk updates, entity counts, targeted hive/nest bee count, comparator output.
  - Overlay renderers: light level, slime chunks, world spawn chunks, structure bounding boxes, region file boundaries, and shape renderers (circles, spheres).
  - Structure bounding boxes work in singleplayer, and on servers because the pack's servers run Servux (see [Multiplayer & Server](15-multiplayer-and-server.md#servux)).
  - The slime chunk overlay shows which chunks can spawn slimes; it does not show the slime spawn height range.
  - Optional extra item tooltip lines: food nutrition/saturation, bundle contents count, bee count and honey level on hives, axolotl variant on buckets, lodestone compass target, custom model identifiers.
- **Controls:** **H** is the master toggle for all MiniHUD rendering; **H + C** opens the config menu; other hotkeys are bound in that menu.
- **Getting started:** press H + C, enable the info lines you want, bind hotkeys for overlays you use (light level, slime chunks), and press H to hide everything.

### AppleSkin
Reveals food mechanics without changing them.
- **How it works:** food tooltips show hunger and saturation values (hold Shift unless "always show" is enabled). The HUD shows hunger and saturation held food would restore (also off-hand food), estimated health restored, a saturation overlay on the hunger bar, and an exhaustion bar behind it. Hunger, saturation and exhaustion also appear in the F3 screen.
- **Getting started:** hold food to see the preview on your hunger bar; hold Shift over food in an inventory to see numbers.

### Overflowing Bars
Stacks health, armor and armor toughness into compact layered bars instead of extra rows.
- **How it works:** health above ten hearts and armor above vanilla limits are drawn as layers (vanilla color for the base, a single highlight color for extra layers) with a numeric layer counter. Adds a dedicated armor toughness bar. Fixes chat messages covering armor-related HUD elements. Layout, counters and stacking are configurable.
- **Pack note:** config is in `config/overflowingbars-client.toml`.

### Better Mount HUD
While riding a horse, donkey or other mount, your food bar and the mount's health show at once. The experience bar stays visible and is replaced by the jump bar only while you are actually charging a jump. (Also relevant to [Transport & Movement](13-transport-and-movement.md).)

### GUI Followers
A client-side HUD list of tamed, non-sitting pets near you, showing each one's health percentage and distance in blocks, so you do not leave a wolf behind.
- **Pack note / defaults:** header "Followers:", health % and distance shown, list at top left, 50 block scan radius, refreshed every 2 seconds. Position, colors and formats are configurable. Sitting pets are not listed.
- **Getting started:** tame a pet and keep it standing; the list appears automatically.

### Ore Height Indicator
A compact HUD overlay that ranks ores (and any extra blocks you add) by how suitable your current height is for finding them. Optionally shows a percentage, which is not an absolute spawn chance.
- **How it works:** compares your Y level with each ore's best detected height. Add any registered block via the config screen (search by name or registry ID); selected blocks stay visible even below the minimum suitability. Other options: HUD position, icons, UI scale, animated reordering, update interval, max entries.
- **Getting started:** the HUD is **off by default** in this pack. Open the mod's config (via Mod Menu) and turn it on, then move the HUD, choose blocks and set minimum suitability.

### Boat Item View
Shows the item in your hand while you sit in a moving boat, which vanilla hides. Rendering only; you still cannot use the item. A client config lists which items stay displayed (supports `modid:*` wildcards). Configure via `config/boatiview` or Mod Menu and check that "Show Items in Moving Boat" is enabled. (Also relevant to [Transport & Movement](13-transport-and-movement.md).)

### Plague's Chat Timestamps
Adds a customizable timestamp to every chat message, handy after being AFK. Choose 12 or 24 hour time, seconds, milliseconds and date parts (year, month, day, weekday, time zone; timezone is detected automatically). Style options: color, bold, italic, underline, or show the timestamp only on hover instead of as a prefix. In-game settings need Mod Menu and Cloth Config.

## Tooltips
Several mods touch tooltips, each with a different job. **Adaptive Tooltips** controls layout, **Durability Tooltip** and **EnhancedTooltips** add information, **Enchantment Descriptions** and **Enchantment Numbers Fix** improve enchantment text, and **Shulker Box Tooltip** previews containers. EnhancedTooltips overlaps with Durability Tooltip (both show durability) and with Adaptive Tooltips (both change layout), so settings may need adjusting to avoid duplicated lines.

### Adaptive Tooltips
Keeps long tooltips (heavily enchanted or modded items) on screen, and lets you scroll tall or wide ones with the mouse wheel.
- **How it works:** wrapping modes Off, Screen width, Remaining width, Half screen width, and Smart (wraps lines much longer than the rest, capped at 3/4 screen width); can replace vanilla wrapping. Positioning options: Bedrock-style centering on the cursor, aligning to the least obstructive corner, prioritizing the top of tall tooltips, preventing vanilla clamping at the left edge. Optional transparency and removal of extra padding on the first line. Smooth scrolling, direction (Windows or macOS style) and sensitivity are configurable.
- **Controls:** keybinds "Enable Tooltip Scrolling" and "Enable Horizontal Scrolling" in Controls (defaults not confirmed). Hold the key and scroll over a tooltip.
- **Getting started:** open config via Mod Menu (YACL screen) and pick a wrapping mode.

### Durability Tooltip
Adds a durability line to tooltips in one of three styles: numbers (e.g. 120 / 250), a bar, or text (Pristine, Slightly damaged, Severely damaged, Nearly broken, Broken). Style is selected in the config file. Works without a server install. Hover over a tool or armor piece.

### EnhancedTooltips
- **How it works:** extra info for food, armor, durability, bucketed entities, plus spawn egg, map and painting previews. Badges show an item's category and the mod name for non-vanilla items. Optional rarity line. Optional pop-up animation and bouncing item preview; configurable border color (by rarity, item name or custom gradient), scale and spacing.
- **Pack note:** configured through a YetAnotherConfigLib screen (Mod Menu).

### Enchantment Descriptions
Adds a short description of what each enchantment does to the tooltip of enchanted books (for example Protection: reduces damage from most sources). Covers all vanilla enchantments and many modded ones, translated into many languages. Hover over an enchanted book in your inventory, enchanting table or anvil. (Also relevant to [Enchanting & Magic](07-enchanting-and-magic.md).)

### Enchantment Numbers Fix
Shows enchantment levels above 10 as Roman numerals (e.g. Sharpness XV) instead of decimal numbers, consistently in tooltips and book names. Purely cosmetic; only relevant when levels exceed 10 (commands, datapacks, other mods). (See [Enchanting & Magic](07-enchanting-and-magic.md).)

### Shulker Box Tooltip
Hover a shulker box in any inventory and hold Shift to preview its contents without opening it. Also works for chests, barrels and other containers. (See [Storage & Inventory](03-storage-and-inventory.md).)
- **Controls:** Shift for the compact preview; Alt + Shift for the full layout (defaults). Config via the Mod Menu gear icon or `config/shulkerboxtooltip.json5`.
- **How it works:** preview color follows shulker color; optional loot table name display (off by default); ender chest preview works when installed on the server.

## Recipe browsing
### Roughly Enough Items (REI)
Item and recipe browser beside the inventory: look up recipes and uses, search items, favourite them and fill crafting grids. A server component lets REI receive recipe data. (See [Recipes & Crafting Tweaks](../03-reference/01-vanilla-changes.md).)
- **How it works:** advanced search syntax: `@modname` searches by mod, `#text` searches tooltips, `$tag` searches tags, `r/regex/` uses regular expressions, quotes allow spaces, `|` means OR. Also craftable filter, dark theme and reduced motion options, and a recipe export keybind (unbound by default). On servers REI may lack recipe data; an operator can run `/recipe give @p *` to unlock all recipes.
- **Controls:** **A** while hovering favourites an item. Hover over an item and press **R** for recipes or **U** for uses (REI's standard keys).
- **Getting started:** open your inventory; the item list appears on the right; click an item for its recipe.

### Roughly Enough Professions
A client-side REI addon that shows villager profession information inside REI. Requires REI. No published description exists; based on the jar description "Adds info about professions to REI" (unverified details).

### No Recipe Book
Removes the recipe book button and panel from the inventory and crafting screens for a cleaner look. With the book gone, use REI to look up recipes.

## Menus and screens
### Cherished Worlds
Click the star next to a world or server icon on the select screens to bookmark it. Starred entries are pinned to the top (ordered by last played) and cannot be deleted until unstarred. Works for singleplayer and multiplayer lists.

### Folders! (Organizable Play Screens)
Organize singleplayer worlds and multiplayer servers into named folders on the play screens: create folders, move entries in and out, the current path is shown at the top, and search still works. Folder data is kept in `organizable_worlds.dat` and `organizable_servers.dat`; removing the mod restores the normal list.
Cherished Worlds and Folders both change the play screens; they do different jobs (pinning vs. grouping) and can be used together (compatibility unverified).

### Better Statistics Screen
Replaces the vanilla statistics screen (pause menu > Statistics) with one you can search, filter, sort and group. Item and mob stats appear in a visual grid with mobs rendered on screen (an option makes GUI mobs follow the cursor). Statistics files can be saved, loaded, viewed in tabs and shared.
- **Controls:** `/statistics` (optional; disabled via the "Register commands" config option) edits or clears player statistics and reads stat values; usable from datapacks. Permission level presumed operator (unverified).

### Paginated Advancements
Replaces the small advancements screen with a larger one with paginated tabs, so the pack's many advancement tabs fit. Pin the tabs you are working on; the screen remembers the last opened tab. Options: disable background fading on hover and tab spacing. Datapacks and mods can register extra advancement frame types with custom colors. (See [Progression & Advancements](../05-datapacks/bacap.md).)

### Reese's Sodium Options
Replaces Sodium's video settings screen with a tabbed layout featuring a search bar, collapsible groups, tooltips, and per-option reset and undo buttons. Open Video Settings as usual. Turn it off with "Enable Reese's Sodium Options" in its General group to return to Sodium's default screen.
- **Controls:** Shift + scroll adjusts sliders; keyboard navigation, narration and optional Controlify controller support; optional color themes and option ID display.

## Books and signs
### Stendhal
Client-side editor improvements for books, signs, the anvil rename box and chat. Because it only uses vanilla features, players without the mod still see the results.
- **How it works:** Book editor: copy/paste/clear single pages or whole books, add or remove pages, import and export books to disk, per-page character counter (vanilla 256-character limit), color and formatting buttons. Signed books get page navigation and search. Sign editor: clear, copy, paste, save to and load from disk. A picker with 70+ unicode characters usable in books, signs, chat and anvil names.
- **Pack note:** options in `config/stendhal/stendhal.properties`.

### FixBookGUI
Moves the book screen (writing, reading, lectern) to the vertical center of the screen instead of the top, fixing Mojang bug MC-61489. No configuration.

### Item Highlighter
Shows a small animated star on newly picked-up items so new stacks are easy to spot in the inventory. The marker can be cleared when the inventory closes and/or on hover (configurable), can be gold or match the item name color, and can be restyled with a resource pack.

## Also relevant
- **Mod Menu** (client) adds a Mods screen to the title and pause menus and quick access to config screens (used by most mods above); can filter library mods and check Modrinth updates.
- **Amecs** (client) improves Controls: Alt/Ctrl/Shift modifiers, shared keys, a keybind search bar, and keybinds for toggling auto jump and each skin layer, plus an alternative Escape key. Useful given the number of keybinds in this pack.
- **Xaero's Minimap** (Z enlarge, B waypoint, U waypoint list) and **Xaero's World Map** (M) provide the minimap and full map; see [World Generation & Exploration](11-world-generation-and-exploration.md) for maps and navigation.
- **Areas** (client): place a sign to define a named area; entering or leaving shows a top-of-screen message. `/areas` lists nearby area signs.
- **AFK Display** datapack ([details](../05-datapacks/afk-display.md)): idle players' names turn grey in the tab list and name tag.
- **Full Brightness Toggle**: G toggles maximum gamma (rebindable). **Tweakeroo** also has a gamma override.
- **Tweakeroo** (client; X + C opens config; `#fc` Free Camera presets) and **WI Zoom** (zoom key bound in Controls, default unconfirmed) provide client tweaks and zoom.
- **Inventory Profiles Next** (client) and **TrashSlot** (T show/hide, Delete deletes item under cursor, Shift+Delete deletes all of that type) are inventory-screen tools; see [Storage & Inventory](03-storage-and-inventory.md).
- **Trinkets Updated** provides the accessory slot screen and tooltips for other mods' trinkets.
- **Horse Expert**: craft and wear a monocle, then look at a tamed horse, donkey, mule or llama to see health, speed, jump height and storage slots.
- **Hide Experimental Warning** hides the experimental-settings warning screens and the yellow triangle in the world list.
- **Bobby** caches chunks so render distance can exceed the server's view-distance.
- **Extreme Sound Muffler** mutes or lowers almost any sound, with ranged anchors; open key assigned in Controls.
- **Simple Voice Chat** (V opens menu): proximity voice chat; needs the mod on both client and server.
- **Sneaky Tweaks**: sweet berry bushes do not hurt a sneaking player, sneaking on lit campfires grants temporary damage immunity, and crouch bridging lets a sneaking player cross short gaps.
- **WorldEdit CUI** draws WorldEdit selection outlines (needs WorldEdit; keys: toggle CUI visibility, clear selection, toggle chunk border).
