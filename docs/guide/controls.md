# Controls and commands

Every keybind and command documented for the pack's mods and datapacks. Keys are the mods' defaults. You can rebind any key in **Options → Controls**, and **Amecs** adds a search bar and modifier keys there. Commands marked *(operators)* need operator permission. `/trigger` commands work for everyone.

## Known default key clashes

| Key | Used by |
|---|---|
| `B` | Xaero's Minimap (create waypoint) · Resource Backpacks (open backpack) |
| `G` | Full Brightness Toggle · Woodwalkers (transform) · ReMorphed (transform) |
| `U` | Xaero's Minimap (waypoint list) · Woodwalkers (unlock/scan) · REI (show uses, while hovering an item) |
| `V` | Simple Voice Chat (menu) · AutoRun (toggle) |

## All controls and commands
| Mod / pack | Command or key |
|---|---|
| [Adaptive Tooltips](mods/interface-and-hud.md#adaptive-tooltips) | Keybinds 'Enable Tooltip Scrolling' and 'Enable Horizontal Scrolling' are assigned in Controls; defaults not confirmed. Hold the key and scroll over a tooltip. |
| [AFK Display (datapack)](datapacks/afk-display.md) | No player commands; fully automatic. |
| [All Hallows Steve](mods/building-and-decoration.md#all-hallows-steve) | Turn Worn Pumpkin: keybind is UNBOUND by default; bind it in Options > Controls. |
| [Amecs (Fabric)](mods/quality-of-life.md#amecs-fabric) | Keybinds added: Toggle Auto Jump, Toggle Cape, Toggle Hat, Toggle Jacket, Toggle Left/Right Sleeve, Toggle Left/Right Pants Leg, and an alternative Escape key (default keys not confirmed). |
| [Areas](mods/maps-and-navigation.md#areas) | /areas - lists all area signs around the player |
| [Armor Statues (datapack)](datapacks/armor-statues.md) | /trigger as_help : show help in chat; /trigger as_help set 3 toggles notifications between chat and action bar |
| [Armor Statues (datapack)](datapacks/armor-statues.md) | /trigger as_help set 2 : get the book (only if the 'Get book from help' admin option is Enabled) |
| [Armor Statues (datapack)](datapacks/armor-statues.md) | /trigger as_trigger set <N> : what the book links run (normally clicked, not typed); 999 = check target |
| [Armor Statues (datapack)](datapacks/armor-statues.md) | /trigger if_invisible : make the item frame in front of you invisible |
| [Armor Statues (datapack)](datapacks/armor-statues.md) | /function armor_statues:admin : (operators) create/remove particle shrine, craftable book, book from help, UUID locking, item-frame fixing, delete unused invisible stands, highlight stands within 64 blocks |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer - general upload information |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer url "<link>" - upload from URL |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer serverfile "<file>" - upload a file from the server folder |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer filebin - upload via Filebin |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer apply <id or file name> - apply to held item |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer range <range> - set audio range of held item |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer info - show audio info of held item |
| [AudioPlayer](mods/multiplayer-and-server.md#audioplayer) | /audioplayer search <name> - search uploaded audio |
| [AutoRun (Fabric)](mods/transport-and-movement.md#autorun-fabric) | V - toggle Auto-Run (default; was O in older versions; rebindable in Controls) |
| [BACAP Torture Edition (Blackbird's Torture Chamber) (datapack)](datapacks/bacap-torture-edition.md) | /function blackbirds_torture_chamber:enable_interactable_trophies |
| [BACAP Torture Edition (Blackbird's Torture Chamber) (datapack)](datapacks/bacap-torture-edition.md) | /function blackbirds_torture_chamber:disable_interactable_trophies |
| [BACAP Torture Edition (Blackbird's Torture Chamber) (datapack)](datapacks/bacap-torture-edition.md) | L (default) - advancements screen |
| [Back (datapack)](datapacks/back.md) | /trigger back : teleport to your last teleport-origin (or death location, if enabled) |
| [Back (datapack)](datapacks/back.md) | /function back:config : (operators) Save Death Location toggle, Delay (/scoreboard players set #delay back.config <ticks>), Cooldown (/scoreboard players set #cooldown back.config <seconds>) |
| [Better Statistics Screen](mods/interface-and-hud.md#better-statistics-screen) | /statistics (optional; can be disabled with the 'Register commands' config option): edit or clear player statistics and read stat values; usable from datapacks. Permission level presumed operator; check in-game. |
| [Better Than Mending](mods/enchanting-and-magic.md#better-than-mending) | Sneak (default Shift) + right-click while holding a Mending item |
| [BlazeandCave's Advancements Pack (BACAP) (datapack)](datapacks/bacap.md) | /function blazeandcave:config - open the pack's config menu (operators). |
| [BlazeandCave's Advancements Pack (BACAP) (datapack)](datapacks/bacap.md) | L (default) - open the advancements screen to browse the BlazeandCave tabs. |
| [BlazeandCave's Advancements Pack (BACAP) (datapack)](datapacks/bacap.md) | /datapack enable - only needed if the pack was not enabled at world creation. |
| [Bookshelf](technical.md#bookshelf) | /bookshelf hand (shows held item ID; debug) |
| [Bottle Your Xp](mods/enchanting-and-magic.md#bottle-your-xp) | Sneak + right-click with an empty bottle |
| [Bottled Air](mods/quality-of-life.md#bottled-air) | Right-click an empty glass bottle while underwater |
| [Carpet](technical.md#carpet) | /carpet |
| [Carpet](technical.md#carpet) | /tick |
| [Carpet](technical.md#carpet) | /log |
| [Carpet](technical.md#carpet) | /player |
| [Carpet](technical.md#carpet) | /script |
| [Continuity](mods/cosmetic-visual-and-audio.md#continuity) | Config screen options: Connected Textures, Emissive Textures, Custom Block Layers (each on/off). |
| [Crawl](mods/transport-and-movement.md#crawl) | Crawl: keybind is UNBOUND by default; bind it in Options > Controls. |
| [Crawl](mods/transport-and-movement.md#crawl) | Config screen titled "Crawl Options". |
| [Cycle Paintings](mods/building-and-decoration.md#cycle-paintings) | Right-click a painting with a painting item (crouch to reverse). |
| [Death Backup](mods/multiplayer-and-server.md#death-backup) | /deathbackup - show available commands |
| [Death Backup](mods/multiplayer-and-server.md#death-backup) | /deathbackup list - list recent deaths with indices (0 is the latest) |
| [Death Backup](mods/multiplayer-and-server.md#death-backup) | /deathbackup load <index> - restore that backup |
| [Diggus Maximus Reborn](mods/quality-of-life.md#diggus-maximus-reborn) | Excavate: default ~ (configurable) |
| [Diggus Maximus Reborn](mods/quality-of-life.md#diggus-maximus-reborn) | Cycle Shape: keybind in Controls |
| [Diggus Maximus Reborn](mods/quality-of-life.md#diggus-maximus-reborn) | Option "Invert Activation" makes holding the key disable excavation instead |
| [Dismount Entity](mods/quality-of-life.md#dismount-entity) | Crouch + right-click the vehicle |
| [Dispenser Configurator](mods/redstone-and-automation.md#dispenser-configurator) | /datapack disable <default dispenser configurators pack> turns off the defaults |
| [Dynamic FPS](technical.md#dynamic-fps) | In-game config screen needs Mod Menu and a config-screen library. |
| [Effective Gear](mods/tools-weapons-and-armor.md#effective-gear) | Use Trim Ability: set in Options > Controls (Bolt and Flow patterns). |
| [Enchanting Commands](mods/enchanting-and-magic.md#enchanting-commands) | /ec <enchantment> <level> - enchants the item in your main hand (Tab auto-completes enchantment names); command name configurable via enchantCommandString (default 'ec') |
| [Explorer's Compass](mods/maps-and-navigation.md#explorers-compass) | Right-click: open structure selection GUI |
| [Explorer's Compass](mods/maps-and-navigation.md#explorers-compass) | Shift + right-click: reset compass |
| [Extreme Sound Muffler](mods/cosmetic-visual-and-audio.md#extreme-sound-muffler) | Key to open the muffler screen can be assigned in Controls (default not documented); the inventory button can be dragged with right mouse or disabled in config |
| [Fast Item Frames](mods/building-and-decoration.md#fast-item-frames) | Shift + right-click (empty hand): toggle frame invisibility |
| [Fast Item Frames](mods/building-and-decoration.md#fast-item-frames) | Honeycomb on frame: wax |
| [Full Brightness Toggle](mods/quality-of-life.md#full-brightness-toggle) | G: toggle full brightness (rebindable in Options > Controls) |
| [Hand Over Your Items](mods/multiplayer-and-server.md#hand-over-your-items) | Sneak + right-click another player with an item: give the entire main-hand stack |
| [Homes (datapack)](datapacks/homes.md) | /trigger sethome  and  /trigger sethome set <ID> |
| [Homes (datapack)](datapacks/homes.md) | /trigger home  and  /trigger home set <ID> |
| [Homes (datapack)](datapacks/homes.md) | /trigger homes |
| [Homes (datapack)](datapacks/homes.md) | /trigger namehome  and  /trigger namehome set <ID>  (hold a renamed name tag in main hand) |
| [Homes (datapack)](datapacks/homes.md) | /trigger delhome  and  /trigger delhome set <ID> |
| [Homes (datapack)](datapacks/homes.md) | /function homes:config : (operators) Max Home Limit (default 1), Delay in ticks (default 0), Cooldown in seconds (default 0) |
| [Inventory Profiles Next](mods/storage-and-inventory.md#inventory-profiles-next) | Config GUI opens via Mod Menu; all hotkeys and modifier keys (include hotbar, move all, only focused item type, just refill stacks) are rebindable there |
| [Inventory Profiles Next](mods/storage-and-inventory.md#inventory-profiles-next) | Mod page mentions R+C for setting shortcuts; other default keys not verified |
| [Jade](mods/interface-and-hud.md#jade) | Keypad 0: open configuration |
| [Jade](mods/interface-and-hud.md#jade) | Keypad 1: toggle overlay |
| [Jade](mods/interface-and-hud.md#jade) | Keypad 2: toggle liquid display |
| [Jade](mods/interface-and-hud.md#jade) | Keypad 3: show recipes (needs JEI) |
| [Jade](mods/interface-and-hud.md#jade) | Keypad 4: show uses (needs JEI) |
| [Jade](mods/interface-and-hud.md#jade) | Keypad 5: narrate target |
| [Jade](mods/interface-and-hud.md#jade) | Show Details and profile-switch keys also exist (defaults not verified) |
| [Just Player Heads](mods/loot-and-drops.md#just-player-heads) | /jph head <playerName> [amount]: give a player head (name ignores capitalisation, amount defaults to 1) |
| [Just Player Heads](mods/loot-and-drops.md#just-player-heads) | /jph cache: clear the head texture cache |
| [Litematica](mods/building-and-decoration.md#litematica) | M: open main menu |
| [Litematica](mods/building-and-decoration.md#litematica) | M+C: config menu |
| [Litematica](mods/building-and-decoration.md#litematica) | M+R: toggle all Litematica rendering |
| [Litematica](mods/building-and-decoration.md#litematica) | M+G: toggle schematic (ghost block) rendering |
| [Litematica](mods/building-and-decoration.md#litematica) | M+T: toggle tool item |
| [Litematica](mods/building-and-decoration.md#litematica) | M+P: placements list |
| [Litematica](mods/building-and-decoration.md#litematica) | M+V: schematic verifier |
| [Litematica](mods/building-and-decoration.md#litematica) | Numpad minus: placement configuration |
| [Litematica](mods/building-and-decoration.md#litematica) | Numpad multiply: area editor |
| [Litematica](mods/building-and-decoration.md#litematica) | Page Up/Down: change selected render layer |
| [Litematica](mods/building-and-decoration.md#litematica) | Ctrl+scroll with tool: cycle tool mode |
| [Litematica](mods/building-and-decoration.md#litematica) | Alt+scroll with tool: nudge placement or selection |
| [Litematica](mods/building-and-decoration.md#litematica) | Ctrl+M: toggle sub-mode |
| [Lootr](mods/loot-and-drops.md#lootr) | /lootr custom: standing on a vanilla chest, turns it into a shared 'starter' chest with a per-player copy of its contents (operator only) |
| [Lootr](mods/loot-and-drops.md#lootr) | /lootr has more subcommands; see the Lootr wiki |
| [Minekea](mods/building-and-decoration.md#minekea) | Cycle Painter Color: = (default), in the Minekea controls category. |
| [Minekea](mods/building-and-decoration.md#minekea) | Wrench: right-click a block. |
| [Minekea](mods/building-and-decoration.md#minekea) | Sneak + empty hand: take items out of shelves, armoires and glass jars; sneak-right-click a display case to take its item. |
| [MiniHUD](mods/interface-and-hud.md#minihud) | H: master toggle for all MiniHUD rendering (info lines and overlays) |
| [MiniHUD](mods/interface-and-hud.md#minihud) | H + C: open the in-game config menu |
| [MiniHUD](mods/interface-and-hud.md#minihud) | Other hotkeys are bound in the config menu |
| [More Effective Tools (datapack)](datapacks/more-effective-tools.md) | None. |
| [Nature's Compass](mods/maps-and-navigation.md#natures-compass) | Right-click: open biome selection GUI |
| [Nature's Compass](mods/maps-and-navigation.md#natures-compass) | Shift + right-click: reset the compass |
| [Open Parties and Claims](mods/multiplayer-and-server.md#open-parties-and-claims) | /opac ... : player config commands |
| [Open Parties and Claims](mods/multiplayer-and-server.md#open-parties-and-claims) | /oclaims ... : claim commands |
| [Open Parties and Claims](mods/multiplayer-and-server.md#open-parties-and-claims) | /oparties ... : party commands (for example /oparties destroy confirm) |
| [Open Parties and Claims](mods/multiplayer-and-server.md#open-parties-and-claims) | /opm : shortcut for party chat |
| [Open Parties and Claims](mods/multiplayer-and-server.md#open-parties-and-claims) | Key ' (apostrophe) : open the mod UI (rebindable in Controls) |
| [Random Village Names](mods/villagers-and-trading.md#random-village-names) | /areas - shows all area signs (including village names) around the player |
| [Reacharound](mods/quality-of-life.md#reacharound) | A key mapping is registered; check the Controls screen for the Reacharound entry. Default key not confirmed. |
| [ReMorphed](mods/mobs-and-creatures.md#remorphed) | ^ (default) - open the morph menu |
| [ReMorphed](mods/mobs-and-creatures.md#remorphed) | G - transform into the selected morph |
| [ReMorphed](mods/mobs-and-creatures.md#remorphed) | R - use the morph ability |
| [ReMorphed](mods/mobs-and-creatures.md#remorphed) | A help screen is available (remorphed.help keybind) |
| [Resource Backpacks](mods/storage-and-inventory.md#resource-backpacks) | B - open the equipped backpack |
| [Resource Backpacks](mods/storage-and-inventory.md#resource-backpacks) | Left-Shift / Left-Alt - tooltip preview |
| [Resource Backpacks](mods/storage-and-inventory.md#resource-backpacks) | All keybinds configurable |
| [Roughly Enough Items (REI)](mods/interface-and-hud.md#roughly-enough-items-rei) | A - favourite hovered item |
| [Roughly Enough Items (REI)](mods/interface-and-hud.md#roughly-enough-items-rei) | /recipe give @p * - vanilla command to reveal all recipes if data is missing |
| [Shulker Box Tooltip](mods/interface-and-hud.md#shulker-box-tooltip) | Shift - compact preview |
| [Shulker Box Tooltip](mods/interface-and-hud.md#shulker-box-tooltip) | Alt + Shift - full preview (defaults) |
| [Shulker Box Tooltip](mods/interface-and-hud.md#shulker-box-tooltip) | Config: Mod Menu gear icon or config/shulkerboxtooltip.json5 |
| [Silence Mobs (datapack)](datapacks/silence-mobs.md) | No commands: use an anvil-renamed name tag on the mob. |
| [Simple Magnets](mods/storage-and-inventory.md#simple-magnets) | Right-click with a magnet: toggle on/off |
| [Simple Magnets](mods/storage-and-inventory.md#simple-magnets) | Shift+right-click with Advanced Magnet: open GUI |
| [Simple Magnets](mods/storage-and-inventory.md#simple-magnets) | Right-click a coil with an empty hand: open its GUI |
| [Simple Magnets](mods/storage-and-inventory.md#simple-magnets) | A key bind to toggle the magnet exists (check Options > Controls for the default) |
| [Simple Voice Chat](mods/multiplayer-and-server.md#simple-voice-chat) | V: open the voice chat menu (settings, groups, mute, disable, hide icons, recording) |
| [Simple Voice Chat](mods/multiplayer-and-server.md#simple-voice-chat) | Push-to-talk, whisper and mute keys are rebindable in Controls |
| [Spawn (datapack)](datapacks/spawn.md) | /trigger spawn : teleport to world spawn |
| [Spawn (datapack)](datapacks/spawn.md) | /function spawn:config : (operators) Delay and Cooldown |
| [StackItUp](mods/storage-and-inventory.md#stackitup) | /stackitup show all \| show [item] \| show hand [player] |
| [StackItUp](mods/storage-and-inventory.md#stackitup) | /stackitup set [item] [count] \| set hand [player] \| set vanilla [default] [new] \| set modified [current] [new] \| set all [current] [new] |
| [StackItUp](mods/storage-and-inventory.md#stackitup) | /stackitup reset all \| reset [item] \| reset hand [player] |
| [StackItUp](mods/storage-and-inventory.md#stackitup) | /stackitup config reload \| loadFromGlobal \| saveToGlobal \| globalConfigAutoApply [true/false] \| restore |
| [StackItUp](mods/storage-and-inventory.md#stackitup) | Commands default to permission level 4 (operators). |
| [Track Raw Statistics (datapack)](datapacks/track-raw-statistics.md) | /scoreboard objectives setdisplay <sidebar\|list\|below_name> <objective> : (operators) show a ts_ objective |
| [Track Raw Statistics (datapack)](datapacks/track-raw-statistics.md) | /scoreboard players get <player> <objective> : read a value |
| [Track Statistics (datapack)](datapacks/track-statistics.md) | /scoreboard objectives setdisplay <sidebar\|list\|below_name> <objective> : (operators) |
| [Trade Cycling](mods/villagers-and-trading.md#trade-cycling) | C: cycle trades (default) |
| [TrashSlot](mods/storage-and-inventory.md#trashslot) | T: show/hide trash slot (default per Modrinth) |
| [TrashSlot](mods/storage-and-inventory.md#trashslot) | Delete: delete item under cursor |
| [TrashSlot](mods/storage-and-inventory.md#trashslot) | Shift+Delete: delete all items of the same type under cursor |
| [TrashSlot](mods/storage-and-inventory.md#trashslot) | Lock/unlock key available in Controls |
| [Tweakeroo](mods/quality-of-life.md#tweakeroo) | X + C - open the Tweakeroo config menu (default) |
| [Tweakeroo](mods/quality-of-life.md#tweakeroo) | #fc <add\|cycle\|del\|del_all\|list\|recall\|rename\|set\|help> - Free Camera presets (typed in chat) |
| [Universal Graves](mods/multiplayer-and-server.md#universal-graves) | /graves - list your graves |
| [Universal Graves](mods/multiplayer-and-server.md#universal-graves) | /graves player <player> - list another player's graves (permission universal_graves.list_others) |
| [Universal Graves](mods/multiplayer-and-server.md#universal-graves) | /graves modify <player> - modify graves (universal_graves.modify) |
| [Universal Graves](mods/multiplayer-and-server.md#universal-graves) | /graves reload - reload config (universal_graves.reload) |
| [Universal Graves](mods/multiplayer-and-server.md#universal-graves) | universal_graves.teleport permission allows teleporting to any grave |
| [Villager Workstation Highlights (datapack)](datapacks/villager-workstation-highlights.md) | /trigger vwh_findStation : locate the workstation of the nearest villager (within 5 blocks) |
| [Wandering Trader Announcements (datapack)](datapacks/wandering-trader-announcements.md) | None. |
| [Wandering Trades (Hermit Edition) (datapack)](datapacks/wandering-trades-hermit-edition.md) | None. |
| [WI Zoom](mods/quality-of-life.md#wi-zoom) | Zoom key - bound in Controls (category 'WI Zoom'); check Controls for the default key. |
| [WITS (What Is This Structure?)](mods/world-generation-and-exploration.md#wits-what-is-this-structure) | /wits - list structures at your position |
| [WITS (What Is This Structure?)](mods/world-generation-and-exploration.md#wits-what-is-this-structure) | /witsop [dimension] [coordinates] - operators only, query any location |
| [Woodwalkers](mods/mobs-and-creatures.md#woodwalkers) | U (default) - unlock/scan a mob |
| [Woodwalkers](mods/mobs-and-creatures.md#woodwalkers) | G (default) - transform |
| [Woodwalkers](mods/mobs-and-creatures.md#woodwalkers) | Shape ability, scan and variants-menu keys are listed in Controls |
| [WorldEdit](mods/building-and-decoration.md#worldedit-and-worldedit-cui) | //wand, //pos1, //pos2, //set, //copy, //paste, //undo, //brush and many more - see https://worldedit.enginehub.org/en/latest/ |
| [WorldEdit CUI](mods/building-and-decoration.md#worldedit-and-worldedit-cui) | Controls: Toggle CUI visibility, Clear WorldEdit selection, Toggle Chunk Border |
| [Xaero's Minimap](mods/maps-and-navigation.md#xaeros-minimap) | Z - enlarge minimap |
| [Xaero's Minimap](mods/maps-and-navigation.md#xaeros-minimap) | B - create waypoint |
| [Xaero's Minimap](mods/maps-and-navigation.md#xaeros-minimap) | U - open waypoint list |
| [Xaero's Minimap](mods/maps-and-navigation.md#xaeros-minimap) | All keys can be rebound in Controls |
| [Xaero's World Map](mods/maps-and-navigation.md#xaeros-world-map) | M - open world map |
