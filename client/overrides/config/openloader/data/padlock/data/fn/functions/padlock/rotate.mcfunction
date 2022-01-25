tp @s ~ ~ ~ facing entity @a[scores={Spawns=1..},sort=nearest,limit=1]
tag @s remove new
execute store result score @s Rotation run data get entity @s Rotation[0]

execute if score @s Rotation matches -135..-46 run tp @s ~ ~ ~ -90 0
execute if score @s Rotation matches -45..44 run tp @s ~ ~ ~ 0 0
execute if score @s Rotation matches 45..134 run tp @s ~ ~ ~ 90 0
execute if score @s Rotation matches 135..179 run tp @s ~ ~ ~ -180 0
execute if score @s Rotation matches -180..-136 run tp @s ~ ~ ~ -180 0
