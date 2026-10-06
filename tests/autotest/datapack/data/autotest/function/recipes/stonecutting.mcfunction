schedule function autotest:lib/next 1t
execute unless entity @a[tag=autotest.runner,limit=1] run return run function autotest:lib/skip {id:"stonecutting recipes registered (needs a real player)"}
recipe take @a[tag=autotest.runner] mini_blocks:acacia_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:acacia_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:acacia_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:acacia_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:acacia_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:acacia_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:amethyst_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:amethyst_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:amethyst_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:ancient_debris
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:ancient_debris
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:ancient_debris",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:andesite
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:andesite
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:andesite",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:azalea_leaves
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:azalea_leaves
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:azalea_leaves",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:bamboo_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:bamboo_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:bamboo_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:bamboo_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:bamboo_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:bamboo_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:barrel
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:barrel
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:barrel",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:basalt
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:basalt
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:basalt",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:bee_nest
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:bee_nest
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:bee_nest",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:beehive
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:beehive
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:beehive",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:birch_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:birch_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:birch_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:birch_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:birch_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:birch_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:black_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:black_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:black_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:blackstone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:blackstone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:blackstone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:blast_furnace
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:blast_furnace
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:blast_furnace",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:blue_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:blue_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:blue_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:bone_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:bone_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:bone_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:brain_coral
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:brain_coral
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:brain_coral",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:brown_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:brown_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:brown_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:bubble_coral
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:bubble_coral
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:bubble_coral",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:calcite
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:calcite
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:calcite",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cartography_table
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cartography_table
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cartography_table",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cherry_leaves
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cherry_leaves
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cherry_leaves",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cherry_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cherry_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cherry_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cherry_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cherry_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cherry_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:chest
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:chest
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:chest",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:chiseled_bookshelf
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:chiseled_bookshelf
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:chiseled_bookshelf",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:chiseled_nether_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:chiseled_nether_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:chiseled_nether_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:chiseled_polished_blackstone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:chiseled_polished_blackstone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:chiseled_polished_blackstone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:chiseled_stone_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:chiseled_stone_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:chiseled_stone_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:clay
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:clay
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:clay",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:coal_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:coal_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:coal_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:coal_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:coal_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:coal_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cobbled_deepslate
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cobbled_deepslate
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cobbled_deepslate",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cobblestone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cobblestone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cobblestone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:copper_bulb
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:copper_bulb
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:copper_bulb",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:copper_bulb_lit
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:copper_bulb_lit
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:copper_bulb_lit",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:copper_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:copper_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:copper_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:crafter
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:crafter
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:crafter",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:crafting_table
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:crafting_table
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:crafting_table",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:crimson_nylium
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:crimson_nylium
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:crimson_nylium",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:crimson_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:crimson_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:crimson_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:crimson_stem
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:crimson_stem
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:crimson_stem",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:crying_obsidian
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:crying_obsidian
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:crying_obsidian",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cut_copper
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cut_copper
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cut_copper",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:cyan_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:cyan_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:cyan_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dark_oak_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dark_oak_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dark_oak_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dark_oak_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dark_oak_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dark_oak_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dark_prismarine
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dark_prismarine
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dark_prismarine",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_coal_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_coal_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_coal_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_copper_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_copper_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_copper_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_diamond_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_diamond_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_diamond_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_emerald_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_emerald_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_emerald_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_gold_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_gold_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_gold_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_iron_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_iron_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_iron_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_lapis_lazuli_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_lapis_lazuli_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_lapis_lazuli_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:deepslate_redstone_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:deepslate_redstone_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:deepslate_redstone_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:diamond_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:diamond_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:diamond_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:diamond_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:diamond_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:diamond_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:diorite
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:diorite
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:diorite",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dirt
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dirt
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dirt",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dispenser
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dispenser
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dispenser",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dried_kelp_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dried_kelp_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dried_kelp_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dripstone_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dripstone_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dripstone_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:dropper
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:dropper
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:dropper",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:emerald_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:emerald_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:emerald_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:emerald_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:emerald_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:emerald_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:enchanting_table
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:enchanting_table
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:enchanting_table",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:end_stone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:end_stone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:end_stone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:end_stone_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:end_stone_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:end_stone_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:ender_chest
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:ender_chest
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:ender_chest",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:exposed_copper_bulb
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:exposed_copper_bulb
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:exposed_copper_bulb",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:exposed_copper_bulb_lit
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:exposed_copper_bulb_lit
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:exposed_copper_bulb_lit",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:exposed_cut_copper
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:exposed_cut_copper
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:exposed_cut_copper",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:fire_coral
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:fire_coral
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:fire_coral",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:fletching_table
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:fletching_table
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:fletching_table",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:flowering_azalea_leaves
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:flowering_azalea_leaves
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:flowering_azalea_leaves",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:furnace
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:furnace
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:furnace",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:gilded_blackstone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:gilded_blackstone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:gilded_blackstone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:glowstone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:glowstone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:glowstone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:gold_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:gold_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:gold_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:gold_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:gold_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:gold_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:granite
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:granite
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:granite",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:grass_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:grass_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:grass_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:gravel
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:gravel
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:gravel",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:gray_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:gray_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:gray_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:green_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:green_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:green_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:hay_bale
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:hay_bale
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:hay_bale",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:honey_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:honey_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:honey_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:honeycomb_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:honeycomb_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:honeycomb_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:horn_coral
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:horn_coral
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:horn_coral",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:iron_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:iron_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:iron_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:iron_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:iron_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:iron_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:jukebox
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:jukebox
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:jukebox",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:jungle_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:jungle_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:jungle_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:jungle_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:jungle_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:jungle_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:lapis_lazuli_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:lapis_lazuli_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:lapis_lazuli_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:lapis_lazuli_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:lapis_lazuli_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:lapis_lazuli_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:light_blue_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:light_blue_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:light_blue_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:light_gray_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:light_gray_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:light_gray_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:lime_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:lime_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:lime_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:lit_redstone_lamp
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:lit_redstone_lamp
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:lit_redstone_lamp",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:lodestone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:lodestone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:lodestone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:loom
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:loom
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:loom",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:magenta_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:magenta_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:magenta_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:magma
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:magma
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:magma",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:mangrove_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:mangrove_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:mangrove_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:mangrove_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:mangrove_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:mangrove_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:melon
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:melon
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:melon",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:moss_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:moss_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:moss_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:mossy_cobblestone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:mossy_cobblestone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:mossy_cobblestone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:mud
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:mud
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:mud",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:mud_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:mud_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:mud_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:mycelium
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:mycelium
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:mycelium",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:nether_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:nether_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:nether_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:nether_gold_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:nether_gold_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:nether_gold_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:nether_quartz_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:nether_quartz_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:nether_quartz_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:nether_wart_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:nether_wart_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:nether_wart_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:netherite_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:netherite_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:netherite_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:netherrack
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:netherrack
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:netherrack",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:oak_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:oak_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:oak_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:oak_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:oak_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:oak_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:observer
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:observer
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:observer",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:obsidian
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:obsidian
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:obsidian",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:ochre_froglight
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:ochre_froglight
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:ochre_froglight",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:orange_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:orange_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:orange_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:oxidized_copper_bulb
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:oxidized_copper_bulb
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:oxidized_copper_bulb",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:oxidized_copper_bulb_lit
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:oxidized_copper_bulb_lit
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:oxidized_copper_bulb_lit",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:oxidized_cut_copper
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:oxidized_cut_copper
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:oxidized_cut_copper",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:packed_ice
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:packed_ice
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:packed_ice",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:packed_mud
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:packed_mud
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:packed_mud",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:pale_moss
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:pale_moss
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:pale_moss",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:pale_oak_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:pale_oak_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:pale_oak_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:pale_oak_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:pale_oak_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:pale_oak_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:pearlescent_froglight
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:pearlescent_froglight
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:pearlescent_froglight",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:pink_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:pink_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:pink_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:piston
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:piston
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:piston",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:podzol
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:podzol
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:podzol",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_andesite
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_andesite
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_andesite",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_basalt
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_basalt
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_basalt",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_blackstone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_blackstone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_blackstone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_blackstone_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_blackstone_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_blackstone_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_deepslate
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_deepslate
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_deepslate",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_diorite
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_diorite
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_diorite",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_granite
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_granite
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_granite",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:polished_tuff
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:polished_tuff
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:polished_tuff",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:prismarine
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:prismarine
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:prismarine",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:prismarine_brick
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:prismarine_brick
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:prismarine_brick",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:pumpkin
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:pumpkin
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:pumpkin",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:purple_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:purple_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:purple_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:purpur_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:purpur_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:purpur_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:quartz_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:quartz_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:quartz_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:raw_copper_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:raw_copper_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:raw_copper_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:raw_gold_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:raw_gold_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:raw_gold_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:raw_iron_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:raw_iron_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:raw_iron_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:red_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:red_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:red_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:red_mushroom_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:red_mushroom_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:red_mushroom_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:red_nether_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:red_nether_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:red_nether_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:red_sand
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:red_sand
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:red_sand",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:red_sandstone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:red_sandstone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:red_sandstone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:redstone_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:redstone_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:redstone_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:redstone_ore
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:redstone_ore
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:redstone_ore",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:respawn_anchor
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:respawn_anchor
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:respawn_anchor",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:sand
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:sand
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:sand",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:sandstone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:sandstone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:sandstone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:sculk
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:sculk
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:sculk",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:sea_lantern
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:sea_lantern
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:sea_lantern",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:shroomlight
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:shroomlight
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:shroomlight",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:shulker_box
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:shulker_box
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:shulker_box",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:slime_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:slime_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:slime_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:smithing_table
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:smithing_table
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:smithing_table",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:smoker
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:smoker
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:smoker",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:smooth_stone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:smooth_stone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:smooth_stone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:sniffer_egg
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:sniffer_egg
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:sniffer_egg",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:snow_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:snow_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:snow_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:soul_sand
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:soul_sand
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:soul_sand",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:sponge
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:sponge
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:sponge",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:spruce_log
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:spruce_log
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:spruce_log",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:spruce_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:spruce_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:spruce_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:sticky_piston
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:sticky_piston
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:sticky_piston",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:stone
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:stone
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:stone",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:stone_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:stone_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:stone_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:target
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:target
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:target",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:terracotta
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:terracotta
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:terracotta",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:tnt
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:tnt
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:tnt",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:tube_coral
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:tube_coral
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:tube_coral",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:tuff
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:tuff
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:tuff",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:tuff_bricks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:tuff_bricks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:tuff_bricks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:unlit_redstone_lamp
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:unlit_redstone_lamp
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:unlit_redstone_lamp",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:verdant_froglight
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:verdant_froglight
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:verdant_froglight",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:warped_nylium
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:warped_nylium
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:warped_nylium",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:warped_planks
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:warped_planks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:warped_planks",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:warped_stem
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:warped_stem
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:warped_stem",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:warped_wart_block
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:warped_wart_block
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:warped_wart_block",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:weathered_copper_bulb
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:weathered_copper_bulb
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:weathered_copper_bulb",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:weathered_copper_bulb_lit
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:weathered_copper_bulb_lit
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:weathered_copper_bulb_lit",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:weathered_cut_copper
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:weathered_cut_copper
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:weathered_cut_copper",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:white_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:white_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:white_concrete",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:wool
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:wool
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:wool",why:"stonecutting recipe is not registered"}
recipe take @a[tag=autotest.runner] mini_blocks:yellow_concrete
execute store success score #ok autotest run recipe give @a[tag=autotest.runner] mini_blocks:yellow_concrete
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"MINI mini_blocks:yellow_concrete",why:"stonecutting recipe is not registered"}
