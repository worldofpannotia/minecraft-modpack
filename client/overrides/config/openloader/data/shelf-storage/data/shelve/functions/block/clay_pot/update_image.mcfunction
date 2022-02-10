#update front image (Default)
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7

#update front image (Colours)
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:red_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 100
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:orange_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 101
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:yellow_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 102
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:lime_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 103
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:green_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 104
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:cyan_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 105
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:light_blue_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 106
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:blue_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 107
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:purple_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 108
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:magenta_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 109
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:pink_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 110
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:brown_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 111
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:black_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 112
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:gray_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 113
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:light_gray_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 114
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:white_concrete_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 115

#update front image (Materials)
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:red_sand"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 201
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:sand"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 202
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:redstone"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 203
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:gunpowder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 204
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:glowstone_dust"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 205
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:sugar"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 206
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:honeycomb"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 207
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:blaze_powder"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 208
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:clay_ball"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 209
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:gravel"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 210

#Dirt
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:dirt"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 211
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:coarse_dirt"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 211
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:rooted_dirt"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 212
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3,limit=10] at @s if block ~ ~ ~ minecraft:hopper{Items:[{id:"minecraft:powder_snow_bucket"}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 213