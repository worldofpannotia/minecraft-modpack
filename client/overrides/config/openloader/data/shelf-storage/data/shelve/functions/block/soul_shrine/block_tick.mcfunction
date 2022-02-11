#keep locked state
execute as @e[type=minecraft:armor_stand,tag=soul_shrine] at @s run data modify block ~ ~ ~ TransferCooldown set value 999999999

execute at @a as @e[type=minecraft:armor_stand,tag=soul_shrine,distance=..6] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b}]} if predicate shelve:random_chance run particle minecraft:soul ~ ~1.3 ~ 0.2 0 0.2 0 1
execute at @a as @e[type=minecraft:armor_stand,tag=soul_shrine,distance=..6] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b}]} if predicate shelve:random_chance run particle minecraft:soul ~ ~1.3 ~ 0.2 0 0.2 0 1
execute at @a as @e[type=minecraft:armor_stand,tag=soul_shrine,distance=..6] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:2b}]} if predicate shelve:random_chance run particle minecraft:soul ~ ~1.3 ~ 0.2 0 0.2 0 1
execute at @a as @e[type=minecraft:armor_stand,tag=soul_shrine,distance=..6] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:3b}]} if predicate shelve:random_chance run particle minecraft:soul ~ ~1.3 ~ 0.2 0 0.2 0 1
execute at @a as @e[type=minecraft:armor_stand,tag=soul_shrine,distance=..6] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b}]} if predicate shelve:random_chance run particle minecraft:soul ~ ~1.3 ~ 0.2 0 0.2 0 1