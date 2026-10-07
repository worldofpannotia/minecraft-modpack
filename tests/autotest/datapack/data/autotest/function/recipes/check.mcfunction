schedule function autotest:lib/next 1t
execute store success score #ok autotest if data block 40001 280 40000 Items[{id:"minecraft:powered_rail",count:6}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-19 copper_powered_rails:powered_rail_from_copper",why:"expected 6x minecraft:powered_rail in the chest"}
execute store success score #ok autotest if data block 40004 280 40000 Items[{id:"minecraft:brain_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:brain_coral_block [brain_coral]",why:"expected 1x minecraft:brain_coral_block in the chest"}
execute store success score #ok autotest if data block 40007 280 40000 Items[{id:"minecraft:brain_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:brain_coral_block [brain_coral_fan]",why:"expected 1x minecraft:brain_coral_block in the chest"}
execute store success score #ok autotest if data block 40010 280 40000 Items[{id:"minecraft:bubble_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:bubble_coral_block [bubble_coral]",why:"expected 1x minecraft:bubble_coral_block in the chest"}
execute store success score #ok autotest if data block 40013 280 40000 Items[{id:"minecraft:bubble_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:bubble_coral_block [bubble_coral_fan]",why:"expected 1x minecraft:bubble_coral_block in the chest"}
execute store success score #ok autotest if data block 40016 280 40000 Items[{id:"minecraft:fire_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:fire_coral_block [fire_coral]",why:"expected 1x minecraft:fire_coral_block in the chest"}
execute store success score #ok autotest if data block 40019 280 40000 Items[{id:"minecraft:fire_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:fire_coral_block [fire_coral_fan]",why:"expected 1x minecraft:fire_coral_block in the chest"}
execute store success score #ok autotest if data block 40022 280 40000 Items[{id:"minecraft:horn_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:horn_coral_block [horn_coral]",why:"expected 1x minecraft:horn_coral_block in the chest"}
execute store success score #ok autotest if data block 40025 280 40000 Items[{id:"minecraft:horn_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:horn_coral_block [horn_coral_fan]",why:"expected 1x minecraft:horn_coral_block in the chest"}
execute store success score #ok autotest if data block 40028 280 40000 Items[{id:"minecraft:tube_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:tube_coral_block [tube_coral]",why:"expected 1x minecraft:tube_coral_block in the chest"}
execute store success score #ok autotest if data block 40031 280 40000 Items[{id:"minecraft:tube_coral_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 coral_blocks:tube_coral_block [tube_coral_fan]",why:"expected 1x minecraft:tube_coral_block in the chest"}
execute store success score #ok autotest if data block 40034 280 40000 Items[{id:"minecraft:blackstone",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 craftable_blackstone:blackstone [coal]",why:"expected 4x minecraft:blackstone in the chest"}
execute store success score #ok autotest if data block 40037 280 40000 Items[{id:"minecraft:blackstone",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 craftable_blackstone:blackstone [charcoal]",why:"expected 4x minecraft:blackstone in the chest"}
execute store success score #ok autotest if data block 40040 280 40000 Items[{id:"minecraft:polished_blackstone",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 craftable_blackstone:polished_blackstone [coal]",why:"expected 4x minecraft:polished_blackstone in the chest"}
execute store success score #ok autotest if data block 40043 280 40000 Items[{id:"minecraft:polished_blackstone",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 craftable_blackstone:polished_blackstone [charcoal]",why:"expected 4x minecraft:polished_blackstone in the chest"}
execute store success score #ok autotest if data block 40046 280 40000 Items[{id:"minecraft:bundle",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 craftable_bundles_rabbit_hide:bundle_rabbit_hide",why:"expected 1x minecraft:bundle in the chest"}
execute store success score #ok autotest if data block 40001 280 40002 Items[{id:"minecraft:brewing_stand",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_brewing_stand",why:"expected 1x minecraft:brewing_stand in the chest"}
execute store success score #ok autotest if data block 40004 280 40002 Items[{id:"minecraft:dispenser",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_dispenser",why:"expected 1x minecraft:dispenser in the chest"}
execute store success score #ok autotest if data block 40007 280 40002 Items[{id:"minecraft:dropper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_dropper",why:"expected 1x minecraft:dropper in the chest"}
execute store success score #ok autotest if data block 40010 280 40002 Items[{id:"minecraft:lever",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_lever",why:"expected 1x minecraft:lever in the chest"}
execute store success score #ok autotest if data block 40013 280 40002 Items[{id:"minecraft:observer",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_observer",why:"expected 1x minecraft:observer in the chest"}
execute store success score #ok autotest if data block 40016 280 40002 Items[{id:"minecraft:piston",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_piston [oak_planks]",why:"expected 1x minecraft:piston in the chest"}
execute store success score #ok autotest if data block 40019 280 40002 Items[{id:"minecraft:piston",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_piston [pale_oak_planks]",why:"expected 1x minecraft:piston in the chest"}
execute store success score #ok autotest if data block 40022 280 40002 Items[{id:"minecraft:piston",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 crafting:blackstone_piston [cherry_planks]",why:"expected 1x minecraft:piston in the chest"}
execute store success score #ok autotest if data block 40025 280 40002 Items[{id:"minecraft:dispenser",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-18 dropper_to_dispenser:dispenser",why:"expected 1x minecraft:dispenser in the chest"}
execute store success score #ok autotest if data block 40028 280 40002 Items[{id:"minecraft:dispenser",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-18 dropper_to_dispenser:dispenser_alternate",why:"expected 1x minecraft:dispenser in the chest"}
execute store success score #ok autotest if data block 40031 280 40002 Items[{id:"minecraft:gravel",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 flint_to_gravel:gravel",why:"expected 1x minecraft:gravel in the chest"}
execute store success score #ok autotest if data block 40034 280 40002 Items[{id:"minecraft:acacia_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:acacia_stairs",why:"expected 8x minecraft:acacia_stairs in the chest"}
execute store success score #ok autotest if data block 40037 280 40002 Items[{id:"minecraft:acacia_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:acacia_trapdoor",why:"expected 12x minecraft:acacia_trapdoor in the chest"}
execute store success score #ok autotest if data block 40040 280 40002 Items[{id:"minecraft:acacia_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:acacia_wood",why:"expected 4x minecraft:acacia_wood in the chest"}
execute store success score #ok autotest if data block 40043 280 40002 Items[{id:"minecraft:andesite_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:andesite_stairs",why:"expected 8x minecraft:andesite_stairs in the chest"}
execute store success score #ok autotest if data block 40046 280 40002 Items[{id:"minecraft:bamboo_mosaic_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:bamboo_mosaic_stairs",why:"expected 8x minecraft:bamboo_mosaic_stairs in the chest"}
execute store success score #ok autotest if data block 40001 280 40004 Items[{id:"minecraft:bamboo_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:bamboo_stairs",why:"expected 8x minecraft:bamboo_stairs in the chest"}
execute store success score #ok autotest if data block 40004 280 40004 Items[{id:"minecraft:bamboo_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:bamboo_trapdoor",why:"expected 12x minecraft:bamboo_trapdoor in the chest"}
execute store success score #ok autotest if data block 40007 280 40004 Items[{id:"minecraft:birch_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:birch_stairs",why:"expected 8x minecraft:birch_stairs in the chest"}
execute store success score #ok autotest if data block 40010 280 40004 Items[{id:"minecraft:birch_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:birch_trapdoor",why:"expected 12x minecraft:birch_trapdoor in the chest"}
execute store success score #ok autotest if data block 40013 280 40004 Items[{id:"minecraft:birch_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:birch_wood",why:"expected 4x minecraft:birch_wood in the chest"}
execute store success score #ok autotest if data block 40016 280 40004 Items[{id:"minecraft:blackstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:blackstone_stairs",why:"expected 8x minecraft:blackstone_stairs in the chest"}
execute store success score #ok autotest if data block 40019 280 40004 Items[{id:"minecraft:brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:brick_stairs",why:"expected 8x minecraft:brick_stairs in the chest"}
execute store success score #ok autotest if data block 40022 280 40004 Items[{id:"minecraft:bricks",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-13 minecraft:bricks",why:"expected 4x minecraft:bricks in the chest"}
execute store success score #ok autotest if data block 40025 280 40004 Items[{id:"minecraft:black_dye",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-23 minecraft:charcoal_to_dye",why:"expected 1x minecraft:black_dye in the chest"}
execute store success score #ok autotest if data block 40028 280 40004 Items[{id:"minecraft:cherry_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:cherry_stairs",why:"expected 8x minecraft:cherry_stairs in the chest"}
execute store success score #ok autotest if data block 40031 280 40004 Items[{id:"minecraft:cherry_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:cherry_trapdoor",why:"expected 12x minecraft:cherry_trapdoor in the chest"}
execute store success score #ok autotest if data block 40034 280 40004 Items[{id:"minecraft:cherry_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:cherry_wood",why:"expected 4x minecraft:cherry_wood in the chest"}
execute store success score #ok autotest if data block 40037 280 40004 Items[{id:"minecraft:black_dye",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-23 minecraft:coal_to_dye",why:"expected 1x minecraft:black_dye in the chest"}
execute store success score #ok autotest if data block 40040 280 40004 Items[{id:"minecraft:cobbled_deepslate_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:cobbled_deepslate_stairs",why:"expected 8x minecraft:cobbled_deepslate_stairs in the chest"}
execute store success score #ok autotest if data block 40043 280 40004 Items[{id:"minecraft:cobblestone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:cobblestone_stairs",why:"expected 8x minecraft:cobblestone_stairs in the chest"}
execute store success score #ok autotest if data block 40046 280 40004 Items[{id:"minecraft:copper_trapdoor",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:copper_trapdoor",why:"expected 1x minecraft:copper_trapdoor in the chest"}
execute store success score #ok autotest if data block 40001 280 40006 Items[{id:"minecraft:crimson_hyphae",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:crimson_hyphae",why:"expected 4x minecraft:crimson_hyphae in the chest"}
execute store success score #ok autotest if data block 40004 280 40006 Items[{id:"minecraft:crimson_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:crimson_stairs",why:"expected 8x minecraft:crimson_stairs in the chest"}
execute store success score #ok autotest if data block 40007 280 40006 Items[{id:"minecraft:crimson_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:crimson_trapdoor",why:"expected 12x minecraft:crimson_trapdoor in the chest"}
execute store success score #ok autotest if data block 40010 280 40006 Items[{id:"minecraft:cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:cut_copper_stairs",why:"expected 8x minecraft:cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40013 280 40006 Items[{id:"minecraft:dark_oak_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:dark_oak_stairs",why:"expected 8x minecraft:dark_oak_stairs in the chest"}
execute store success score #ok autotest if data block 40016 280 40006 Items[{id:"minecraft:dark_oak_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:dark_oak_trapdoor",why:"expected 12x minecraft:dark_oak_trapdoor in the chest"}
execute store success score #ok autotest if data block 40019 280 40006 Items[{id:"minecraft:dark_oak_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:dark_oak_wood",why:"expected 4x minecraft:dark_oak_wood in the chest"}
execute store success score #ok autotest if data block 40022 280 40006 Items[{id:"minecraft:dark_prismarine_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:dark_prismarine_stairs",why:"expected 8x minecraft:dark_prismarine_stairs in the chest"}
execute store success score #ok autotest if data block 40025 280 40006 Items[{id:"minecraft:deepslate_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:deepslate_brick_stairs",why:"expected 8x minecraft:deepslate_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40028 280 40006 Items[{id:"minecraft:deepslate_tile_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:deepslate_tile_stairs",why:"expected 8x minecraft:deepslate_tile_stairs in the chest"}
execute store success score #ok autotest if data block 40031 280 40006 Items[{id:"minecraft:diorite_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:diorite_stairs",why:"expected 8x minecraft:diorite_stairs in the chest"}
execute store success score #ok autotest if data block 40034 280 40006 Items[{id:"minecraft:end_stone_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:end_stone_brick_stairs",why:"expected 8x minecraft:end_stone_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40037 280 40006 Items[{id:"minecraft:exposed_cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:exposed_cut_copper_stairs",why:"expected 8x minecraft:exposed_cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40040 280 40006 Items[{id:"minecraft:granite_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:granite_stairs",why:"expected 8x minecraft:granite_stairs in the chest"}
execute store success score #ok autotest if data block 40043 280 40006 Items[{id:"minecraft:jungle_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:jungle_stairs",why:"expected 8x minecraft:jungle_stairs in the chest"}
execute store success score #ok autotest if data block 40046 280 40006 Items[{id:"minecraft:jungle_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:jungle_trapdoor",why:"expected 12x minecraft:jungle_trapdoor in the chest"}
execute store success score #ok autotest if data block 40001 280 40008 Items[{id:"minecraft:jungle_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:jungle_wood",why:"expected 4x minecraft:jungle_wood in the chest"}
execute store success score #ok autotest if data block 40004 280 40008 Items[{id:"minecraft:mangrove_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:mangrove_stairs",why:"expected 8x minecraft:mangrove_stairs in the chest"}
execute store success score #ok autotest if data block 40007 280 40008 Items[{id:"minecraft:mangrove_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:mangrove_trapdoor",why:"expected 12x minecraft:mangrove_trapdoor in the chest"}
execute store success score #ok autotest if data block 40010 280 40008 Items[{id:"minecraft:mangrove_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:mangrove_wood",why:"expected 4x minecraft:mangrove_wood in the chest"}
execute store success score #ok autotest if data block 40013 280 40008 Items[{id:"minecraft:mossy_cobblestone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:mossy_cobblestone_stairs",why:"expected 8x minecraft:mossy_cobblestone_stairs in the chest"}
execute store success score #ok autotest if data block 40016 280 40008 Items[{id:"minecraft:mossy_stone_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:mossy_stone_brick_stairs",why:"expected 8x minecraft:mossy_stone_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40019 280 40008 Items[{id:"minecraft:mud_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:mud_brick_stairs",why:"expected 8x minecraft:mud_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40022 280 40008 Items[{id:"minecraft:nether_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:nether_brick_stairs",why:"expected 8x minecraft:nether_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40025 280 40008 Items[{id:"minecraft:oak_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:oak_stairs",why:"expected 8x minecraft:oak_stairs in the chest"}
execute store success score #ok autotest if data block 40028 280 40008 Items[{id:"minecraft:oak_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:oak_trapdoor",why:"expected 12x minecraft:oak_trapdoor in the chest"}
execute store success score #ok autotest if data block 40031 280 40008 Items[{id:"minecraft:oak_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:oak_wood",why:"expected 4x minecraft:oak_wood in the chest"}
execute store success score #ok autotest if data block 40034 280 40008 Items[{id:"minecraft:oxidized_cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:oxidized_cut_copper_stairs",why:"expected 8x minecraft:oxidized_cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40037 280 40008 Items[{id:"minecraft:packed_ice",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-23 minecraft:packed_ice",why:"expected 1x minecraft:packed_ice in the chest"}
execute store success score #ok autotest if data block 40040 280 40008 Items[{id:"minecraft:pale_oak_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:pale_oak_stairs",why:"expected 8x minecraft:pale_oak_stairs in the chest"}
execute store success score #ok autotest if data block 40043 280 40008 Items[{id:"minecraft:pale_oak_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:pale_oak_trapdoor",why:"expected 12x minecraft:pale_oak_trapdoor in the chest"}
execute store success score #ok autotest if data block 40046 280 40008 Items[{id:"minecraft:pale_oak_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:pale_oak_wood",why:"expected 4x minecraft:pale_oak_wood in the chest"}
execute store success score #ok autotest if data block 40001 280 40010 Items[{id:"minecraft:polished_andesite_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:polished_andesite_stairs",why:"expected 8x minecraft:polished_andesite_stairs in the chest"}
execute store success score #ok autotest if data block 40004 280 40010 Items[{id:"minecraft:polished_blackstone_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:polished_blackstone_brick_stairs",why:"expected 8x minecraft:polished_blackstone_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40007 280 40010 Items[{id:"minecraft:polished_blackstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:polished_blackstone_stairs",why:"expected 8x minecraft:polished_blackstone_stairs in the chest"}
execute store success score #ok autotest if data block 40010 280 40010 Items[{id:"minecraft:polished_deepslate_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:polished_deepslate_stairs",why:"expected 8x minecraft:polished_deepslate_stairs in the chest"}
execute store success score #ok autotest if data block 40013 280 40010 Items[{id:"minecraft:polished_diorite_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:polished_diorite_stairs",why:"expected 8x minecraft:polished_diorite_stairs in the chest"}
execute store success score #ok autotest if data block 40016 280 40010 Items[{id:"minecraft:polished_granite_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:polished_granite_stairs",why:"expected 8x minecraft:polished_granite_stairs in the chest"}
execute store success score #ok autotest if data block 40019 280 40010 Items[{id:"minecraft:polished_tuff_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:polished_tuff_stairs",why:"expected 8x minecraft:polished_tuff_stairs in the chest"}
execute store success score #ok autotest if data block 40022 280 40010 Items[{id:"minecraft:prismarine_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:prismarine_brick_stairs",why:"expected 8x minecraft:prismarine_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40025 280 40010 Items[{id:"minecraft:prismarine_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:prismarine_stairs",why:"expected 8x minecraft:prismarine_stairs in the chest"}
execute store success score #ok autotest if data block 40028 280 40010 Items[{id:"minecraft:purpur_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:purpur_stairs",why:"expected 8x minecraft:purpur_stairs in the chest"}
execute store success score #ok autotest if data block 40031 280 40010 Items[{id:"minecraft:quartz_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:quartz_stairs [quartz_block]",why:"expected 8x minecraft:quartz_stairs in the chest"}
execute store success score #ok autotest if data block 40034 280 40010 Items[{id:"minecraft:quartz_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:quartz_stairs [quartz_pillar]",why:"expected 8x minecraft:quartz_stairs in the chest"}
execute store success score #ok autotest if data block 40037 280 40010 Items[{id:"minecraft:quartz_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:quartz_stairs [chiseled_quartz_block]",why:"expected 8x minecraft:quartz_stairs in the chest"}
execute store success score #ok autotest if data block 40040 280 40010 Items[{id:"minecraft:red_nether_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:red_nether_brick_stairs",why:"expected 8x minecraft:red_nether_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40043 280 40010 Items[{id:"minecraft:red_sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:red_sandstone_stairs [red_sandstone]",why:"expected 8x minecraft:red_sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40046 280 40010 Items[{id:"minecraft:red_sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:red_sandstone_stairs [chiseled_red_sandstone]",why:"expected 8x minecraft:red_sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40001 280 40012 Items[{id:"minecraft:red_sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:red_sandstone_stairs [cut_red_sandstone]",why:"expected 8x minecraft:red_sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40004 280 40012 Items[{id:"minecraft:sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:sandstone_stairs [sandstone]",why:"expected 8x minecraft:sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40007 280 40012 Items[{id:"minecraft:sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:sandstone_stairs [chiseled_sandstone]",why:"expected 8x minecraft:sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40010 280 40012 Items[{id:"minecraft:sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:sandstone_stairs [cut_sandstone]",why:"expected 8x minecraft:sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40013 280 40012 Items[{id:"minecraft:andesite_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/andesite_slab",why:"expected 2x minecraft:andesite_slab in the chest"}
execute store success score #ok autotest if data block 40016 280 40012 Items[{id:"minecraft:bamboo_mosaic_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/bamboo_mosaic_slab",why:"expected 2x minecraft:bamboo_mosaic_slab in the chest"}
execute store success score #ok autotest if data block 40019 280 40012 Items[{id:"minecraft:blackstone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/blackstone_slab",why:"expected 2x minecraft:blackstone_slab in the chest"}
execute store success score #ok autotest if data block 40022 280 40012 Items[{id:"minecraft:brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/brick_slab",why:"expected 2x minecraft:brick_slab in the chest"}
execute store success score #ok autotest if data block 40025 280 40012 Items[{id:"minecraft:cobbled_deepslate_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/cobbled_deepslate_slab",why:"expected 2x minecraft:cobbled_deepslate_slab in the chest"}
execute store success score #ok autotest if data block 40028 280 40012 Items[{id:"minecraft:cobblestone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/cobblestone_slab",why:"expected 2x minecraft:cobblestone_slab in the chest"}
execute store success score #ok autotest if data block 40031 280 40012 Items[{id:"minecraft:cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/cut_copper_slab",why:"expected 2x minecraft:cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40034 280 40012 Items[{id:"minecraft:cut_red_sandstone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/cut_red_sandstone_slab",why:"expected 2x minecraft:cut_red_sandstone_slab in the chest"}
execute store success score #ok autotest if data block 40037 280 40012 Items[{id:"minecraft:cut_sandstone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/cut_sandstone_slab",why:"expected 2x minecraft:cut_sandstone_slab in the chest"}
execute store success score #ok autotest if data block 40040 280 40012 Items[{id:"minecraft:dark_prismarine_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/dark_prismarine_slab",why:"expected 2x minecraft:dark_prismarine_slab in the chest"}
execute store success score #ok autotest if data block 40043 280 40012 Items[{id:"minecraft:deepslate_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/deepslate_brick_slab",why:"expected 2x minecraft:deepslate_brick_slab in the chest"}
execute store success score #ok autotest if data block 40046 280 40012 Items[{id:"minecraft:deepslate_tile_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/deepslate_tile_slab",why:"expected 2x minecraft:deepslate_tile_slab in the chest"}
execute store success score #ok autotest if data block 40001 280 40014 Items[{id:"minecraft:diorite_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/diorite_slab",why:"expected 2x minecraft:diorite_slab in the chest"}
execute store success score #ok autotest if data block 40004 280 40014 Items[{id:"minecraft:end_stone_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/end_stone_brick_slab",why:"expected 2x minecraft:end_stone_brick_slab in the chest"}
execute store success score #ok autotest if data block 40007 280 40014 Items[{id:"minecraft:exposed_cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/exposed_cut_copper_slab",why:"expected 2x minecraft:exposed_cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40010 280 40014 Items[{id:"minecraft:granite_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/granite_slab",why:"expected 2x minecraft:granite_slab in the chest"}
execute store success score #ok autotest if data block 40013 280 40014 Items[{id:"minecraft:mossy_cobblestone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/mossy_cobblestone_slab",why:"expected 2x minecraft:mossy_cobblestone_slab in the chest"}
execute store success score #ok autotest if data block 40016 280 40014 Items[{id:"minecraft:mossy_stone_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/mossy_stone_brick_slab",why:"expected 2x minecraft:mossy_stone_brick_slab in the chest"}
execute store success score #ok autotest if data block 40019 280 40014 Items[{id:"minecraft:mud_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/mud_brick_slab",why:"expected 2x minecraft:mud_brick_slab in the chest"}
execute store success score #ok autotest if data block 40022 280 40014 Items[{id:"minecraft:nether_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/nether_brick_slab",why:"expected 2x minecraft:nether_brick_slab in the chest"}
execute store success score #ok autotest if data block 40025 280 40014 Items[{id:"minecraft:oxidized_cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/oxidized_cut_copper_slab",why:"expected 2x minecraft:oxidized_cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40028 280 40014 Items[{id:"minecraft:polished_andesite_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/polished_andesite_slab",why:"expected 2x minecraft:polished_andesite_slab in the chest"}
execute store success score #ok autotest if data block 40031 280 40014 Items[{id:"minecraft:polished_blackstone_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/polished_blackstone_brick_slab",why:"expected 2x minecraft:polished_blackstone_brick_slab in the chest"}
execute store success score #ok autotest if data block 40034 280 40014 Items[{id:"minecraft:polished_deepslate_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/polished_deepslate_slab",why:"expected 2x minecraft:polished_deepslate_slab in the chest"}
execute store success score #ok autotest if data block 40037 280 40014 Items[{id:"minecraft:polished_diorite_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/polished_diorite_slab",why:"expected 2x minecraft:polished_diorite_slab in the chest"}
execute store success score #ok autotest if data block 40040 280 40014 Items[{id:"minecraft:polished_granite_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/polished_granite_slab",why:"expected 2x minecraft:polished_granite_slab in the chest"}
execute store success score #ok autotest if data block 40043 280 40014 Items[{id:"minecraft:polished_tuff_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/polished_tuff_slab",why:"expected 2x minecraft:polished_tuff_slab in the chest"}
execute store success score #ok autotest if data block 40046 280 40014 Items[{id:"minecraft:prismarine_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/prismarine_brick_slab",why:"expected 2x minecraft:prismarine_brick_slab in the chest"}
execute store success score #ok autotest if data block 40001 280 40016 Items[{id:"minecraft:prismarine_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/prismarine_slab",why:"expected 2x minecraft:prismarine_slab in the chest"}
execute store success score #ok autotest if data block 40004 280 40016 Items[{id:"minecraft:purpur_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/purpur_slab",why:"expected 2x minecraft:purpur_slab in the chest"}
execute store success score #ok autotest if data block 40007 280 40016 Items[{id:"minecraft:quartz_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/quartz_slab",why:"expected 2x minecraft:quartz_slab in the chest"}
execute store success score #ok autotest if data block 40010 280 40016 Items[{id:"minecraft:red_nether_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/red_nether_brick_slab",why:"expected 2x minecraft:red_nether_brick_slab in the chest"}
execute store success score #ok autotest if data block 40013 280 40016 Items[{id:"minecraft:red_sandstone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/red_sandstone_slab",why:"expected 2x minecraft:red_sandstone_slab in the chest"}
execute store success score #ok autotest if data block 40016 280 40016 Items[{id:"minecraft:sandstone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/sandstone_slab",why:"expected 2x minecraft:sandstone_slab in the chest"}
execute store success score #ok autotest if data block 40019 280 40016 Items[{id:"minecraft:smooth_quartz_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/smooth_quartz_slab",why:"expected 2x minecraft:smooth_quartz_slab in the chest"}
execute store success score #ok autotest if data block 40022 280 40016 Items[{id:"minecraft:smooth_red_sandstone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/smooth_red_sandstone_slab",why:"expected 2x minecraft:smooth_red_sandstone_slab in the chest"}
execute store success score #ok autotest if data block 40025 280 40016 Items[{id:"minecraft:smooth_sandstone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/smooth_sandstone_slab",why:"expected 2x minecraft:smooth_sandstone_slab in the chest"}
execute store success score #ok autotest if data block 40028 280 40016 Items[{id:"minecraft:smooth_stone",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/smooth_stone",why:"expected 2x minecraft:smooth_stone in the chest"}
execute store success score #ok autotest if data block 40031 280 40016 Items[{id:"minecraft:smooth_stone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/smooth_stone_slab",why:"expected 2x minecraft:smooth_stone_slab in the chest"}
execute store success score #ok autotest if data block 40034 280 40016 Items[{id:"minecraft:stone_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/stone_brick_slab",why:"expected 2x minecraft:stone_brick_slab in the chest"}
execute store success score #ok autotest if data block 40037 280 40016 Items[{id:"minecraft:tuff_brick_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/tuff_brick_slab",why:"expected 2x minecraft:tuff_brick_slab in the chest"}
execute store success score #ok autotest if data block 40040 280 40016 Items[{id:"minecraft:tuff_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/tuff_slab",why:"expected 2x minecraft:tuff_slab in the chest"}
execute store success score #ok autotest if data block 40043 280 40016 Items[{id:"minecraft:waxed_cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/waxed_cut_copper_slab_b2b",why:"expected 2x minecraft:waxed_cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40046 280 40016 Items[{id:"minecraft:waxed_exposed_cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/waxed_exposed_cut_copper_slab_b2b",why:"expected 2x minecraft:waxed_exposed_cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40001 280 40018 Items[{id:"minecraft:waxed_oxidized_cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/waxed_oxidized_cut_copper_slab_b2b",why:"expected 2x minecraft:waxed_oxidized_cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40004 280 40018 Items[{id:"minecraft:waxed_weathered_cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/waxed_weathered_cut_copper_slab_b2b",why:"expected 2x minecraft:waxed_weathered_cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40007 280 40018 Items[{id:"minecraft:weathered_cut_copper_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 minecraft:slabs/weathered_cut_copper_slab",why:"expected 2x minecraft:weathered_cut_copper_slab in the chest"}
execute store success score #ok autotest if data block 40010 280 40018 Items[{id:"minecraft:smooth_quartz_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:smooth_quartz_stairs",why:"expected 8x minecraft:smooth_quartz_stairs in the chest"}
execute store success score #ok autotest if data block 40013 280 40018 Items[{id:"minecraft:smooth_red_sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:smooth_red_sandstone_stairs",why:"expected 8x minecraft:smooth_red_sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40016 280 40018 Items[{id:"minecraft:smooth_sandstone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:smooth_sandstone_stairs",why:"expected 8x minecraft:smooth_sandstone_stairs in the chest"}
execute store success score #ok autotest if data block 40019 280 40018 Items[{id:"minecraft:spruce_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:spruce_stairs",why:"expected 8x minecraft:spruce_stairs in the chest"}
execute store success score #ok autotest if data block 40022 280 40018 Items[{id:"minecraft:spruce_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:spruce_trapdoor",why:"expected 12x minecraft:spruce_trapdoor in the chest"}
execute store success score #ok autotest if data block 40025 280 40018 Items[{id:"minecraft:spruce_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:spruce_wood",why:"expected 4x minecraft:spruce_wood in the chest"}
execute store success score #ok autotest if data block 40028 280 40018 Items[{id:"minecraft:stone_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:stone_brick_stairs [stone_bricks]",why:"expected 8x minecraft:stone_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40031 280 40018 Items[{id:"minecraft:stone_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:stone_brick_stairs [chiseled_stone_bricks]",why:"expected 8x minecraft:stone_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40034 280 40018 Items[{id:"minecraft:stone_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:stone_brick_stairs [cracked_stone_bricks]",why:"expected 8x minecraft:stone_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40037 280 40018 Items[{id:"minecraft:stone_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:stone_stairs",why:"expected 8x minecraft:stone_stairs in the chest"}
execute store success score #ok autotest if data block 40040 280 40018 Items[{id:"minecraft:bread",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-23 minecraft:straight_to_shapeless/bread",why:"expected 1x minecraft:bread in the chest"}
execute store success score #ok autotest if data block 40043 280 40018 Items[{id:"minecraft:paper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-23 minecraft:straight_to_shapeless/paper",why:"expected 3x minecraft:paper in the chest"}
execute store success score #ok autotest if data block 40046 280 40018 Items[{id:"minecraft:shulker_box",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-23 minecraft:straight_to_shapeless/shulker_box",why:"expected 1x minecraft:shulker_box in the chest"}
execute store success score #ok autotest if data block 40001 280 40020 Items[{id:"minecraft:stripped_acacia_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_acacia_wood",why:"expected 4x minecraft:stripped_acacia_wood in the chest"}
execute store success score #ok autotest if data block 40004 280 40020 Items[{id:"minecraft:stripped_birch_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_birch_wood",why:"expected 4x minecraft:stripped_birch_wood in the chest"}
execute store success score #ok autotest if data block 40007 280 40020 Items[{id:"minecraft:stripped_cherry_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_cherry_wood",why:"expected 4x minecraft:stripped_cherry_wood in the chest"}
execute store success score #ok autotest if data block 40010 280 40020 Items[{id:"minecraft:stripped_crimson_hyphae",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_crimson_hyphae",why:"expected 4x minecraft:stripped_crimson_hyphae in the chest"}
execute store success score #ok autotest if data block 40013 280 40020 Items[{id:"minecraft:stripped_dark_oak_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_dark_oak_wood",why:"expected 4x minecraft:stripped_dark_oak_wood in the chest"}
execute store success score #ok autotest if data block 40016 280 40020 Items[{id:"minecraft:stripped_jungle_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_jungle_wood",why:"expected 4x minecraft:stripped_jungle_wood in the chest"}
execute store success score #ok autotest if data block 40019 280 40020 Items[{id:"minecraft:stripped_mangrove_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_mangrove_wood",why:"expected 4x minecraft:stripped_mangrove_wood in the chest"}
execute store success score #ok autotest if data block 40022 280 40020 Items[{id:"minecraft:stripped_oak_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_oak_wood",why:"expected 4x minecraft:stripped_oak_wood in the chest"}
execute store success score #ok autotest if data block 40025 280 40020 Items[{id:"minecraft:stripped_spruce_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_spruce_wood",why:"expected 4x minecraft:stripped_spruce_wood in the chest"}
execute store success score #ok autotest if data block 40028 280 40020 Items[{id:"minecraft:stripped_warped_hyphae",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:stripped_warped_hyphae",why:"expected 4x minecraft:stripped_warped_hyphae in the chest"}
execute store success score #ok autotest if data block 40031 280 40020 Items[{id:"minecraft:tuff_brick_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:tuff_brick_stairs",why:"expected 8x minecraft:tuff_brick_stairs in the chest"}
execute store success score #ok autotest if data block 40034 280 40020 Items[{id:"minecraft:tuff_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:tuff_stairs",why:"expected 8x minecraft:tuff_stairs in the chest"}
execute store success score #ok autotest if data block 40037 280 40020 Items[{id:"minecraft:warped_hyphae",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 minecraft:warped_hyphae",why:"expected 4x minecraft:warped_hyphae in the chest"}
execute store success score #ok autotest if data block 40040 280 40020 Items[{id:"minecraft:warped_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:warped_stairs",why:"expected 8x minecraft:warped_stairs in the chest"}
execute store success score #ok autotest if data block 40043 280 40020 Items[{id:"minecraft:warped_trapdoor",count:12}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 minecraft:warped_trapdoor",why:"expected 12x minecraft:warped_trapdoor in the chest"}
execute store success score #ok autotest if data block 40046 280 40020 Items[{id:"minecraft:waxed_cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:waxed_cut_copper_stairs",why:"expected 8x minecraft:waxed_cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40001 280 40022 Items[{id:"minecraft:waxed_exposed_cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:waxed_exposed_cut_copper_stairs",why:"expected 8x minecraft:waxed_exposed_cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40004 280 40022 Items[{id:"minecraft:waxed_oxidized_cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:waxed_oxidized_cut_copper_stairs",why:"expected 8x minecraft:waxed_oxidized_cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40007 280 40022 Items[{id:"minecraft:waxed_weathered_cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:waxed_weathered_cut_copper_stairs",why:"expected 8x minecraft:waxed_weathered_cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40010 280 40022 Items[{id:"minecraft:weathered_cut_copper_stairs",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 minecraft:weathered_cut_copper_stairs",why:"expected 8x minecraft:weathered_cut_copper_stairs in the chest"}
execute store success score #ok autotest if data block 40013 280 40022 Items[{id:"opus:book",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-23 pannotia_guide:guide_book",why:"expected 1x opus:book in the chest"}
execute store success score #ok autotest if data block 40016 280 40022 Items[{id:"minecraft:brain_coral_fan",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/brain_coral_fan_from_brain_coral",why:"expected 1x minecraft:brain_coral_fan in the chest"}
execute store success score #ok autotest if data block 40019 280 40022 Items[{id:"minecraft:brain_coral",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/brain_coral_from_brain_coral_fan",why:"expected 1x minecraft:brain_coral in the chest"}
execute store success score #ok autotest if data block 40022 280 40022 Items[{id:"minecraft:bubble_coral_fan",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/bubble_coral_fan_from_bubble_coral",why:"expected 1x minecraft:bubble_coral_fan in the chest"}
execute store success score #ok autotest if data block 40025 280 40022 Items[{id:"minecraft:bubble_coral",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/bubble_coral_from_bubble_coral_fan",why:"expected 1x minecraft:bubble_coral in the chest"}
execute store success score #ok autotest if data block 40028 280 40022 Items[{id:"minecraft:fire_coral_fan",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/fire_coral_fan_from_fire_coral",why:"expected 1x minecraft:fire_coral_fan in the chest"}
execute store success score #ok autotest if data block 40031 280 40022 Items[{id:"minecraft:fire_coral",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/fire_coral_from_fire_coral_fan",why:"expected 1x minecraft:fire_coral in the chest"}
execute store success score #ok autotest if data block 40034 280 40022 Items[{id:"minecraft:horn_coral_fan",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/horn_coral_fan_from_horn_coral",why:"expected 1x minecraft:horn_coral_fan in the chest"}
execute store success score #ok autotest if data block 40037 280 40022 Items[{id:"minecraft:horn_coral",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/horn_coral_from_horn_coral_fan",why:"expected 1x minecraft:horn_coral in the chest"}
execute store success score #ok autotest if data block 40040 280 40022 Items[{id:"minecraft:tube_coral_fan",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/tube_coral_fan_from_tube_coral",why:"expected 1x minecraft:tube_coral_fan in the chest"}
execute store success score #ok autotest if data block 40043 280 40022 Items[{id:"minecraft:tube_coral",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-3 pannotia:coral/tube_coral_from_tube_coral_fan",why:"expected 1x minecraft:tube_coral in the chest"}
execute store success score #ok autotest if data block 40046 280 40022 Items[{id:"minecraft:exposed_copper",count:7}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-1 pannotia:faster-oxidization/exposed_copper",why:"expected 7x minecraft:exposed_copper in the chest"}
execute store success score #ok autotest if data block 40046 280 40022 Items[{id:"minecraft:bucket",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-1 pannotia:faster-oxidization/exposed_copper remainder",why:"expected 1x minecraft:bucket to be left over"}
execute store success score #ok autotest if data block 40001 280 40024 Items[{id:"minecraft:oxidized_copper",count:7}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-1 pannotia:faster-oxidization/oxidised_copper",why:"expected 7x minecraft:oxidized_copper in the chest"}
execute store success score #ok autotest if data block 40001 280 40024 Items[{id:"minecraft:bucket",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-1 pannotia:faster-oxidization/oxidised_copper remainder",why:"expected 1x minecraft:bucket to be left over"}
execute store success score #ok autotest if data block 40004 280 40024 Items[{id:"minecraft:weathered_copper",count:7}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-1 pannotia:faster-oxidization/weathered_copper",why:"expected 7x minecraft:weathered_copper in the chest"}
execute store success score #ok autotest if data block 40004 280 40024 Items[{id:"minecraft:bucket",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-1 pannotia:faster-oxidization/weathered_copper remainder",why:"expected 1x minecraft:bucket to be left over"}
execute store success score #ok autotest if data block 40007 280 40024 Items[{id:"minecraft:brown_dye",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-2 pannotia:more-dyes/brown_dye_from_mushrooms",why:"expected 1x minecraft:brown_dye in the chest"}
execute store success score #ok autotest if data block 40010 280 40024 Items[{id:"minecraft:cyan_dye",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-2 pannotia:more-dyes/cyan_dye_from_twisting_vines",why:"expected 1x minecraft:cyan_dye in the chest"}
execute store success score #ok autotest if data block 40013 280 40024 Items[{id:"minecraft:green_dye",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-2 pannotia:more-dyes/green_dye_from_big_dripleaf",why:"expected 1x minecraft:green_dye in the chest"}
execute store success score #ok autotest if data block 40016 280 40024 Items[{id:"minecraft:green_dye",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-2 pannotia:more-dyes/green_dye_from_yellow_and_blue",why:"expected 2x minecraft:green_dye in the chest"}
execute store success score #ok autotest if data block 40019 280 40024 Items[{id:"minecraft:orange_dye",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-2 pannotia:more-dyes/orange_dye_from_carrot",why:"expected 1x minecraft:orange_dye in the chest"}
execute store success score #ok autotest if data block 40022 280 40024 Items[{id:"minecraft:small_dripleaf",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-5 pannotia:utility/small_dripleaf_duplication",why:"expected 1x minecraft:small_dripleaf in the chest"}
execute store success score #ok autotest if data block 40025 280 40024 Items[{id:"minecraft:red_sand",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-21 sandstone_dyeing:red_sand",why:"expected 8x minecraft:red_sand in the chest"}
execute store success score #ok autotest if data block 40028 280 40024 Items[{id:"minecraft:red_sandstone",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-21 sandstone_dyeing:red_sandstone",why:"expected 2x minecraft:red_sandstone in the chest"}
execute store success score #ok autotest if data block 40031 280 40024 Items[{id:"minecraft:smooth_red_sandstone",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-21 sandstone_dyeing:smooth_red_sandstone",why:"expected 2x minecraft:smooth_red_sandstone in the chest"}
execute store success score #ok autotest if data block 40034 280 40024 Items[{id:"minecraft:acacia_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/acacia_planks",why:"expected 1x minecraft:acacia_planks in the chest"}
execute store success score #ok autotest if data block 40037 280 40024 Items[{id:"minecraft:andesite",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/andesite",why:"expected 1x minecraft:andesite in the chest"}
execute store success score #ok autotest if data block 40040 280 40024 Items[{id:"minecraft:bamboo_mosaic",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/bamboo_mosaic",why:"expected 1x minecraft:bamboo_mosaic in the chest"}
execute store success score #ok autotest if data block 40043 280 40024 Items[{id:"minecraft:bamboo_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/bamboo_planks",why:"expected 1x minecraft:bamboo_planks in the chest"}
execute store success score #ok autotest if data block 40046 280 40024 Items[{id:"minecraft:birch_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/birch_planks",why:"expected 1x minecraft:birch_planks in the chest"}
execute store success score #ok autotest if data block 40001 280 40026 Items[{id:"minecraft:blackstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/blackstone",why:"expected 1x minecraft:blackstone in the chest"}
execute store success score #ok autotest if data block 40004 280 40026 Items[{id:"minecraft:bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/bricks",why:"expected 1x minecraft:bricks in the chest"}
execute store success score #ok autotest if data block 40007 280 40026 Items[{id:"minecraft:cherry_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/cherry_planks",why:"expected 1x minecraft:cherry_planks in the chest"}
execute store success score #ok autotest if data block 40010 280 40026 Items[{id:"minecraft:cobbled_deepslate",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/cobbled_deepslate",why:"expected 1x minecraft:cobbled_deepslate in the chest"}
execute store success score #ok autotest if data block 40013 280 40026 Items[{id:"minecraft:cobblestone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/cobblestone",why:"expected 1x minecraft:cobblestone in the chest"}
execute store success score #ok autotest if data block 40016 280 40026 Items[{id:"minecraft:crimson_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/crimson_planks",why:"expected 1x minecraft:crimson_planks in the chest"}
execute store success score #ok autotest if data block 40019 280 40026 Items[{id:"minecraft:cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/cut_copper",why:"expected 1x minecraft:cut_copper in the chest"}
execute store success score #ok autotest if data block 40022 280 40026 Items[{id:"minecraft:cut_red_sandstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/cut_red_sandstone",why:"expected 1x minecraft:cut_red_sandstone in the chest"}
execute store success score #ok autotest if data block 40025 280 40026 Items[{id:"minecraft:cut_sandstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/cut_sandstone",why:"expected 1x minecraft:cut_sandstone in the chest"}
execute store success score #ok autotest if data block 40028 280 40026 Items[{id:"minecraft:dark_oak_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/dark_oak_planks",why:"expected 1x minecraft:dark_oak_planks in the chest"}
execute store success score #ok autotest if data block 40031 280 40026 Items[{id:"minecraft:dark_prismarine",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/dark_prismarine",why:"expected 1x minecraft:dark_prismarine in the chest"}
execute store success score #ok autotest if data block 40034 280 40026 Items[{id:"minecraft:deepslate_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/deepslate_bricks",why:"expected 1x minecraft:deepslate_bricks in the chest"}
execute store success score #ok autotest if data block 40037 280 40026 Items[{id:"minecraft:deepslate_tiles",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/deepslate_tiles",why:"expected 1x minecraft:deepslate_tiles in the chest"}
execute store success score #ok autotest if data block 40040 280 40026 Items[{id:"minecraft:diorite",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/diorite",why:"expected 1x minecraft:diorite in the chest"}
execute store success score #ok autotest if data block 40043 280 40026 Items[{id:"minecraft:end_stone_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/end_stone_bricks",why:"expected 1x minecraft:end_stone_bricks in the chest"}
execute store success score #ok autotest if data block 40046 280 40026 Items[{id:"minecraft:exposed_cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/exposed_cut_copper",why:"expected 1x minecraft:exposed_cut_copper in the chest"}
execute store success score #ok autotest if data block 40001 280 40028 Items[{id:"minecraft:granite",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/granite",why:"expected 1x minecraft:granite in the chest"}
execute store success score #ok autotest if data block 40004 280 40028 Items[{id:"minecraft:jungle_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/jungle_planks",why:"expected 1x minecraft:jungle_planks in the chest"}
execute store success score #ok autotest if data block 40007 280 40028 Items[{id:"minecraft:mangrove_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/mangrove_planks",why:"expected 1x minecraft:mangrove_planks in the chest"}
execute store success score #ok autotest if data block 40010 280 40028 Items[{id:"minecraft:mossy_cobblestone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/mossy_cobblestone",why:"expected 1x minecraft:mossy_cobblestone in the chest"}
execute store success score #ok autotest if data block 40013 280 40028 Items[{id:"minecraft:mossy_stone_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/mossy_stone_bricks",why:"expected 1x minecraft:mossy_stone_bricks in the chest"}
execute store success score #ok autotest if data block 40016 280 40028 Items[{id:"minecraft:mud_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/mud_bricks",why:"expected 1x minecraft:mud_bricks in the chest"}
execute store success score #ok autotest if data block 40019 280 40028 Items[{id:"minecraft:nether_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/nether_bricks",why:"expected 1x minecraft:nether_bricks in the chest"}
execute store success score #ok autotest if data block 40022 280 40028 Items[{id:"minecraft:oak_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/oak_planks",why:"expected 1x minecraft:oak_planks in the chest"}
execute store success score #ok autotest if data block 40025 280 40028 Items[{id:"minecraft:oxidized_cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/oxidized_cut_copper",why:"expected 1x minecraft:oxidized_cut_copper in the chest"}
execute store success score #ok autotest if data block 40028 280 40028 Items[{id:"minecraft:pale_oak_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/pale_oak_planks",why:"expected 1x minecraft:pale_oak_planks in the chest"}
execute store success score #ok autotest if data block 40031 280 40028 Items[{id:"minecraft:polished_andesite",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/polished_andesite",why:"expected 1x minecraft:polished_andesite in the chest"}
execute store success score #ok autotest if data block 40034 280 40028 Items[{id:"minecraft:polished_blackstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/polished_blackstone",why:"expected 1x minecraft:polished_blackstone in the chest"}
execute store success score #ok autotest if data block 40037 280 40028 Items[{id:"minecraft:polished_blackstone_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/polished_blackstone_bricks",why:"expected 1x minecraft:polished_blackstone_bricks in the chest"}
execute store success score #ok autotest if data block 40040 280 40028 Items[{id:"minecraft:polished_deepslate",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/polished_deepslate",why:"expected 1x minecraft:polished_deepslate in the chest"}
execute store success score #ok autotest if data block 40043 280 40028 Items[{id:"minecraft:polished_diorite",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/polished_diorite",why:"expected 1x minecraft:polished_diorite in the chest"}
execute store success score #ok autotest if data block 40046 280 40028 Items[{id:"minecraft:polished_granite",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/polished_granite",why:"expected 1x minecraft:polished_granite in the chest"}
execute store success score #ok autotest if data block 40001 280 40030 Items[{id:"minecraft:polished_tuff",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/polished_tuff",why:"expected 1x minecraft:polished_tuff in the chest"}
execute store success score #ok autotest if data block 40004 280 40030 Items[{id:"minecraft:prismarine",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/prismarine",why:"expected 1x minecraft:prismarine in the chest"}
execute store success score #ok autotest if data block 40007 280 40030 Items[{id:"minecraft:prismarine_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/prismarine_bricks",why:"expected 1x minecraft:prismarine_bricks in the chest"}
execute store success score #ok autotest if data block 40010 280 40030 Items[{id:"minecraft:purpur_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/purpur_block",why:"expected 1x minecraft:purpur_block in the chest"}
execute store success score #ok autotest if data block 40013 280 40030 Items[{id:"minecraft:quartz_block",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/quartz_block",why:"expected 1x minecraft:quartz_block in the chest"}
execute store success score #ok autotest if data block 40016 280 40030 Items[{id:"minecraft:red_nether_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/red_nether_bricks",why:"expected 1x minecraft:red_nether_bricks in the chest"}
execute store success score #ok autotest if data block 40019 280 40030 Items[{id:"minecraft:red_sandstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/red_sandstone",why:"expected 1x minecraft:red_sandstone in the chest"}
execute store success score #ok autotest if data block 40022 280 40030 Items[{id:"minecraft:sandstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/sandstone",why:"expected 1x minecraft:sandstone in the chest"}
execute store success score #ok autotest if data block 40025 280 40030 Items[{id:"minecraft:smooth_quartz",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/smooth_quartz",why:"expected 1x minecraft:smooth_quartz in the chest"}
execute store success score #ok autotest if data block 40028 280 40030 Items[{id:"minecraft:smooth_red_sandstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/smooth_red_sandstone",why:"expected 1x minecraft:smooth_red_sandstone in the chest"}
execute store success score #ok autotest if data block 40031 280 40030 Items[{id:"minecraft:smooth_sandstone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/smooth_sandstone",why:"expected 1x minecraft:smooth_sandstone in the chest"}
execute store success score #ok autotest if data block 40034 280 40030 Items[{id:"minecraft:smooth_stone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/smooth_stone",why:"expected 1x minecraft:smooth_stone in the chest"}
execute store success score #ok autotest if data block 40037 280 40030 Items[{id:"minecraft:spruce_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/spruce_planks",why:"expected 1x minecraft:spruce_planks in the chest"}
execute store success score #ok autotest if data block 40040 280 40030 Items[{id:"minecraft:stone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/stone",why:"expected 1x minecraft:stone in the chest"}
execute store success score #ok autotest if data block 40043 280 40030 Items[{id:"minecraft:stone_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/stone_bricks",why:"expected 1x minecraft:stone_bricks in the chest"}
execute store success score #ok autotest if data block 40046 280 40030 Items[{id:"minecraft:tuff",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/tuff",why:"expected 1x minecraft:tuff in the chest"}
execute store success score #ok autotest if data block 40001 280 40032 Items[{id:"minecraft:tuff_bricks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/tuff_bricks",why:"expected 1x minecraft:tuff_bricks in the chest"}
execute store success score #ok autotest if data block 40004 280 40032 Items[{id:"minecraft:warped_planks",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/warped_planks",why:"expected 1x minecraft:warped_planks in the chest"}
execute store success score #ok autotest if data block 40007 280 40032 Items[{id:"minecraft:waxed_cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/waxed_cut_copper",why:"expected 1x minecraft:waxed_cut_copper in the chest"}
execute store success score #ok autotest if data block 40010 280 40032 Items[{id:"minecraft:waxed_exposed_cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/waxed_exposed_cut_copper",why:"expected 1x minecraft:waxed_exposed_cut_copper in the chest"}
execute store success score #ok autotest if data block 40013 280 40032 Items[{id:"minecraft:waxed_oxidized_cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/waxed_oxidized_cut_copper",why:"expected 1x minecraft:waxed_oxidized_cut_copper in the chest"}
execute store success score #ok autotest if data block 40016 280 40032 Items[{id:"minecraft:waxed_weathered_cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/waxed_weathered_cut_copper",why:"expected 1x minecraft:waxed_weathered_cut_copper in the chest"}
execute store success score #ok autotest if data block 40019 280 40032 Items[{id:"minecraft:weathered_cut_copper",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:slabs/weathered_cut_copper",why:"expected 1x minecraft:weathered_cut_copper in the chest"}
execute store success score #ok autotest if data block 40022 280 40032 Items[{id:"minecraft:acacia_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/acacia_planks",why:"expected 3x minecraft:acacia_planks in the chest"}
execute store success score #ok autotest if data block 40025 280 40032 Items[{id:"minecraft:andesite",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/andesite",why:"expected 3x minecraft:andesite in the chest"}
execute store success score #ok autotest if data block 40028 280 40032 Items[{id:"minecraft:bamboo_mosaic",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/bamboo_mosaic",why:"expected 3x minecraft:bamboo_mosaic in the chest"}
execute store success score #ok autotest if data block 40031 280 40032 Items[{id:"minecraft:bamboo_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/bamboo_planks",why:"expected 3x minecraft:bamboo_planks in the chest"}
execute store success score #ok autotest if data block 40034 280 40032 Items[{id:"minecraft:birch_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/birch_planks",why:"expected 3x minecraft:birch_planks in the chest"}
execute store success score #ok autotest if data block 40037 280 40032 Items[{id:"minecraft:blackstone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/blackstone",why:"expected 3x minecraft:blackstone in the chest"}
execute store success score #ok autotest if data block 40040 280 40032 Items[{id:"minecraft:bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/bricks",why:"expected 3x minecraft:bricks in the chest"}
execute store success score #ok autotest if data block 40043 280 40032 Items[{id:"minecraft:cherry_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/cherry_planks",why:"expected 3x minecraft:cherry_planks in the chest"}
execute store success score #ok autotest if data block 40046 280 40032 Items[{id:"minecraft:cobbled_deepslate",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/cobbled_deepslate",why:"expected 3x minecraft:cobbled_deepslate in the chest"}
execute store success score #ok autotest if data block 40001 280 40034 Items[{id:"minecraft:cobblestone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/cobblestone",why:"expected 3x minecraft:cobblestone in the chest"}
execute store success score #ok autotest if data block 40004 280 40034 Items[{id:"minecraft:crimson_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/crimson_planks",why:"expected 3x minecraft:crimson_planks in the chest"}
execute store success score #ok autotest if data block 40007 280 40034 Items[{id:"minecraft:cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/cut_copper",why:"expected 3x minecraft:cut_copper in the chest"}
execute store success score #ok autotest if data block 40010 280 40034 Items[{id:"minecraft:dark_oak_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/dark_oak_planks",why:"expected 3x minecraft:dark_oak_planks in the chest"}
execute store success score #ok autotest if data block 40013 280 40034 Items[{id:"minecraft:dark_prismarine",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/dark_prismarine",why:"expected 3x minecraft:dark_prismarine in the chest"}
execute store success score #ok autotest if data block 40016 280 40034 Items[{id:"minecraft:deepslate_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/deepslate_bricks",why:"expected 3x minecraft:deepslate_bricks in the chest"}
execute store success score #ok autotest if data block 40019 280 40034 Items[{id:"minecraft:deepslate_tiles",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/deepslate_tiles",why:"expected 3x minecraft:deepslate_tiles in the chest"}
execute store success score #ok autotest if data block 40022 280 40034 Items[{id:"minecraft:diorite",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/diorite",why:"expected 3x minecraft:diorite in the chest"}
execute store success score #ok autotest if data block 40025 280 40034 Items[{id:"minecraft:end_stone_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/end_stone_bricks",why:"expected 3x minecraft:end_stone_bricks in the chest"}
execute store success score #ok autotest if data block 40028 280 40034 Items[{id:"minecraft:exposed_cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/exposed_cut_copper",why:"expected 3x minecraft:exposed_cut_copper in the chest"}
execute store success score #ok autotest if data block 40031 280 40034 Items[{id:"minecraft:granite",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/granite",why:"expected 3x minecraft:granite in the chest"}
execute store success score #ok autotest if data block 40034 280 40034 Items[{id:"minecraft:jungle_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/jungle_planks",why:"expected 3x minecraft:jungle_planks in the chest"}
execute store success score #ok autotest if data block 40037 280 40034 Items[{id:"minecraft:mangrove_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/mangrove_planks",why:"expected 3x minecraft:mangrove_planks in the chest"}
execute store success score #ok autotest if data block 40040 280 40034 Items[{id:"minecraft:mossy_cobblestone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/mossy_cobblestone",why:"expected 3x minecraft:mossy_cobblestone in the chest"}
execute store success score #ok autotest if data block 40043 280 40034 Items[{id:"minecraft:mossy_stone_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/mossy_stone_bricks",why:"expected 3x minecraft:mossy_stone_bricks in the chest"}
execute store success score #ok autotest if data block 40046 280 40034 Items[{id:"minecraft:mud_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/mud_bricks",why:"expected 3x minecraft:mud_bricks in the chest"}
execute store success score #ok autotest if data block 40001 280 40036 Items[{id:"minecraft:nether_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/nether_bricks",why:"expected 3x minecraft:nether_bricks in the chest"}
execute store success score #ok autotest if data block 40004 280 40036 Items[{id:"minecraft:oak_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/oak_planks",why:"expected 3x minecraft:oak_planks in the chest"}
execute store success score #ok autotest if data block 40007 280 40036 Items[{id:"minecraft:oxidized_cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/oxidized_cut_copper",why:"expected 3x minecraft:oxidized_cut_copper in the chest"}
execute store success score #ok autotest if data block 40010 280 40036 Items[{id:"minecraft:pale_oak_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/pale_oak_planks",why:"expected 3x minecraft:pale_oak_planks in the chest"}
execute store success score #ok autotest if data block 40013 280 40036 Items[{id:"minecraft:polished_andesite",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/polished_andesite",why:"expected 3x minecraft:polished_andesite in the chest"}
execute store success score #ok autotest if data block 40016 280 40036 Items[{id:"minecraft:polished_blackstone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/polished_blackstone",why:"expected 3x minecraft:polished_blackstone in the chest"}
execute store success score #ok autotest if data block 40019 280 40036 Items[{id:"minecraft:polished_blackstone_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/polished_blackstone_bricks",why:"expected 3x minecraft:polished_blackstone_bricks in the chest"}
execute store success score #ok autotest if data block 40022 280 40036 Items[{id:"minecraft:polished_deepslate",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/polished_deepslate",why:"expected 3x minecraft:polished_deepslate in the chest"}
execute store success score #ok autotest if data block 40025 280 40036 Items[{id:"minecraft:polished_diorite",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/polished_diorite",why:"expected 3x minecraft:polished_diorite in the chest"}
execute store success score #ok autotest if data block 40028 280 40036 Items[{id:"minecraft:polished_granite",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/polished_granite",why:"expected 3x minecraft:polished_granite in the chest"}
execute store success score #ok autotest if data block 40031 280 40036 Items[{id:"minecraft:polished_tuff",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/polished_tuff",why:"expected 3x minecraft:polished_tuff in the chest"}
execute store success score #ok autotest if data block 40034 280 40036 Items[{id:"minecraft:prismarine",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/prismarine",why:"expected 3x minecraft:prismarine in the chest"}
execute store success score #ok autotest if data block 40037 280 40036 Items[{id:"minecraft:prismarine_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/prismarine_bricks",why:"expected 3x minecraft:prismarine_bricks in the chest"}
execute store success score #ok autotest if data block 40040 280 40036 Items[{id:"minecraft:purpur_block",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/purpur_block",why:"expected 3x minecraft:purpur_block in the chest"}
execute store success score #ok autotest if data block 40043 280 40036 Items[{id:"minecraft:quartz_block",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/quartz_block",why:"expected 3x minecraft:quartz_block in the chest"}
execute store success score #ok autotest if data block 40046 280 40036 Items[{id:"minecraft:red_nether_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/red_nether_bricks",why:"expected 3x minecraft:red_nether_bricks in the chest"}
execute store success score #ok autotest if data block 40001 280 40038 Items[{id:"minecraft:red_sandstone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/red_sandstone",why:"expected 3x minecraft:red_sandstone in the chest"}
execute store success score #ok autotest if data block 40004 280 40038 Items[{id:"minecraft:sandstone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/sandstone",why:"expected 3x minecraft:sandstone in the chest"}
execute store success score #ok autotest if data block 40007 280 40038 Items[{id:"minecraft:smooth_quartz",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/smooth_quartz",why:"expected 3x minecraft:smooth_quartz in the chest"}
execute store success score #ok autotest if data block 40010 280 40038 Items[{id:"minecraft:smooth_red_sandstone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/smooth_red_sandstone",why:"expected 3x minecraft:smooth_red_sandstone in the chest"}
execute store success score #ok autotest if data block 40013 280 40038 Items[{id:"minecraft:smooth_sandstone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/smooth_sandstone",why:"expected 3x minecraft:smooth_sandstone in the chest"}
execute store success score #ok autotest if data block 40016 280 40038 Items[{id:"minecraft:spruce_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/spruce_planks",why:"expected 3x minecraft:spruce_planks in the chest"}
execute store success score #ok autotest if data block 40019 280 40038 Items[{id:"minecraft:stone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/stone",why:"expected 3x minecraft:stone in the chest"}
execute store success score #ok autotest if data block 40022 280 40038 Items[{id:"minecraft:stone_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/stone_bricks",why:"expected 3x minecraft:stone_bricks in the chest"}
execute store success score #ok autotest if data block 40025 280 40038 Items[{id:"minecraft:stone",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/stone_stairs",why:"expected 3x minecraft:stone in the chest"}
execute store success score #ok autotest if data block 40028 280 40038 Items[{id:"minecraft:tuff",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/tuff",why:"expected 3x minecraft:tuff in the chest"}
execute store success score #ok autotest if data block 40031 280 40038 Items[{id:"minecraft:tuff_bricks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/tuff_bricks",why:"expected 3x minecraft:tuff_bricks in the chest"}
execute store success score #ok autotest if data block 40034 280 40038 Items[{id:"minecraft:warped_planks",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/warped_planks",why:"expected 3x minecraft:warped_planks in the chest"}
execute store success score #ok autotest if data block 40037 280 40038 Items[{id:"minecraft:waxed_cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/waxed_cut_copper",why:"expected 3x minecraft:waxed_cut_copper in the chest"}
execute store success score #ok autotest if data block 40040 280 40038 Items[{id:"minecraft:waxed_exposed_cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/waxed_exposed_cut_copper",why:"expected 3x minecraft:waxed_exposed_cut_copper in the chest"}
execute store success score #ok autotest if data block 40043 280 40038 Items[{id:"minecraft:waxed_oxidized_cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/waxed_oxidized_cut_copper",why:"expected 3x minecraft:waxed_oxidized_cut_copper in the chest"}
execute store success score #ok autotest if data block 40046 280 40038 Items[{id:"minecraft:waxed_weathered_cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/waxed_weathered_cut_copper",why:"expected 3x minecraft:waxed_weathered_cut_copper in the chest"}
execute store success score #ok autotest if data block 40001 280 40040 Items[{id:"minecraft:weathered_cut_copper",count:3}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 slabs_stairs_to_block:stairs/weathered_cut_copper",why:"expected 3x minecraft:weathered_cut_copper in the chest"}
execute store success score #ok autotest if data block 40004 280 40040 Items[{id:"minecraft:ice",count:9}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-22 uncraftable_ice:ice",why:"expected 9x minecraft:ice in the chest"}
execute store success score #ok autotest if data block 40007 280 40040 Items[{id:"minecraft:packed_ice",count:9}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-22 uncraftable_ice:packed_ice",why:"expected 9x minecraft:packed_ice in the chest"}
execute store success score #ok autotest if data block 40010 280 40040 Items[{id:"minecraft:nether_wart",count:9}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-22 uncraftable_nether_wart_block:nether_wart",why:"expected 9x minecraft:nether_wart in the chest"}
execute store success score #ok autotest if data block 40013 280 40040 Items[{id:"minecraft:black_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_candle [white_candle]",why:"expected 8x minecraft:black_candle in the chest"}
execute store success score #ok autotest if data block 40016 280 40040 Items[{id:"minecraft:black_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_candle [gray_candle]",why:"expected 8x minecraft:black_candle in the chest"}
execute store success score #ok autotest if data block 40019 280 40040 Items[{id:"minecraft:black_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_candle [red_candle]",why:"expected 8x minecraft:black_candle in the chest"}
execute store success score #ok autotest if data block 40022 280 40040 Items[{id:"minecraft:black_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:black_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40025 280 40040 Items[{id:"minecraft:black_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:black_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40028 280 40040 Items[{id:"minecraft:black_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_concrete_powder [red_concrete_powder]",why:"expected 8x minecraft:black_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40031 280 40040 Items[{id:"minecraft:black_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:black_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40034 280 40040 Items[{id:"minecraft:black_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:black_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40037 280 40040 Items[{id:"minecraft:black_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_glazed_terracotta [red_glazed_terracotta]",why:"expected 8x minecraft:black_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40040 Items[{id:"minecraft:black_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_stained_glass [white_stained_glass]",why:"expected 8x minecraft:black_stained_glass in the chest"}
execute store success score #ok autotest if data block 40043 280 40040 Items[{id:"minecraft:black_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:black_stained_glass in the chest"}
execute store success score #ok autotest if data block 40046 280 40040 Items[{id:"minecraft:black_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_stained_glass [red_stained_glass]",why:"expected 8x minecraft:black_stained_glass in the chest"}
execute store success score #ok autotest if data block 40001 280 40042 Items[{id:"minecraft:black_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:black_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40004 280 40042 Items[{id:"minecraft:black_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:black_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40007 280 40042 Items[{id:"minecraft:black_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_stained_glass_pane [red_stained_glass_pane]",why:"expected 8x minecraft:black_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40010 280 40042 Items[{id:"minecraft:black_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_terracotta [white_terracotta]",why:"expected 8x minecraft:black_terracotta in the chest"}
execute store success score #ok autotest if data block 40013 280 40042 Items[{id:"minecraft:black_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_terracotta [gray_terracotta]",why:"expected 8x minecraft:black_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40042 Items[{id:"minecraft:black_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:black_terracotta [red_terracotta]",why:"expected 8x minecraft:black_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40042 Items[{id:"minecraft:blue_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_candle [white_candle]",why:"expected 8x minecraft:blue_candle in the chest"}
execute store success score #ok autotest if data block 40022 280 40042 Items[{id:"minecraft:blue_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_candle [gray_candle]",why:"expected 8x minecraft:blue_candle in the chest"}
execute store success score #ok autotest if data block 40025 280 40042 Items[{id:"minecraft:blue_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_candle [black_candle]",why:"expected 8x minecraft:blue_candle in the chest"}
execute store success score #ok autotest if data block 40028 280 40042 Items[{id:"minecraft:blue_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:blue_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40031 280 40042 Items[{id:"minecraft:blue_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:blue_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40034 280 40042 Items[{id:"minecraft:blue_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:blue_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40037 280 40042 Items[{id:"minecraft:blue_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:blue_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40042 Items[{id:"minecraft:blue_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:blue_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40042 Items[{id:"minecraft:blue_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:blue_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40042 Items[{id:"minecraft:blue_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_stained_glass [white_stained_glass]",why:"expected 8x minecraft:blue_stained_glass in the chest"}
execute store success score #ok autotest if data block 40001 280 40044 Items[{id:"minecraft:blue_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:blue_stained_glass in the chest"}
execute store success score #ok autotest if data block 40004 280 40044 Items[{id:"minecraft:blue_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_stained_glass [black_stained_glass]",why:"expected 8x minecraft:blue_stained_glass in the chest"}
execute store success score #ok autotest if data block 40007 280 40044 Items[{id:"minecraft:blue_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:blue_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40010 280 40044 Items[{id:"minecraft:blue_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:blue_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40013 280 40044 Items[{id:"minecraft:blue_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:blue_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40016 280 40044 Items[{id:"minecraft:blue_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_terracotta [white_terracotta]",why:"expected 8x minecraft:blue_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40044 Items[{id:"minecraft:blue_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_terracotta [gray_terracotta]",why:"expected 8x minecraft:blue_terracotta in the chest"}
execute store success score #ok autotest if data block 40022 280 40044 Items[{id:"minecraft:blue_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:blue_terracotta [black_terracotta]",why:"expected 8x minecraft:blue_terracotta in the chest"}
execute store success score #ok autotest if data block 40025 280 40044 Items[{id:"minecraft:brown_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_candle [white_candle]",why:"expected 8x minecraft:brown_candle in the chest"}
execute store success score #ok autotest if data block 40028 280 40044 Items[{id:"minecraft:brown_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_candle [gray_candle]",why:"expected 8x minecraft:brown_candle in the chest"}
execute store success score #ok autotest if data block 40031 280 40044 Items[{id:"minecraft:brown_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_candle [black_candle]",why:"expected 8x minecraft:brown_candle in the chest"}
execute store success score #ok autotest if data block 40034 280 40044 Items[{id:"minecraft:brown_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:brown_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40037 280 40044 Items[{id:"minecraft:brown_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:brown_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40040 280 40044 Items[{id:"minecraft:brown_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:brown_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40043 280 40044 Items[{id:"minecraft:brown_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:brown_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40044 Items[{id:"minecraft:brown_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:brown_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40001 280 40046 Items[{id:"minecraft:brown_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:brown_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40004 280 40046 Items[{id:"minecraft:brown_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_stained_glass [white_stained_glass]",why:"expected 8x minecraft:brown_stained_glass in the chest"}
execute store success score #ok autotest if data block 40007 280 40046 Items[{id:"minecraft:brown_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:brown_stained_glass in the chest"}
execute store success score #ok autotest if data block 40010 280 40046 Items[{id:"minecraft:brown_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_stained_glass [black_stained_glass]",why:"expected 8x minecraft:brown_stained_glass in the chest"}
execute store success score #ok autotest if data block 40013 280 40046 Items[{id:"minecraft:brown_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:brown_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40016 280 40046 Items[{id:"minecraft:brown_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:brown_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40019 280 40046 Items[{id:"minecraft:brown_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:brown_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40022 280 40046 Items[{id:"minecraft:brown_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_terracotta [white_terracotta]",why:"expected 8x minecraft:brown_terracotta in the chest"}
execute store success score #ok autotest if data block 40025 280 40046 Items[{id:"minecraft:brown_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_terracotta [gray_terracotta]",why:"expected 8x minecraft:brown_terracotta in the chest"}
execute store success score #ok autotest if data block 40028 280 40046 Items[{id:"minecraft:brown_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:brown_terracotta [black_terracotta]",why:"expected 8x minecraft:brown_terracotta in the chest"}
execute store success score #ok autotest if data block 40031 280 40046 Items[{id:"minecraft:candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:candle [white_candle]",why:"expected 8x minecraft:candle in the chest"}
execute store success score #ok autotest if data block 40034 280 40046 Items[{id:"minecraft:candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:candle [light_gray_candle]",why:"expected 8x minecraft:candle in the chest"}
execute store success score #ok autotest if data block 40037 280 40046 Items[{id:"minecraft:candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:candle [black_candle]",why:"expected 8x minecraft:candle in the chest"}
execute store success score #ok autotest if data block 40040 280 40046 Items[{id:"minecraft:cyan_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_candle [white_candle]",why:"expected 8x minecraft:cyan_candle in the chest"}
execute store success score #ok autotest if data block 40043 280 40046 Items[{id:"minecraft:cyan_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_candle [gray_candle]",why:"expected 8x minecraft:cyan_candle in the chest"}
execute store success score #ok autotest if data block 40046 280 40046 Items[{id:"minecraft:cyan_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_candle [black_candle]",why:"expected 8x minecraft:cyan_candle in the chest"}
execute store success score #ok autotest if data block 40001 280 40048 Items[{id:"minecraft:cyan_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:cyan_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40004 280 40048 Items[{id:"minecraft:cyan_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:cyan_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40007 280 40048 Items[{id:"minecraft:cyan_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:cyan_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40010 280 40048 Items[{id:"minecraft:cyan_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:cyan_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40013 280 40048 Items[{id:"minecraft:cyan_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:cyan_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40048 Items[{id:"minecraft:cyan_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:cyan_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40048 Items[{id:"minecraft:cyan_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_stained_glass [white_stained_glass]",why:"expected 8x minecraft:cyan_stained_glass in the chest"}
execute store success score #ok autotest if data block 40022 280 40048 Items[{id:"minecraft:cyan_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:cyan_stained_glass in the chest"}
execute store success score #ok autotest if data block 40025 280 40048 Items[{id:"minecraft:cyan_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_stained_glass [black_stained_glass]",why:"expected 8x minecraft:cyan_stained_glass in the chest"}
execute store success score #ok autotest if data block 40028 280 40048 Items[{id:"minecraft:cyan_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:cyan_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40031 280 40048 Items[{id:"minecraft:cyan_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:cyan_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40034 280 40048 Items[{id:"minecraft:cyan_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:cyan_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40037 280 40048 Items[{id:"minecraft:cyan_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_terracotta [white_terracotta]",why:"expected 8x minecraft:cyan_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40048 Items[{id:"minecraft:cyan_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_terracotta [gray_terracotta]",why:"expected 8x minecraft:cyan_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40048 Items[{id:"minecraft:cyan_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:cyan_terracotta [black_terracotta]",why:"expected 8x minecraft:cyan_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40048 Items[{id:"minecraft:glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:glass [white_stained_glass]",why:"expected 8x minecraft:glass in the chest"}
execute store success score #ok autotest if data block 40001 280 40050 Items[{id:"minecraft:glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:glass [light_gray_stained_glass]",why:"expected 8x minecraft:glass in the chest"}
execute store success score #ok autotest if data block 40004 280 40050 Items[{id:"minecraft:glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:glass [black_stained_glass]",why:"expected 8x minecraft:glass in the chest"}
execute store success score #ok autotest if data block 40007 280 40050 Items[{id:"minecraft:glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:glass_pane in the chest"}
execute store success score #ok autotest if data block 40010 280 40050 Items[{id:"minecraft:glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:glass_pane in the chest"}
execute store success score #ok autotest if data block 40013 280 40050 Items[{id:"minecraft:glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:glass_pane in the chest"}
execute store success score #ok autotest if data block 40016 280 40050 Items[{id:"minecraft:gray_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_candle [white_candle]",why:"expected 8x minecraft:gray_candle in the chest"}
execute store success score #ok autotest if data block 40019 280 40050 Items[{id:"minecraft:gray_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_candle [light_gray_candle]",why:"expected 8x minecraft:gray_candle in the chest"}
execute store success score #ok autotest if data block 40022 280 40050 Items[{id:"minecraft:gray_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_candle [black_candle]",why:"expected 8x minecraft:gray_candle in the chest"}
execute store success score #ok autotest if data block 40025 280 40050 Items[{id:"minecraft:gray_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:gray_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40028 280 40050 Items[{id:"minecraft:gray_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:gray_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40031 280 40050 Items[{id:"minecraft:gray_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:gray_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40034 280 40050 Items[{id:"minecraft:gray_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:gray_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40037 280 40050 Items[{id:"minecraft:gray_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:gray_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40050 Items[{id:"minecraft:gray_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:gray_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40050 Items[{id:"minecraft:gray_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_stained_glass [white_stained_glass]",why:"expected 8x minecraft:gray_stained_glass in the chest"}
execute store success score #ok autotest if data block 40046 280 40050 Items[{id:"minecraft:gray_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:gray_stained_glass in the chest"}
execute store success score #ok autotest if data block 40001 280 40052 Items[{id:"minecraft:gray_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_stained_glass [black_stained_glass]",why:"expected 8x minecraft:gray_stained_glass in the chest"}
execute store success score #ok autotest if data block 40004 280 40052 Items[{id:"minecraft:gray_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:gray_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40007 280 40052 Items[{id:"minecraft:gray_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:gray_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40010 280 40052 Items[{id:"minecraft:gray_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:gray_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40013 280 40052 Items[{id:"minecraft:gray_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_terracotta [white_terracotta]",why:"expected 8x minecraft:gray_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40052 Items[{id:"minecraft:gray_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:gray_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40052 Items[{id:"minecraft:gray_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:gray_terracotta [black_terracotta]",why:"expected 8x minecraft:gray_terracotta in the chest"}
execute store success score #ok autotest if data block 40022 280 40052 Items[{id:"minecraft:green_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_candle [white_candle]",why:"expected 8x minecraft:green_candle in the chest"}
execute store success score #ok autotest if data block 40025 280 40052 Items[{id:"minecraft:green_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_candle [gray_candle]",why:"expected 8x minecraft:green_candle in the chest"}
execute store success score #ok autotest if data block 40028 280 40052 Items[{id:"minecraft:green_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_candle [black_candle]",why:"expected 8x minecraft:green_candle in the chest"}
execute store success score #ok autotest if data block 40031 280 40052 Items[{id:"minecraft:green_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:green_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40034 280 40052 Items[{id:"minecraft:green_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:green_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40037 280 40052 Items[{id:"minecraft:green_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:green_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40040 280 40052 Items[{id:"minecraft:green_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:green_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40052 Items[{id:"minecraft:green_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:green_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40052 Items[{id:"minecraft:green_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:green_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40001 280 40054 Items[{id:"minecraft:green_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_stained_glass [white_stained_glass]",why:"expected 8x minecraft:green_stained_glass in the chest"}
execute store success score #ok autotest if data block 40004 280 40054 Items[{id:"minecraft:green_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:green_stained_glass in the chest"}
execute store success score #ok autotest if data block 40007 280 40054 Items[{id:"minecraft:green_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_stained_glass [black_stained_glass]",why:"expected 8x minecraft:green_stained_glass in the chest"}
execute store success score #ok autotest if data block 40010 280 40054 Items[{id:"minecraft:green_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:green_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40013 280 40054 Items[{id:"minecraft:green_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:green_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40016 280 40054 Items[{id:"minecraft:green_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:green_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40019 280 40054 Items[{id:"minecraft:green_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_terracotta [white_terracotta]",why:"expected 8x minecraft:green_terracotta in the chest"}
execute store success score #ok autotest if data block 40022 280 40054 Items[{id:"minecraft:green_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_terracotta [gray_terracotta]",why:"expected 8x minecraft:green_terracotta in the chest"}
execute store success score #ok autotest if data block 40025 280 40054 Items[{id:"minecraft:green_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:green_terracotta [black_terracotta]",why:"expected 8x minecraft:green_terracotta in the chest"}
execute store success score #ok autotest if data block 40028 280 40054 Items[{id:"minecraft:light_blue_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_candle [white_candle]",why:"expected 8x minecraft:light_blue_candle in the chest"}
execute store success score #ok autotest if data block 40031 280 40054 Items[{id:"minecraft:light_blue_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_candle [light_gray_candle]",why:"expected 8x minecraft:light_blue_candle in the chest"}
execute store success score #ok autotest if data block 40034 280 40054 Items[{id:"minecraft:light_blue_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_candle [black_candle]",why:"expected 8x minecraft:light_blue_candle in the chest"}
execute store success score #ok autotest if data block 40037 280 40054 Items[{id:"minecraft:light_blue_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:light_blue_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40040 280 40054 Items[{id:"minecraft:light_blue_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:light_blue_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40043 280 40054 Items[{id:"minecraft:light_blue_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:light_blue_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40046 280 40054 Items[{id:"minecraft:light_blue_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:light_blue_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40001 280 40056 Items[{id:"minecraft:light_blue_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:light_blue_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40004 280 40056 Items[{id:"minecraft:light_blue_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:light_blue_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40007 280 40056 Items[{id:"minecraft:light_blue_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_stained_glass [white_stained_glass]",why:"expected 8x minecraft:light_blue_stained_glass in the chest"}
execute store success score #ok autotest if data block 40010 280 40056 Items[{id:"minecraft:light_blue_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:light_blue_stained_glass in the chest"}
execute store success score #ok autotest if data block 40013 280 40056 Items[{id:"minecraft:light_blue_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_stained_glass [black_stained_glass]",why:"expected 8x minecraft:light_blue_stained_glass in the chest"}
execute store success score #ok autotest if data block 40016 280 40056 Items[{id:"minecraft:light_blue_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:light_blue_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40019 280 40056 Items[{id:"minecraft:light_blue_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:light_blue_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40022 280 40056 Items[{id:"minecraft:light_blue_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:light_blue_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40025 280 40056 Items[{id:"minecraft:light_blue_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_terracotta [white_terracotta]",why:"expected 8x minecraft:light_blue_terracotta in the chest"}
execute store success score #ok autotest if data block 40028 280 40056 Items[{id:"minecraft:light_blue_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:light_blue_terracotta in the chest"}
execute store success score #ok autotest if data block 40031 280 40056 Items[{id:"minecraft:light_blue_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_blue_terracotta [black_terracotta]",why:"expected 8x minecraft:light_blue_terracotta in the chest"}
execute store success score #ok autotest if data block 40034 280 40056 Items[{id:"minecraft:light_gray_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_candle [white_candle]",why:"expected 8x minecraft:light_gray_candle in the chest"}
execute store success score #ok autotest if data block 40037 280 40056 Items[{id:"minecraft:light_gray_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_candle [gray_candle]",why:"expected 8x minecraft:light_gray_candle in the chest"}
execute store success score #ok autotest if data block 40040 280 40056 Items[{id:"minecraft:light_gray_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_candle [black_candle]",why:"expected 8x minecraft:light_gray_candle in the chest"}
execute store success score #ok autotest if data block 40043 280 40056 Items[{id:"minecraft:light_gray_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:light_gray_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40046 280 40056 Items[{id:"minecraft:light_gray_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:light_gray_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40001 280 40058 Items[{id:"minecraft:light_gray_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:light_gray_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40004 280 40058 Items[{id:"minecraft:light_gray_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:light_gray_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40007 280 40058 Items[{id:"minecraft:light_gray_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:light_gray_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40010 280 40058 Items[{id:"minecraft:light_gray_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:light_gray_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40013 280 40058 Items[{id:"minecraft:light_gray_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_stained_glass [white_stained_glass]",why:"expected 8x minecraft:light_gray_stained_glass in the chest"}
execute store success score #ok autotest if data block 40016 280 40058 Items[{id:"minecraft:light_gray_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:light_gray_stained_glass in the chest"}
execute store success score #ok autotest if data block 40019 280 40058 Items[{id:"minecraft:light_gray_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_stained_glass [black_stained_glass]",why:"expected 8x minecraft:light_gray_stained_glass in the chest"}
execute store success score #ok autotest if data block 40022 280 40058 Items[{id:"minecraft:light_gray_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:light_gray_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40025 280 40058 Items[{id:"minecraft:light_gray_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:light_gray_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40028 280 40058 Items[{id:"minecraft:light_gray_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:light_gray_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40031 280 40058 Items[{id:"minecraft:light_gray_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_terracotta [white_terracotta]",why:"expected 8x minecraft:light_gray_terracotta in the chest"}
execute store success score #ok autotest if data block 40034 280 40058 Items[{id:"minecraft:light_gray_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_terracotta [gray_terracotta]",why:"expected 8x minecraft:light_gray_terracotta in the chest"}
execute store success score #ok autotest if data block 40037 280 40058 Items[{id:"minecraft:light_gray_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:light_gray_terracotta [black_terracotta]",why:"expected 8x minecraft:light_gray_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40058 Items[{id:"minecraft:lime_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_candle [white_candle]",why:"expected 8x minecraft:lime_candle in the chest"}
execute store success score #ok autotest if data block 40043 280 40058 Items[{id:"minecraft:lime_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_candle [light_gray_candle]",why:"expected 8x minecraft:lime_candle in the chest"}
execute store success score #ok autotest if data block 40046 280 40058 Items[{id:"minecraft:lime_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_candle [black_candle]",why:"expected 8x minecraft:lime_candle in the chest"}
execute store success score #ok autotest if data block 40001 280 40060 Items[{id:"minecraft:lime_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:lime_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40004 280 40060 Items[{id:"minecraft:lime_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:lime_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40007 280 40060 Items[{id:"minecraft:lime_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:lime_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40010 280 40060 Items[{id:"minecraft:lime_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:lime_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40013 280 40060 Items[{id:"minecraft:lime_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:lime_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40060 Items[{id:"minecraft:lime_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:lime_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40060 Items[{id:"minecraft:lime_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_stained_glass [white_stained_glass]",why:"expected 8x minecraft:lime_stained_glass in the chest"}
execute store success score #ok autotest if data block 40022 280 40060 Items[{id:"minecraft:lime_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:lime_stained_glass in the chest"}
execute store success score #ok autotest if data block 40025 280 40060 Items[{id:"minecraft:lime_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_stained_glass [black_stained_glass]",why:"expected 8x minecraft:lime_stained_glass in the chest"}
execute store success score #ok autotest if data block 40028 280 40060 Items[{id:"minecraft:lime_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:lime_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40031 280 40060 Items[{id:"minecraft:lime_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:lime_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40034 280 40060 Items[{id:"minecraft:lime_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:lime_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40037 280 40060 Items[{id:"minecraft:lime_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_terracotta [white_terracotta]",why:"expected 8x minecraft:lime_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40060 Items[{id:"minecraft:lime_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:lime_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40060 Items[{id:"minecraft:lime_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:lime_terracotta [black_terracotta]",why:"expected 8x minecraft:lime_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40060 Items[{id:"minecraft:magenta_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_candle [white_candle]",why:"expected 8x minecraft:magenta_candle in the chest"}
execute store success score #ok autotest if data block 40001 280 40062 Items[{id:"minecraft:magenta_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_candle [light_gray_candle]",why:"expected 8x minecraft:magenta_candle in the chest"}
execute store success score #ok autotest if data block 40004 280 40062 Items[{id:"minecraft:magenta_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_candle [black_candle]",why:"expected 8x minecraft:magenta_candle in the chest"}
execute store success score #ok autotest if data block 40007 280 40062 Items[{id:"minecraft:magenta_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:magenta_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40010 280 40062 Items[{id:"minecraft:magenta_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:magenta_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40013 280 40062 Items[{id:"minecraft:magenta_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:magenta_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40016 280 40062 Items[{id:"minecraft:magenta_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:magenta_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40062 Items[{id:"minecraft:magenta_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:magenta_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40022 280 40062 Items[{id:"minecraft:magenta_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:magenta_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40025 280 40062 Items[{id:"minecraft:magenta_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_stained_glass [white_stained_glass]",why:"expected 8x minecraft:magenta_stained_glass in the chest"}
execute store success score #ok autotest if data block 40028 280 40062 Items[{id:"minecraft:magenta_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:magenta_stained_glass in the chest"}
execute store success score #ok autotest if data block 40031 280 40062 Items[{id:"minecraft:magenta_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_stained_glass [black_stained_glass]",why:"expected 8x minecraft:magenta_stained_glass in the chest"}
execute store success score #ok autotest if data block 40034 280 40062 Items[{id:"minecraft:magenta_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:magenta_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40037 280 40062 Items[{id:"minecraft:magenta_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:magenta_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40040 280 40062 Items[{id:"minecraft:magenta_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:magenta_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40043 280 40062 Items[{id:"minecraft:magenta_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_terracotta [white_terracotta]",why:"expected 8x minecraft:magenta_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40062 Items[{id:"minecraft:magenta_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:magenta_terracotta in the chest"}
execute store success score #ok autotest if data block 40001 280 40064 Items[{id:"minecraft:magenta_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:magenta_terracotta [black_terracotta]",why:"expected 8x minecraft:magenta_terracotta in the chest"}
execute store success score #ok autotest if data block 40004 280 40064 Items[{id:"minecraft:orange_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_candle [white_candle]",why:"expected 8x minecraft:orange_candle in the chest"}
execute store success score #ok autotest if data block 40007 280 40064 Items[{id:"minecraft:orange_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_candle [light_gray_candle]",why:"expected 8x minecraft:orange_candle in the chest"}
execute store success score #ok autotest if data block 40010 280 40064 Items[{id:"minecraft:orange_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_candle [black_candle]",why:"expected 8x minecraft:orange_candle in the chest"}
execute store success score #ok autotest if data block 40013 280 40064 Items[{id:"minecraft:orange_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:orange_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40016 280 40064 Items[{id:"minecraft:orange_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:orange_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40019 280 40064 Items[{id:"minecraft:orange_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:orange_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40022 280 40064 Items[{id:"minecraft:orange_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:orange_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40025 280 40064 Items[{id:"minecraft:orange_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:orange_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40028 280 40064 Items[{id:"minecraft:orange_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:orange_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40031 280 40064 Items[{id:"minecraft:orange_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_stained_glass [white_stained_glass]",why:"expected 8x minecraft:orange_stained_glass in the chest"}
execute store success score #ok autotest if data block 40034 280 40064 Items[{id:"minecraft:orange_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:orange_stained_glass in the chest"}
execute store success score #ok autotest if data block 40037 280 40064 Items[{id:"minecraft:orange_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_stained_glass [black_stained_glass]",why:"expected 8x minecraft:orange_stained_glass in the chest"}
execute store success score #ok autotest if data block 40040 280 40064 Items[{id:"minecraft:orange_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:orange_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40043 280 40064 Items[{id:"minecraft:orange_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:orange_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40046 280 40064 Items[{id:"minecraft:orange_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:orange_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40001 280 40066 Items[{id:"minecraft:orange_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_terracotta [white_terracotta]",why:"expected 8x minecraft:orange_terracotta in the chest"}
execute store success score #ok autotest if data block 40004 280 40066 Items[{id:"minecraft:orange_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:orange_terracotta in the chest"}
execute store success score #ok autotest if data block 40007 280 40066 Items[{id:"minecraft:orange_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:orange_terracotta [black_terracotta]",why:"expected 8x minecraft:orange_terracotta in the chest"}
execute store success score #ok autotest if data block 40010 280 40066 Items[{id:"minecraft:pink_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_candle [white_candle]",why:"expected 8x minecraft:pink_candle in the chest"}
execute store success score #ok autotest if data block 40013 280 40066 Items[{id:"minecraft:pink_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_candle [light_gray_candle]",why:"expected 8x minecraft:pink_candle in the chest"}
execute store success score #ok autotest if data block 40016 280 40066 Items[{id:"minecraft:pink_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_candle [black_candle]",why:"expected 8x minecraft:pink_candle in the chest"}
execute store success score #ok autotest if data block 40019 280 40066 Items[{id:"minecraft:pink_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:pink_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40022 280 40066 Items[{id:"minecraft:pink_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:pink_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40025 280 40066 Items[{id:"minecraft:pink_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:pink_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40028 280 40066 Items[{id:"minecraft:pink_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:pink_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40031 280 40066 Items[{id:"minecraft:pink_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:pink_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40034 280 40066 Items[{id:"minecraft:pink_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:pink_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40037 280 40066 Items[{id:"minecraft:pink_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_stained_glass [white_stained_glass]",why:"expected 8x minecraft:pink_stained_glass in the chest"}
execute store success score #ok autotest if data block 40040 280 40066 Items[{id:"minecraft:pink_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:pink_stained_glass in the chest"}
execute store success score #ok autotest if data block 40043 280 40066 Items[{id:"minecraft:pink_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_stained_glass [black_stained_glass]",why:"expected 8x minecraft:pink_stained_glass in the chest"}
execute store success score #ok autotest if data block 40046 280 40066 Items[{id:"minecraft:pink_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:pink_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40001 280 40068 Items[{id:"minecraft:pink_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:pink_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40004 280 40068 Items[{id:"minecraft:pink_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:pink_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40007 280 40068 Items[{id:"minecraft:pink_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_terracotta [white_terracotta]",why:"expected 8x minecraft:pink_terracotta in the chest"}
execute store success score #ok autotest if data block 40010 280 40068 Items[{id:"minecraft:pink_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:pink_terracotta in the chest"}
execute store success score #ok autotest if data block 40013 280 40068 Items[{id:"minecraft:pink_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:pink_terracotta [black_terracotta]",why:"expected 8x minecraft:pink_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40068 Items[{id:"minecraft:purple_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_candle [white_candle]",why:"expected 8x minecraft:purple_candle in the chest"}
execute store success score #ok autotest if data block 40019 280 40068 Items[{id:"minecraft:purple_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_candle [gray_candle]",why:"expected 8x minecraft:purple_candle in the chest"}
execute store success score #ok autotest if data block 40022 280 40068 Items[{id:"minecraft:purple_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_candle [black_candle]",why:"expected 8x minecraft:purple_candle in the chest"}
execute store success score #ok autotest if data block 40025 280 40068 Items[{id:"minecraft:purple_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:purple_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40028 280 40068 Items[{id:"minecraft:purple_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:purple_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40031 280 40068 Items[{id:"minecraft:purple_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:purple_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40034 280 40068 Items[{id:"minecraft:purple_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:purple_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40037 280 40068 Items[{id:"minecraft:purple_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:purple_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40068 Items[{id:"minecraft:purple_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:purple_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40068 Items[{id:"minecraft:purple_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_stained_glass [white_stained_glass]",why:"expected 8x minecraft:purple_stained_glass in the chest"}
execute store success score #ok autotest if data block 40046 280 40068 Items[{id:"minecraft:purple_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:purple_stained_glass in the chest"}
execute store success score #ok autotest if data block 40001 280 40070 Items[{id:"minecraft:purple_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_stained_glass [black_stained_glass]",why:"expected 8x minecraft:purple_stained_glass in the chest"}
execute store success score #ok autotest if data block 40004 280 40070 Items[{id:"minecraft:purple_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:purple_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40007 280 40070 Items[{id:"minecraft:purple_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:purple_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40010 280 40070 Items[{id:"minecraft:purple_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:purple_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40013 280 40070 Items[{id:"minecraft:purple_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_terracotta [white_terracotta]",why:"expected 8x minecraft:purple_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40070 Items[{id:"minecraft:purple_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_terracotta [gray_terracotta]",why:"expected 8x minecraft:purple_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40070 Items[{id:"minecraft:purple_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:purple_terracotta [black_terracotta]",why:"expected 8x minecraft:purple_terracotta in the chest"}
execute store success score #ok autotest if data block 40022 280 40070 Items[{id:"minecraft:red_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_candle [white_candle]",why:"expected 8x minecraft:red_candle in the chest"}
execute store success score #ok autotest if data block 40025 280 40070 Items[{id:"minecraft:red_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_candle [gray_candle]",why:"expected 8x minecraft:red_candle in the chest"}
execute store success score #ok autotest if data block 40028 280 40070 Items[{id:"minecraft:red_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_candle [black_candle]",why:"expected 8x minecraft:red_candle in the chest"}
execute store success score #ok autotest if data block 40031 280 40070 Items[{id:"minecraft:red_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:red_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40034 280 40070 Items[{id:"minecraft:red_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_concrete_powder [gray_concrete_powder]",why:"expected 8x minecraft:red_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40037 280 40070 Items[{id:"minecraft:red_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:red_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40040 280 40070 Items[{id:"minecraft:red_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:red_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40070 Items[{id:"minecraft:red_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_glazed_terracotta [gray_glazed_terracotta]",why:"expected 8x minecraft:red_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40070 Items[{id:"minecraft:red_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:red_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40001 280 40072 Items[{id:"minecraft:red_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_stained_glass [white_stained_glass]",why:"expected 8x minecraft:red_stained_glass in the chest"}
execute store success score #ok autotest if data block 40004 280 40072 Items[{id:"minecraft:red_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_stained_glass [gray_stained_glass]",why:"expected 8x minecraft:red_stained_glass in the chest"}
execute store success score #ok autotest if data block 40007 280 40072 Items[{id:"minecraft:red_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_stained_glass [black_stained_glass]",why:"expected 8x minecraft:red_stained_glass in the chest"}
execute store success score #ok autotest if data block 40010 280 40072 Items[{id:"minecraft:red_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:red_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40013 280 40072 Items[{id:"minecraft:red_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_stained_glass_pane [gray_stained_glass_pane]",why:"expected 8x minecraft:red_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40016 280 40072 Items[{id:"minecraft:red_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:red_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40019 280 40072 Items[{id:"minecraft:red_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_terracotta [white_terracotta]",why:"expected 8x minecraft:red_terracotta in the chest"}
execute store success score #ok autotest if data block 40022 280 40072 Items[{id:"minecraft:red_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_terracotta [gray_terracotta]",why:"expected 8x minecraft:red_terracotta in the chest"}
execute store success score #ok autotest if data block 40025 280 40072 Items[{id:"minecraft:red_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:red_terracotta [black_terracotta]",why:"expected 8x minecraft:red_terracotta in the chest"}
execute store success score #ok autotest if data block 40028 280 40072 Items[{id:"minecraft:terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:terracotta [white_terracotta]",why:"expected 8x minecraft:terracotta in the chest"}
execute store success score #ok autotest if data block 40031 280 40072 Items[{id:"minecraft:terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:terracotta [light_gray_terracotta]",why:"expected 8x minecraft:terracotta in the chest"}
execute store success score #ok autotest if data block 40034 280 40072 Items[{id:"minecraft:terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:terracotta [black_terracotta]",why:"expected 8x minecraft:terracotta in the chest"}
execute store success score #ok autotest if data block 40037 280 40072 Items[{id:"minecraft:white_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_candle [orange_candle]",why:"expected 8x minecraft:white_candle in the chest"}
execute store success score #ok autotest if data block 40040 280 40072 Items[{id:"minecraft:white_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_candle [light_gray_candle]",why:"expected 8x minecraft:white_candle in the chest"}
execute store success score #ok autotest if data block 40043 280 40072 Items[{id:"minecraft:white_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_candle [black_candle]",why:"expected 8x minecraft:white_candle in the chest"}
execute store success score #ok autotest if data block 40046 280 40072 Items[{id:"minecraft:white_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_concrete_powder [orange_concrete_powder]",why:"expected 8x minecraft:white_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40001 280 40074 Items[{id:"minecraft:white_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:white_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40004 280 40074 Items[{id:"minecraft:white_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:white_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40007 280 40074 Items[{id:"minecraft:white_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_glazed_terracotta [orange_glazed_terracotta]",why:"expected 8x minecraft:white_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40010 280 40074 Items[{id:"minecraft:white_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:white_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40013 280 40074 Items[{id:"minecraft:white_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:white_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40074 Items[{id:"minecraft:white_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_stained_glass [orange_stained_glass]",why:"expected 8x minecraft:white_stained_glass in the chest"}
execute store success score #ok autotest if data block 40019 280 40074 Items[{id:"minecraft:white_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:white_stained_glass in the chest"}
execute store success score #ok autotest if data block 40022 280 40074 Items[{id:"minecraft:white_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_stained_glass [black_stained_glass]",why:"expected 8x minecraft:white_stained_glass in the chest"}
execute store success score #ok autotest if data block 40025 280 40074 Items[{id:"minecraft:white_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_stained_glass_pane [orange_stained_glass_pane]",why:"expected 8x minecraft:white_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40028 280 40074 Items[{id:"minecraft:white_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:white_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40031 280 40074 Items[{id:"minecraft:white_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:white_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40034 280 40074 Items[{id:"minecraft:white_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_terracotta [orange_terracotta]",why:"expected 8x minecraft:white_terracotta in the chest"}
execute store success score #ok autotest if data block 40037 280 40074 Items[{id:"minecraft:white_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:white_terracotta in the chest"}
execute store success score #ok autotest if data block 40040 280 40074 Items[{id:"minecraft:white_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:white_terracotta [black_terracotta]",why:"expected 8x minecraft:white_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40074 Items[{id:"minecraft:yellow_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_candle [white_candle]",why:"expected 8x minecraft:yellow_candle in the chest"}
execute store success score #ok autotest if data block 40046 280 40074 Items[{id:"minecraft:yellow_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_candle [light_gray_candle]",why:"expected 8x minecraft:yellow_candle in the chest"}
execute store success score #ok autotest if data block 40001 280 40076 Items[{id:"minecraft:yellow_candle",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_candle [black_candle]",why:"expected 8x minecraft:yellow_candle in the chest"}
execute store success score #ok autotest if data block 40004 280 40076 Items[{id:"minecraft:yellow_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_concrete_powder [white_concrete_powder]",why:"expected 8x minecraft:yellow_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40007 280 40076 Items[{id:"minecraft:yellow_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_concrete_powder [light_gray_concrete_powder]",why:"expected 8x minecraft:yellow_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40010 280 40076 Items[{id:"minecraft:yellow_concrete_powder",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_concrete_powder [black_concrete_powder]",why:"expected 8x minecraft:yellow_concrete_powder in the chest"}
execute store success score #ok autotest if data block 40013 280 40076 Items[{id:"minecraft:yellow_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_glazed_terracotta [white_glazed_terracotta]",why:"expected 8x minecraft:yellow_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40016 280 40076 Items[{id:"minecraft:yellow_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_glazed_terracotta [light_gray_glazed_terracotta]",why:"expected 8x minecraft:yellow_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40019 280 40076 Items[{id:"minecraft:yellow_glazed_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_glazed_terracotta [black_glazed_terracotta]",why:"expected 8x minecraft:yellow_glazed_terracotta in the chest"}
execute store success score #ok autotest if data block 40022 280 40076 Items[{id:"minecraft:yellow_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_stained_glass [white_stained_glass]",why:"expected 8x minecraft:yellow_stained_glass in the chest"}
execute store success score #ok autotest if data block 40025 280 40076 Items[{id:"minecraft:yellow_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_stained_glass [light_gray_stained_glass]",why:"expected 8x minecraft:yellow_stained_glass in the chest"}
execute store success score #ok autotest if data block 40028 280 40076 Items[{id:"minecraft:yellow_stained_glass",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_stained_glass [black_stained_glass]",why:"expected 8x minecraft:yellow_stained_glass in the chest"}
execute store success score #ok autotest if data block 40031 280 40076 Items[{id:"minecraft:yellow_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_stained_glass_pane [white_stained_glass_pane]",why:"expected 8x minecraft:yellow_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40034 280 40076 Items[{id:"minecraft:yellow_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_stained_glass_pane [light_gray_stained_glass_pane]",why:"expected 8x minecraft:yellow_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40037 280 40076 Items[{id:"minecraft:yellow_stained_glass_pane",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_stained_glass_pane [black_stained_glass_pane]",why:"expected 8x minecraft:yellow_stained_glass_pane in the chest"}
execute store success score #ok autotest if data block 40040 280 40076 Items[{id:"minecraft:yellow_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_terracotta [white_terracotta]",why:"expected 8x minecraft:yellow_terracotta in the chest"}
execute store success score #ok autotest if data block 40043 280 40076 Items[{id:"minecraft:yellow_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_terracotta [light_gray_terracotta]",why:"expected 8x minecraft:yellow_terracotta in the chest"}
execute store success score #ok autotest if data block 40046 280 40076 Items[{id:"minecraft:yellow_terracotta",count:8}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 universal_dyeing:yellow_terracotta [black_terracotta]",why:"expected 8x minecraft:yellow_terracotta in the chest"}
execute store success score #ok autotest if data block 40001 280 40078 Items[{id:"minecraft:string",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-22 wool_to_string:string [white_wool]",why:"expected 4x minecraft:string in the chest"}
execute store success score #ok autotest if data block 40004 280 40078 Items[{id:"minecraft:string",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-22 wool_to_string:string [light_gray_wool]",why:"expected 4x minecraft:string in the chest"}
execute store success score #ok autotest if data block 40007 280 40078 Items[{id:"minecraft:string",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-22 wool_to_string:string [black_wool]",why:"expected 4x minecraft:string in the chest"}
execute store success score #ok autotest if data block 40010 280 40078 Items[{id:"minecraft:iron_trapdoor",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-11 iron trapdoor unchanged (2x2 ingots -> 1)",why:"expected 1x minecraft:iron_trapdoor in the chest"}
execute store success score #ok autotest if data block 40013 280 40078 Items[{id:"minecraft:oak_slab",count:6}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 vanilla 3 planks -> 6 slabs still works",why:"expected 6x minecraft:oak_slab in the chest"}
execute store success score #ok autotest if data block 40016 280 40078 Items[{id:"minecraft:smooth_stone_slab",count:2}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 smooth stone block -> 2 slabs (shapeless)",why:"expected 2x minecraft:smooth_stone_slab in the chest"}
execute store success score #ok autotest unless data block 40019 280 40078 Items[{id:"minecraft:oak_slab"}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-14 plain planks block alone is NOT covered (no slabs)",why:"minecraft:oak_slab must not be crafted"}
execute store success score #ok autotest unless data block 40022 280 40078 Items[0]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-10 purpur pillar must NOT make stairs",why:"nothing should be crafted"}
execute store success score #ok autotest if data block 40025 280 40078 Items[{id:"minecraft:oak_wood",count:4}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-12 oak wood from 4 logs",why:"expected 4x minecraft:oak_wood in the chest"}
execute store success score #ok autotest unless data block 40028 280 40078 Items[0]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-24 dead coral does NOT make a coral block",why:"nothing should be crafted"}
execute store success score #ok autotest unless data block 40031 280 40078 Items[0]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 cobbled deepslate must NOT make a dropper",why:"nothing should be crafted"}
execute store success score #ok autotest unless data block 40034 280 40078 Items[0]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-17 cobbled deepslate must NOT make an observer",why:"nothing should be crafted"}
execute store success score #ok autotest unless data block 40037 280 40078 Items[{id:"minecraft:red_wool"}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-20 wool is NOT covered by universal dyeing",why:"minecraft:red_wool must not be crafted"}
execute store success score #ok autotest if data block 40040 280 40078 Items[{id:"minecraft:smooth_stone",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-15 smooth stone slab pair -> 1 block",why:"expected 1x minecraft:smooth_stone in the chest"}
execute store success score #ok autotest if data block 40042 280 40078 Items[{Slot:2b,id:"minecraft:black_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/black_concrete_powder",why:"expected 1x minecraft:black_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40042 280 40078 RecipesUsed."pannotia:powder-from-concrete-blasting/black_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/black_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/black_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40045 280 40078 Items[{Slot:2b,id:"minecraft:blue_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/blue_concrete_powder",why:"expected 1x minecraft:blue_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40045 280 40078 RecipesUsed."pannotia:powder-from-concrete-blasting/blue_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/blue_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/blue_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40000 280 40080 Items[{Slot:2b,id:"minecraft:brown_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/brown_concrete_powder",why:"expected 1x minecraft:brown_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40000 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/brown_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/brown_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/brown_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40003 280 40080 Items[{Slot:2b,id:"minecraft:cyan_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/cyan_concrete_powder",why:"expected 1x minecraft:cyan_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40003 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/cyan_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/cyan_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/cyan_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40006 280 40080 Items[{Slot:2b,id:"minecraft:gray_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/gray_concrete_powder",why:"expected 1x minecraft:gray_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40006 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/gray_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/gray_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/gray_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40009 280 40080 Items[{Slot:2b,id:"minecraft:green_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/green_concrete_powder",why:"expected 1x minecraft:green_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40009 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/green_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/green_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/green_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40012 280 40080 Items[{Slot:2b,id:"minecraft:light_blue_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/light_blue_concrete_powder",why:"expected 1x minecraft:light_blue_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40012 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/light_blue_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/light_blue_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/light_blue_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40015 280 40080 Items[{Slot:2b,id:"minecraft:light_gray_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/light_gray_concrete_powder",why:"expected 1x minecraft:light_gray_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40015 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/light_gray_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/light_gray_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/light_gray_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40018 280 40080 Items[{Slot:2b,id:"minecraft:lime_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/lime_concrete_powder",why:"expected 1x minecraft:lime_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40018 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/lime_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/lime_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/lime_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40021 280 40080 Items[{Slot:2b,id:"minecraft:magenta_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/magenta_concrete_powder",why:"expected 1x minecraft:magenta_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40021 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/magenta_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/magenta_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/magenta_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40024 280 40080 Items[{Slot:2b,id:"minecraft:orange_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/orange_concrete_powder",why:"expected 1x minecraft:orange_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40024 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/orange_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/orange_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/orange_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40027 280 40080 Items[{Slot:2b,id:"minecraft:pink_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/pink_concrete_powder",why:"expected 1x minecraft:pink_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40027 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/pink_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/pink_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/pink_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40030 280 40080 Items[{Slot:2b,id:"minecraft:purple_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/purple_concrete_powder",why:"expected 1x minecraft:purple_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40030 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/purple_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/purple_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/purple_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40033 280 40080 Items[{Slot:2b,id:"minecraft:red_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/red_concrete_powder",why:"expected 1x minecraft:red_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40033 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/red_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/red_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/red_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40036 280 40080 Items[{Slot:2b,id:"minecraft:white_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/white_concrete_powder",why:"expected 1x minecraft:white_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40036 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/white_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/white_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/white_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40039 280 40080 Items[{Slot:2b,id:"minecraft:yellow_concrete_powder",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/yellow_concrete_powder",why:"expected 1x minecraft:yellow_concrete_powder in the output slot"}
execute store success score #ok autotest if data block 40039 280 40080 RecipesUsed."pannotia:powder-from-concrete-blasting/yellow_concrete_powder"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-4 pannotia:powder-from-concrete-blasting/yellow_concrete_powder recipe",why:"pannotia:powder-from-concrete-blasting/yellow_concrete_powder should be the recipe used"}
execute store success score #ok autotest if data block 40042 280 40080 Items[{Slot:2b,id:"minecraft:black_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:black_stained_glass",why:"expected 1x minecraft:black_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40042 280 40080 RecipesUsed."powder_to_glass:black_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:black_stained_glass recipe",why:"powder_to_glass:black_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40045 280 40080 Items[{Slot:2b,id:"minecraft:blue_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:blue_stained_glass",why:"expected 1x minecraft:blue_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40045 280 40080 RecipesUsed."powder_to_glass:blue_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:blue_stained_glass recipe",why:"powder_to_glass:blue_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40000 280 40082 Items[{Slot:2b,id:"minecraft:brown_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:brown_stained_glass",why:"expected 1x minecraft:brown_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40000 280 40082 RecipesUsed."powder_to_glass:brown_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:brown_stained_glass recipe",why:"powder_to_glass:brown_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40003 280 40082 Items[{Slot:2b,id:"minecraft:cyan_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:cyan_stained_glass",why:"expected 1x minecraft:cyan_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40003 280 40082 RecipesUsed."powder_to_glass:cyan_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:cyan_stained_glass recipe",why:"powder_to_glass:cyan_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40006 280 40082 Items[{Slot:2b,id:"minecraft:gray_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:gray_stained_glass",why:"expected 1x minecraft:gray_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40006 280 40082 RecipesUsed."powder_to_glass:gray_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:gray_stained_glass recipe",why:"powder_to_glass:gray_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40009 280 40082 Items[{Slot:2b,id:"minecraft:green_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:green_stained_glass",why:"expected 1x minecraft:green_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40009 280 40082 RecipesUsed."powder_to_glass:green_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:green_stained_glass recipe",why:"powder_to_glass:green_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40012 280 40082 Items[{Slot:2b,id:"minecraft:light_blue_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:light_blue_stained_glass",why:"expected 1x minecraft:light_blue_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40012 280 40082 RecipesUsed."powder_to_glass:light_blue_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:light_blue_stained_glass recipe",why:"powder_to_glass:light_blue_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40015 280 40082 Items[{Slot:2b,id:"minecraft:light_gray_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:light_gray_stained_glass",why:"expected 1x minecraft:light_gray_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40015 280 40082 RecipesUsed."powder_to_glass:light_gray_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:light_gray_stained_glass recipe",why:"powder_to_glass:light_gray_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40018 280 40082 Items[{Slot:2b,id:"minecraft:lime_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:lime_stained_glass",why:"expected 1x minecraft:lime_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40018 280 40082 RecipesUsed."powder_to_glass:lime_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:lime_stained_glass recipe",why:"powder_to_glass:lime_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40021 280 40082 Items[{Slot:2b,id:"minecraft:magenta_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:magenta_stained_glass",why:"expected 1x minecraft:magenta_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40021 280 40082 RecipesUsed."powder_to_glass:magenta_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:magenta_stained_glass recipe",why:"powder_to_glass:magenta_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40024 280 40082 Items[{Slot:2b,id:"minecraft:orange_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:orange_stained_glass",why:"expected 1x minecraft:orange_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40024 280 40082 RecipesUsed."powder_to_glass:orange_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:orange_stained_glass recipe",why:"powder_to_glass:orange_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40027 280 40082 Items[{Slot:2b,id:"minecraft:pink_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:pink_stained_glass",why:"expected 1x minecraft:pink_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40027 280 40082 RecipesUsed."powder_to_glass:pink_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:pink_stained_glass recipe",why:"powder_to_glass:pink_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40030 280 40082 Items[{Slot:2b,id:"minecraft:purple_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:purple_stained_glass",why:"expected 1x minecraft:purple_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40030 280 40082 RecipesUsed."powder_to_glass:purple_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:purple_stained_glass recipe",why:"powder_to_glass:purple_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40033 280 40082 Items[{Slot:2b,id:"minecraft:red_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:red_stained_glass",why:"expected 1x minecraft:red_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40033 280 40082 RecipesUsed."powder_to_glass:red_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:red_stained_glass recipe",why:"powder_to_glass:red_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40036 280 40082 Items[{Slot:2b,id:"minecraft:white_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:white_stained_glass",why:"expected 1x minecraft:white_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40036 280 40082 RecipesUsed."powder_to_glass:white_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:white_stained_glass recipe",why:"powder_to_glass:white_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40039 280 40082 Items[{Slot:2b,id:"minecraft:yellow_stained_glass",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:yellow_stained_glass",why:"expected 1x minecraft:yellow_stained_glass in the output slot"}
execute store success score #ok autotest if data block 40039 280 40082 RecipesUsed."powder_to_glass:yellow_stained_glass"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 powder_to_glass:yellow_stained_glass recipe",why:"powder_to_glass:yellow_stained_glass should be the recipe used"}
execute store success score #ok autotest if data block 40042 280 40082 Items[{Slot:2b,id:"minecraft:leather",count:1}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 rotten_flesh_to_leather:leather",why:"expected 1x minecraft:leather in the output slot"}
execute store success score #ok autotest if data block 40042 280 40082 RecipesUsed."rotten_flesh_to_leather:leather"
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 rotten_flesh_to_leather:leather recipe",why:"rotten_flesh_to_leather:leather should be the recipe used"}
execute store success score #ok autotest unless data block 40045 280 40082 Items[{Slot:2b}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 concrete powder is NOT blasted to glass",why:"nothing should be cooked"}
execute store success score #ok autotest unless data block 40000 280 40084 Items[{Slot:2b}]
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"REC-25 rotten flesh is NOT smoked to leather",why:"nothing should be cooked"}
