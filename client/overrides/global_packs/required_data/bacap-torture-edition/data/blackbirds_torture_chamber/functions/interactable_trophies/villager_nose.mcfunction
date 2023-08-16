execute as @a[predicate=blackbirds_torture_chamber:villager_nose_check] run tag @s add villager_nose
execute as @a[predicate=blackbirds_torture_chamber:villager_nose_check_offhand] run tag @s add villager_nose

scoreboard objectives add spawn_aec dummy
scoreboard players set step spawn_aec 0
execute as @a[tag=villager_nose] at @s run function blackbirds_torture_chamber:interactable_trophies/spawn_aec

execute at @a[tag=villager_nose] as @e[type=minecraft:villager,distance=..10] at @s run tp @s ~ ~ ~ facing entity @e[tag=villagernoseaec,limit=1,sort=nearest]
execute at @a[tag=villager_nose] as @e[type=minecraft:villager,distance=..10] at @s run tp @s ~ ~ ~ ~ 0
execute at @a[tag=villager_nose] as @e[type=minecraft:villager,distance=..10] at @s if block ^ ^ ^1 air if block ^ ^1 ^1 air run tp @s ^ ^ ^.3
execute at @a[tag=villager_nose] as @e[type=minecraft:villager,distance=..10] at @s if block ^ ^-1 ^ air run tp @s ~ ~-1 ~
execute at @a[tag=villager_nose] as @e[type=minecraft:villager,distance=..10] at @s unless block ^ ^-1 ^ air unless block ^ ^ ^1 air if block ^ ^1 ^1 air if block ^ ^2 ^1 air run tp @s ~ ~1 ~



kill @e[type=area_effect_cloud,tag=villagernoseaec]

execute as @a[predicate=!blackbirds_torture_chamber:villager_nose_check,predicate=!blackbirds_torture_chamber:villager_nose_check_offhand] run tag @s remove villager_nose