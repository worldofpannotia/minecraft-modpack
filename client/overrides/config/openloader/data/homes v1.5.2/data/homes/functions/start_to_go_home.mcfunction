scoreboard players operation @s homes.target = #home homes.dummy
scoreboard players operation @s homes.delay = #delay homes.config
execute store result score @s homes.x run data get entity @s Pos[0] 10
execute store result score @s homes.y run data get entity @s Pos[1] 10
execute store result score @s homes.z run data get entity @s Pos[2] 10
execute if data storage homes:storage players[-1].homes[-1].name run tag @s add homes.nameSet
execute if entity @s[tag=homes.nameSet] run tellraw @s [{"text":"Teleporting to ","color":"gold"},{"storage":"homes:storage","nbt":"players[-1].homes[-1].name","interpret":true,"color":"yellow"},{"text":"...","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] if score #home homes.dummy matches 1 run tellraw @s [{"text":"Teleporting to ","color":"gold"},{"text":"Home","color":"yellow"},{"text":"...","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] unless score #home homes.dummy matches 1 run tellraw @s [{"text":"Teleporting to ","color":"gold"},{"text":"Home ","color":"yellow"},{"score":{"name":"#home","objective":"homes.dummy"},"color":"yellow"},{"text":"...","color":"gold"}]
tag @s remove homes.nameSet