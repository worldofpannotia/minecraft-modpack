#Set Apple Growth Timer to 0#
scoreboard players set Timer AppleGrowth 0

#Increase score AppleStages for Armor-Stand with tag APT#
scoreboard players add @e[tag=APT] AppleStages 1


##If block at position is flowering azalea leaves; activate apple growth for all apple types##
execute as @e[type=minecraft:armor_stand,tag=apple_leaves] at @s if block ~ ~ ~ minecraft:flowering_azalea_leaves run function apt:apples/apple/grow_apple/apple_growth

execute as @e[type=minecraft:armor_stand,tag=golden_apple_leaves] at @s if block ~ ~ ~ minecraft:flowering_azalea_leaves run function apt:apples/golden_apple/grow_golden_apple/golden_apple_growth

execute as @e[type=minecraft:armor_stand,tag=egolden_apple_leaves] at @s if block ~ ~ ~ minecraft:flowering_azalea_leaves run function apt:apples/egolden_apple/grow_egolden_apple/egolden_apple_growth