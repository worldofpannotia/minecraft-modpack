#keep locked state
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s run data modify block ~ ~ ~ TransferCooldown set value 999999999 

#update front image
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s if block ~ ~ ~ minecraft:hopper{Items:[]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 11
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 11
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 11
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 11
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 11
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=eldritch_shelf,distance=..3] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b}]} run data modify entity @s ArmorItems[3].tag.CustomModelData set value 12
