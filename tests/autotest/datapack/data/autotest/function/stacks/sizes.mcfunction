schedule function autotest:lib/next 1t
setblock 40004 280 39988 minecraft:chest
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:acacia_boat 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:acacia_boat stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:acacia_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:acacia_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:armor_stand 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:armor_stand stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:axolotl_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:axolotl_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:axolotl_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:axolotl_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:beetroot_soup 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:beetroot_soup stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:beetroot_soup 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:beetroot_soup does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:birch_boat 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:birch_boat stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:birch_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:birch_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:black_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:black_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:black_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:black_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:black_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:black_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:black_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:black_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:blue_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:blue_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:blue_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:blue_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:blue_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:blue_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:blue_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:blue_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:brown_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:brown_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:brown_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:brown_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:brown_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:brown_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:brown_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:brown_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:bucket 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:bucket stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:cake 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:cake stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:chest_minecart 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:chest_minecart stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:cod_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:cod_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:cod_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:cod_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:command_block_minecart 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:command_block_minecart stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:crimson_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:crimson_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:cyan_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:cyan_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:cyan_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:cyan_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:cyan_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:cyan_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:cyan_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:cyan_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:dark_oak_boat 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:dark_oak_boat stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:dark_oak_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:dark_oak_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:egg 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:egg stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:enchanted_book 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:enchanted_book stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:ender_pearl 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:ender_pearl stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:furnace_minecart 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:furnace_minecart stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:gray_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:gray_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:gray_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:gray_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:gray_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:gray_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:gray_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:gray_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:green_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:green_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:green_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:green_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:green_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:green_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:green_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:green_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:honey_bottle 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:honey_bottle stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:hopper_minecart 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:hopper_minecart stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:jungle_boat 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:jungle_boat stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:jungle_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:jungle_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lava_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:lava_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lava_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:lava_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_blue_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:light_blue_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_blue_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:light_blue_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_blue_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:light_blue_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_blue_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:light_blue_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_gray_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:light_gray_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_gray_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:light_gray_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_gray_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:light_gray_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:light_gray_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:light_gray_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lime_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:lime_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lime_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:lime_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lime_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:lime_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lime_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:lime_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lingering_potion 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:lingering_potion stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:lingering_potion 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:lingering_potion does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:magenta_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:magenta_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:magenta_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:magenta_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:magenta_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:magenta_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:magenta_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:magenta_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:milk_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:milk_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:milk_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:milk_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:minecart 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:minecart stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:mushroom_stew 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:mushroom_stew stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:mushroom_stew 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:mushroom_stew does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_11 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_11 stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_13 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_13 stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_blocks 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_blocks stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_cat 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_cat stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_chirp 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_chirp stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_far 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_far stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_mall 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_mall stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_mellohi 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_mellohi stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_otherside 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_otherside stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_pigstep 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_pigstep stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_stal 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_stal stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_strad 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_strad stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_wait 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_wait stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:music_disc_ward 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:music_disc_ward stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:oak_boat 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:oak_boat stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:oak_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:oak_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:orange_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:orange_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:orange_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:orange_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:orange_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:orange_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:orange_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:orange_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:pink_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:pink_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:pink_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:pink_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:pink_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:pink_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:pink_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:pink_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:potion 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:potion stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:potion 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:potion does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:powder_snow_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:powder_snow_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:powder_snow_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:powder_snow_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:pufferfish_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:pufferfish_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:pufferfish_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:pufferfish_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:purple_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:purple_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:purple_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:purple_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:purple_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:purple_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:purple_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:purple_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:rabbit_stew 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:rabbit_stew stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:rabbit_stew 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:rabbit_stew does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:red_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:red_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:red_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:red_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:red_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:red_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:red_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:red_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:saddle 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:saddle stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:salmon_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:salmon_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:salmon_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:salmon_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:snowball 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:snowball stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:splash_potion 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:splash_potion stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:splash_potion 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:splash_potion does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:spruce_boat 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:spruce_boat stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:spruce_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:spruce_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:suspicious_stew 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:suspicious_stew stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:suspicious_stew 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:suspicious_stew does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:tnt_minecart 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:tnt_minecart stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:totem_of_undying 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:totem_of_undying stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:totem_of_undying 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:totem_of_undying does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:tropical_fish_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:tropical_fish_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:tropical_fish_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:tropical_fish_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:warped_sign 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:warped_sign stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:water_bucket 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:water_bucket stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:water_bucket 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:water_bucket does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:white_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:white_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:white_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:white_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:white_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:white_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:white_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:white_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:writable_book 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:writable_book stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:written_book 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:written_book stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:yellow_banner 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:yellow_banner stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:yellow_bed 64
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:yellow_bed stacks to 64",why:"could not put a stack of 64"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:yellow_shulker_box 16
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"INV-1 minecraft:yellow_shulker_box stacks to 16",why:"could not put a stack of 16"}
execute store success score #ok autotest run item replace block 40004 280 39988 container.0 with minecraft:yellow_shulker_box 17
execute if score #ok autotest matches 0 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 1 run function autotest:lib/fail {id:"INV-1 minecraft:yellow_shulker_box does not stack past 16",why:"a stack of 17 was accepted"}
data modify block 40004 280 39988 Items set value []
