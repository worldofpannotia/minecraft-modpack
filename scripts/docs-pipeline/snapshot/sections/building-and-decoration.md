# Building & Decoration

This part of the pack covers everything that helps you design, place and decorate builds. **Minekea** (the pack author's own mod) supplies thousands of blocks and furniture pieces; a handful of smaller mods tweak banners, paintings, item frames and anvils; and **Litematica** and **WorldEdit** (with **WorldEdit CUI**) provide large-scale building tools. Many small helper mods that change how placing and breaking works are listed under [Also relevant](#also-relevant).

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| All Hallows Steve | Dye and carve pumpkins with stencils; lit, candle-lit and wearable pumpkins | Both |
| Anvil Restoration | Repair placed anvils with iron ingots, damage them with obsidian | Server |
| Artificial Heart | Harmless decorative Creaking Hearts, clipped eyeblossoms, pale pumpkins and a friendly Creaking Golem | Both |
| Banner Tweaks | Raises the banner pattern layer limit from 6 to 12 (configurable) | Both |
| Cycle Paintings | Right-click a painting with another painting to cycle its motive | Server |
| Fast Item Frames | Item frames as blocks; adds dyeing, invisible and waxed frames | Both |
| Litematica | Schematic rendering, verifier and area copy/paste (no printer) | Client |
| Minekea | Huge block and furniture mod: crates, jars, bookshelves, furniture, beams, covers, compressed blocks, tools | Both |
| Sponj | Sponge variant whose radius grows with connected sponjes; water and lava versions | Both |
| WorldEdit | In-game map editor: selections, copy/paste, brushes (op only) | Both |
| WorldEdit CUI | Draws WorldEdit selections in the world | Client |

## Minekea

Minekea is the pack's main building and furniture mod. Start by crafting a **Wrench** and a few **Crates**, then try furniture (chairs, tables, bookshelves) and beams and covers for building. The Minekea creative tabs (Beams, Compressed Blocks, Covers, Dyed Blocks, Furniture) list the blocks. Minekea ships its own guidebook, the "Minekea Catalogue" (Patchouli); Patchouli is not currently in the pack, so the guidebook is unavailable for now. Block family counts below are approximate. Recipes were read from the mod's generated recipe data and have not all been tested in-game (unverified in places).

<!-- maintainer: Recipes were read from the author's generated recipe JSON in the repo (10.1.0 for 26.2), because the jar facts list only ~400 of ~4,400 recipes. Counts approximate. To check in game: (1) Ancient/Doom/End Lantern recipes are identical so only one can be crafted; others maybe creative-only. (2) Nugget Bags have no craft recipe; sacks need bags, so bags look creative-only. (3) Honey Bucket has no recipe. (4) Vanilla barrel and bookshelf recipes are overridden to oak-only (vanilla accepted any planks). (5) Jar capacity is 7 compressed stacks plus 1 live stack. (6) No pack config override affects Minekea. (7) Mod Patchouli book exists alongside the pack's pannotia book (neither available without Patchouli). (8) Depends on Architectury, ChimericLib, YACL; wrench logic lives in ChimericLib. (9) Painter/wrench/hammer behavior taken from source, not tested. -->

### Tools

| Item | Recipe | Notes |
|---|---|---|
| Wrench | 4 iron ingots in a wrench shape (` # ` / ` ##` / `#  `) | Right-click a block to cycle its facing or axis (stairs, glazed terracotta, logs, hoppers, repeaters and more). Slabs flip top/bottom. Chests and beds are skipped. On beams, click a side to toggle that connection; on covers it changes the face the cover sits on. Tagged `c:tools/wrenches`. |
| Block Painter | ` NW` / ` SN` / `S  ` (N = iron nugget, S = stick, W = any wool) | Right-click in the air to open its GUI and load up to a stack of each of the 16 dyes. Press **=** (default, "Cycle Painter Color", in the Minekea controls category) to change the selected colour; the durability bar shows the dye left. Right-click a coloured block to recolour it for one dye. Works on Minekea dyed blocks plus vanilla wool, concrete, concrete powder, terracotta and stained glass. Creative players use no dye. |
| Hammers (Stone, Copper, Iron, Gold, Diamond, Netherite) | `ISI` / ` S ` / ` S ` with I = the material and S = stick; Netherite can also be smithed from a Diamond Hammer | Random block placers that also work as pickaxes. Hold the hammer in the hotbar with blocks in the slots to its right; right-click places a random one, weighted by stack size (40 stone + 10 gravel places stone about 4 times as often). Uses 4 / 4 / 5 / 6 / 7 / 8 slots respectively (stone, copper, iron, gold, diamond, netherite). Each placement costs 1 durability. |

### Furniture and display

| Block | How to obtain | Notes |
|---|---|---|
| Chairs and Stools (rustic and stripped, 12 woods) | Chair (makes 2): `P ` / `PP` / `LL`. Stool (makes 2): `PP` / `LL`. P = planks, L = logs (stripped logs for stripped variants) | Right-click to sit. |
| Tables (rustic and stripped, 12 woods) | Makes 3: `XXX` / `# #` / `# #`, X = planks, # = logs or stripped logs | Connect with neighbouring tables along both horizontal axes. |
| Shutters (rustic and stripped, 12 woods) | Makes 6: three rows of `#X#`, # = logs or stripped logs, X = planks | Open like a trapdoor but swing a full 180 degrees; can be waterlogged. |
| Display Cases (12 woods, rustic and stripped) | ` G ` / `X X` / `###` with G = glass, X = planks, # = logs or stripped logs | Holds one item. Right-click to put an item in; right-click again to rotate it; sneak-right-click to take it out. A comparator reads a signal depending on the rotation, so cases work as simple dials. Mob and player heads render specially. |
| Shelves (Floating and Supported, 12 woods) | Floating (makes 3): `XXX` / `# #` / `XXX`, X = slab, # = iron ingot. Supported (makes 3): `XXX` / `# #` / `X X`, X = slab, # = iron nugget | Wall-mounted with 4 item slots. Right-click a spot with an item to place it; sneak with an empty hand to take it back. |
| Armor-oires (12 woods) | slab, armor stand, slab / slab, chest, slab / 3 planks (same wood) | 16 slots holding 4 full armour sets, shown inside. Right-click a spot while holding an armour piece; each spot accepts only its fitting type. Sneak with an empty hand to take it out. Contents drop when broken. |
| Pillows (16 colours) | 2x2 of matching wool; uncraft 1 pillow into 4 wool | Cancel all fall damage on landing. |
| Framed Planks (12 woods, normal and stripped) | Shapeless: 4 planks + 1 log (or stripped log) makes 6 | Decorative. |
| Fake Cake | Makes 3: `AAA` / `BEB` / `CCC`, A = white carpet, B = white dye, C = brown wool, E = redstone | Cannot be eaten. Tooltip: "This cake is a lie!" |
| Votive Candles (17 colours) | Shapeless: 4 candles of one colour + 1 glass makes 4 | Work like vanilla candles (in the candles tag), on a small glass pedestal. |
| Ancient, Doom and End Lanterns | `###` / `#P#` / `#T#`, # = iron nugget, P = ender pearl, T = torch | Cosmetic lantern variants. The three recipes are identical in the data, so only one may be craftable (unverified). |
| End(less) Rod | Shapeless: 1 end rod | End rod without the base; can be uncrafted back into an end rod. |

### Bookshelves and secret doors

Minekea adds **43 bookshelf variants**, crafted (makes 3) as 3 of the base block / 3 books / 3 of the base block. Bases include planks of every wood except oak, bone block, stone bricks, smooth stone, the polished stones (andesite, basalt, blackstone, deepslate, diorite, granite, tuff, cinnabar, sulfur), several brick types (deepslate, nether, red nether, warped nether, prismarine, end stone, quartz, tuff, polished blackstone, cinnabar, sulfur), prismarine, dark prismarine, purpur, smooth quartz and the chiseled and potent cinnabar and sulfur blocks. The vanilla bookshelf is used for oak. All 43 count as enchantment power providers like vanilla bookshelves; they also come in slab, stairs, vertical slab and vertical stairs forms (the slab and stairs forms are not enchanting power providers).

**Bookshelf Doors** (6 bookshelves in a 2x3 grid make 3) and **Bookshelf Trapdoors** (6 bookshelves in a 3x2 grid make 12) come in 12 woods, using the bookshelf of that wood. They look like a bookshelf when closed and open like normal wooden doors.

### Crates, barrels, jars and compressed storage

| Block | How to obtain | Notes |
|---|---|---|
| Crates (12 woods) and Trapped Crates | `#X#` / `XXX` / `#X#`, # = logs, X = planks of the wood. Trapped crate: crate + tripwire hook | 54 slots (double-chest size) in one block. Two adjacent crates of the same type merge into a large crate. Trapped crates emit a redstone signal while open. Woods: oak, spruce, birch, jungle, acacia, dark oak, mangrove, cherry, pale oak, bamboo, crimson, warped. |
| Barrels (11 extra woods) | `PSP` / `P P` / `PSP`, P = planks, S = slab of the same wood | 27 slots like vanilla. |
| Egg Crates (egg, brown, blue) | 3x3 of eggs; uncraft into 9 | Decorative storage block. |
| Glass Jar | Makes 3: ` L ` / `G G` / `GGG`, G = glass pane, L = any planks | See below. |
| Item Storage Blocks (about 30 types) | 3x3 of the item; uncraft 1 into 9 | Apple, golden apple, armadillo scute, beetroot and seeds, blaze powder and rod, breeze rod, carrot, charcoal, chorus fruit, ender pearl, flint, leaf litter, leather, melon and pumpkin seeds, nether star, paper (Wallpaper), phantom membrane, potato, stick, sugar, sugar cane, totem of undying, wheat seeds, wildflowers, wind charge, and Copper/Gold/Iron Nugget Sacks. Some render inside a brown sack: right-click with shears to remove it, with leather to put it back. |
| Nugget Bags (copper, gold, iron) | Only recipe uncrafts a Nugget Sack into 9 bags | No recipe makes bags from nuggets, so they may be creative-only (unverified). |

**Glass Jar.** Holds one fluid (up to 8 buckets) or one kind of item (about 8 stacks) and keeps its contents when broken. Right-click with any jar-storable item (about 100: dyes, concrete powders, seeds, sugar, redstone, glowstone dust, sand, gravel, eggs, apples, leather, honeycomb, mushrooms and more) to store it; sneak with an empty hand to take a stack out. Right-click with a filled bucket to pour in water, lava, milk or honey, and with an empty bucket to take it back. Water and honey bottles add 0.33 buckets; glass bottles draw them back out. Jars work with hoppers. Using the jar item on a bee, vex, allay, silverfish, endermite, bat or tiny sulfur cube captures it; sneak-use with a captured mob on a block releases it.

### Building blocks

| Family | How to obtain | Notes |
|---|---|---|
| Compressed Blocks 1x-9x (about 160 base blocks) | 3x3 of the base block for 1x; 3x3 of 1x for 2x; continue to 9x. Uncraft 1 block of tier N into 9 of tier N-1 | Stone types, bricks, planks and logs, concrete, terracotta, glazed terracotta, metal blocks, soils, sand, nether and end blocks, cinnabar and sulfur and more. The tooltip shows tier and block count. |
| Beams (155 base materials) | Makes 6: `# #` / `# #` / `# #` with # = the base block | Between a wall and a fence post. Connect to adjacent blocks by default; wrench a side to toggle. |
| Covers (155 base materials) | Makes 16: `# #` / `   ` / `# #` | Thin carpet-like layer that can be placed on any face; rotate with a wrench. |
| Dyed Blocks (12 bases x 16 colours) | Makes 8: base block ring around 1 dye | Bases: stone, smooth stone, stone bricks, cobblestone, bricks, mud bricks, oak planks, bone block, calcite, prismarine, prismarine bricks, dark prismarine. Recolour with the Block Painter. |
| Compressed Dye Blocks (16 colours) | 3x3 of one dye; uncraft into 9 | Behave like honey blocks (slow entities, jump factor 0.5, reduced fall damage). Cannot be used in redstone contraptions. |
| Slabs, Stairs, Vertical Slabs, Vertical Stairs | Slab `###` makes 6; stairs make 8; vertical slab (3 in a column) makes 6; vertical stairs (`###` / ` ##` / `  #`) make 8 | Added for logs, wood, stripped logs and wood of every wood type (plus bamboo block and mosaic), many stone, brick, copper, cinnabar and sulfur blocks, and all 43 bookshelf variants. |
| Basalt Brick family | Bricks: 2x2 smooth basalt (makes 4) or stonecut. Chiseled: 2x2 bricks or stonecut. Cracked: smelt bricks. Mossy: bricks + vine. Crimson: + weeping vines. Warped: + twisting vines | Each type except chiseled also has slab, stairs, vertical slab, vertical stairs and wall. |
| Warped Nether Bricks | `AB` / `BA`, A = warped wart, B = nether brick | Also has slab, stairs, vertical variants and wall. |
| Warped Wart | 9 from a Warped Wart Block (shapeless) | Plantable like nether wart (age 0-3). Does not generate naturally. |
| Wax (17 colours) and Wax Blocks | Smelt a candle (or honeycomb for plain wax); 9 wax make a Wax Block; 1 block gives 9 | Wax blocks are slightly less slippery than ice (friction 0.9) and do not stick to slime. |

### Honey and milk

Honey and milk exist as fluids. There is no recipe for the Honey Bucket: fill a cauldron or glass jar with honey bottles, then collect honey with a bucket. Honey applies Slowness III while you touch it and briefly after; a honey cauldron applies brief slowness and extinguishes fire. Standing in milk fluid or a milk cauldron removes all status effects.

### Vanilla changes

- Barrel recipe now needs oak planks and oak slabs (other woods use Minekea recipes); the vanilla barrel texture is slightly modified.
- Bookshelf recipe now needs oak planks around 3 books (yields 1); other woods and stones use Minekea recipes that yield 3.
- End Rod can be crafted from an End(less) Rod.
- New uncrafting recipes: egg crate, compressed dye block, pillow, compressed storage and building blocks. Smooth basalt can be stonecut into Basalt Bricks and Chiseled Basalt Bricks.
- A milk bucket right-clicked on a block (not sneaking) places a milk fluid source like a water bucket; milk also fills cauldrons.
- Sneak-right-clicking an allay with a glass jar does not give or take items, so the jar can capture it.
- Minekea bookshelves count as enchantment power providers.

## Building tools and schematics

### Litematica
Client-side schematic mod. Load or create schematics, render them as ghost blocks, verify your build against them, and copy, paste or edit areas. It has no built-in printer. Press **M** and open Load Schematics, then place the schematic with the tool item (default: a stick) or from Schematic Placements. The Schematic verifier lists missing or wrong blocks. Easy Place is optional and may be flagged by anti-cheat on some servers; check server rules first. Rendering does not work properly with shaders (Sodium is in the pack; shaders are an optional extra), so disable shaders while using schematic rendering.
- **Controls:** M main menu; M+C config; M+R toggle all rendering; M+G toggle schematic rendering; M+T toggle tool item; M+P placements list; M+V verifier; Numpad - placement config; Numpad * area editor; Page Up/Down change render layer; Ctrl+scroll with tool cycles mode; Alt+scroll nudges placement or selection; Ctrl+M toggles sub-mode. Keys differ on non-QWERTY layouts.
<!-- maintainer: Fork by sakura-ryoko; requires MaLiLib. -->

### WorldEdit and WorldEdit CUI
**WorldEdit** is an in-game map editor with selections, copy/paste, schematics, brushes and scripting. It needs operator permission on servers; in single player, cheats must be enabled (configurable). Common commands: `//wand`, `//pos1`, `//pos2`, `//set`, `//copy`, `//paste`, `//undo`, `//brush`, and many more (see the WorldEdit documentation at worldedit.enginehub.org). **WorldEdit CUI** is a client-side add-on that draws selection outlines and grids in the world (colours for cuboid, polygon, ellipsoid and cylinder regions and chunk boundaries are set via Mod Menu); it is useless without WorldEdit. Controls: Toggle CUI visibility, Clear WorldEdit selection, Toggle Chunk Border.

## Decoration and small tweaks

### Fast Item Frames
Item frames become blocks instead of entities, which is faster and means they react instantly to supports breaking or being moved by pistons, and work with `/setblock`. Added features:
- **New:** dyed item frames and dyed glow item frames (item frame + any dye, shapeless).
- **How it works:** Shift + right-click with an empty hand makes a frame invisible and shows the item larger. Use honeycomb on a frame to wax it, locking rotation, changes and visibility toggling. Optional config: hide item names while looking at displayed items, and convert existing vanilla item frame entities to blocks when chunks load.

### Cycle Paintings
Right-click a placed painting while holding any painting item to cycle its motive; crouch + right-click goes back one. Works with modded paintings. Config can blacklist motives (the default ignores the "infernalexp" prefix). Whether only same-size motives are offered is unverified.

### Banner Tweaks
The banner pattern layer limit rises from 6 to 12 by default (config range 1-32 in `config/bannertweaks.json5`). Looms, rendering and map markers handle taller stacks.
<!-- maintainer: pack may override the default of 12; check client/overrides/config for bannertweaks.json5. -->

### Anvil Restoration
Right-click a placed anvil with an iron ingot to repair it one damage stage (ingot consumed). Right-click with obsidian to damage it one stage (not consumed; it never breaks the block).

### Sponj
A reusable sponge. Touching sponjes combine to enlarge the absorption radius.
- **New:** **Sponj** (shapeless: 2 vanilla sponges give 2 sponj) absorbs water. **Lava Sponj** (Sponj + magma cream) absorbs lava. **Wet Sponj** is a Sponj that absorbed water; it dries in the Nether or smelts back into a Sponj. **Wet Lava Sponj** dries in the End and works as furnace fuel smelting 128 items, leaving a dry Lava Sponj (insert only one at a time or you won't get the dry sponj back).
- **Advancements:** Soak it all up, Big Gulp (dry a region with 16+ connected sponjes), Spill Response Team (absorb 100,000 blocks of water), Dry Heat, Space Heater.

### Artificial Heart
Harmless decorative versions of Pale Garden features, made by the pack author.
- **Detached Creaking Heart:** strip a vanilla Creaking Heart with an axe. Decorative; spawns no creakings.
- **Clipped Eyeblossoms (open/closed, and potted):** use shears on an eyeblossom to freeze it open or closed.
- **Pale Pumpkin, Carved Pale Pumpkin, Pale Jack o'Lantern, seeds and stem:** pumpkin patches grow naturally in Pale Gardens; seeds and jack o'lantern are craftable. A carved pale pumpkin worn as a helmet stops creakings noticing you.
- **Creaking Golem:** build a golem shape from pale oak fence and logs around a Creaking Heart, topped with a carved pale pumpkin or jack o'lantern. Friendly and sturdy; freezes when stared at but never attacks. Built around a Detached Creaking Heart it becomes an inert statue.
- Also adds a shaped creaking heart recipe and shapeless gray and orange dye recipes.
<!-- maintainer: recipe inputs not extracted; check jar recipes before adding a recipe table. Two advancements: Change of Heart, and a golem summon one. -->

### All Hallows Steve
Halloween-themed pumpkin decorating, made by the pack author.
- **Pumpkin Carving Station:** craft from an iron ingot, shears, a crafting table and some planks. Use it to dye and carve pumpkins.
- **Dyeing:** put a pumpkin and up to 3 dyes in the station. Dyed pumpkins can be re-dyed, and new dyes mix with the existing colour.
- **Carving:** place up to four stencils around the pumpkin to carve its four sides. Stencils are not used up. Craft a Blank Stencil from paper and a pumpkin seed, then combine it with a matching item (for example a creeper head for the Creeper stencil). The Heart, Jigsaw, Spawner and Structure Block stencils cannot be crafted; find them as rare loot in village houses, strongholds, woodland mansions, dungeons, ancient cities and end cities.
- **Lighting:** craft a decorated pumpkin with a torch to light it (torch 15, soul torch 10, copper torch 14, redstone torch 7; the glow colour follows the torch). Sneak and use a candle on a decorated pumpkin to add up to four candles (light 3, 6, 9, 12). A pumpkin holds either candles or a torch, not both. Shear it to take the contents back, snuff candles with an empty hand and relight with flint and steel. Sneak with an empty hand to inspect what is inside. Dispensers can light, unlight and shear pumpkins.
- **Vanilla pumpkins:** a torch on a carved pumpkin makes a jack o'lantern; shears on a jack o'lantern take the torch back.
- **Wearing:** decorated pumpkins (not lit ones) can be worn as a helmet. Other players see them and endermen are not angered when you look at them. You see through the carved openings, and an uncarved face blocks your view completely. Choose the forward side with the "Turn Worn Pumpkin" key (unbound by default); a config option (also in Mod Menu) lowers how much the pumpkin blocks your view.
- **Advancements:** a set for crafting the station, dyeing, carving, wearing and lighting pumpkins, and collecting stencils. Two are secret.
<!-- maintainer: content comes from the mod's README (1.0.1), not yet verified in game; see TEST_PLAN in the mod repo. -->

## Also relevant

- **Miniblock Merchants** and the Mini Blocks datapack ([world-of-pannotia](../datapacks/world-of-pannotia.md)): 25 villager professions sell nearly 1,000 small decorative miniblocks, and a stonecutter turns one full block into 8 Mini blocks (custom-skinned player heads).
- **More Mob Heads** ([world-of-pannotia datapack](../datapacks/world-of-pannotia.md)): almost every mob can drop a decorative head; Looting raises the chance.
- **Pannotia datapack** ([world-of-pannotia](../datapacks/world-of-pannotia.md)): recipe tweaks including faster copper oxidation by crafting, extra dye recipes, coral and fan conversion, and concrete powder from blasting.
- **Armor Statues** ([datapack](../datapacks/armor-statues.md)): a book that edits armor stands and item frames (poses, position, limbs, locking, invisible frames).
- **VanillaTweaks Crafting Tweaks** ([datapack](../datapacks/vanillatweaks.md)): more output from stair, trapdoor, wood and brick recipes, plus extra slab recipes.
- **Reacharound**: Bedrock-style placement for bridging, with an on-screen indicator.
- **KleeSlabs**: breaking a double slab removes only the half you look at.
- **Improved Sign Editing**: auto line wrap on signs, with a toggle button.
- **Scaffolding Drops Nearby**: breaking a scaffolding stack drops all connected pieces at the first block.
- **Ice Prevents Crop Growth**: ice under a crop freezes it at its current stage for decoration (bone meal still advances it).
- **Random Bone Meal Flowers**: bone meal on grass grows any flower in any biome (pack blocks a few special flowers).
- **Smaller Nether Portals**, **Crying Portals** and **Better Portal Linking**: portal building tweaks (1x2, 1x3 and 2x2 portals; crying obsidian frames; matching corner blocks choose which portals connect).
- **Beacon Conduit Tweaks**: configurable beacon and conduit range; a carpet on top hides the beam, tinted glass toggles it.
- **Camel Nostrils**: silly extras including upside-down beds, chests, crafting tables and anvils.
- **MiniHUD**: client-side info HUD with overlay renderers such as light level, slime chunks and structure bounding boxes, useful when planning builds.
- **Houdini Block** (see [Redstone & Automation](redstone-and-automation.md)): place or break blocks without neighbour updates, handy for clean building.
- Minekea storage blocks are also covered in [Storage & Inventory](storage-and-inventory.md).
