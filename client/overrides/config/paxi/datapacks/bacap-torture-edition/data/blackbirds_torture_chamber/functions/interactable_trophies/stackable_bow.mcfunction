execute as @a[predicate=blackbirds_torture_chamber:stackable_bow_check] run tag @s add stackable_bow
execute as @a[predicate=blackbirds_torture_chamber:stackable_bow_check_offhand] run tag @s add stackable_bow

execute as @a[predicate=!blackbirds_torture_chamber:stackable_bow_check,predicate=!blackbirds_torture_chamber:stackable_bow_check_offhand] run tag @s remove stackable_bow

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

execute as @a[tag=stackable_bow] at @s positioned ~ ~1 ~ run summon arrow ^ ^ ^1 {Tags:["stackablebowarrow","firstarrow"]}
execute as @e[tag=firstarrow] store result score @s x run data get entity @s Pos[0] 50
execute as @e[tag=firstarrow] store result score @s y run data get entity @s Pos[1] 50
execute as @e[tag=firstarrow] store result score @s z run data get entity @s Pos[2] 50
execute as @a[tag=stackable_bow] store result score @s x run data get entity @s Pos[0] 50
execute as @a[tag=stackable_bow] store result score @s y run data get entity @s Pos[1] 50
execute as @a[tag=stackable_bow] store result score @s z run data get entity @s Pos[2] 50
scoreboard players operation @e[tag=firstarrow] x -= @a[tag=stackable_bow] x
scoreboard players operation @e[tag=firstarrow] y -= @a[tag=stackable_bow] y
scoreboard players operation @e[tag=firstarrow] z -= @a[tag=stackable_bow] z
execute as @e[tag=firstarrow] store result entity @s Motion[0] double 0.02 run scoreboard players get @s x
execute as @e[tag=firstarrow] store result entity @s Motion[1] double 0.01 run scoreboard players get @s y
execute as @e[tag=firstarrow] store result entity @s Motion[2] double 0.02 run scoreboard players get @s z

tag @e remove firstarrow

execute at @a[tag=stackable_bow] run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.8

kill @e[type=arrow,nbt={inGround:1b},tag=stackablebowarrow]