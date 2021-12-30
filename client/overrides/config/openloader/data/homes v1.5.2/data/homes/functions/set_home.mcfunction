execute store result storage homes:storage players[-1].homes[-1].id int 1 run scoreboard players get #home homes.dummy
data modify storage homes:storage players[-1].homes[-1].dim set from entity @s Dimension
data modify storage homes:storage players[-1].homes[-1].pos set from entity @s Pos
data modify storage homes:storage players[-1].homes[-1].rot set from entity @s Rotation
execute if data storage homes:storage players[-1].homes[-1].name run tag @s add homes.nameSet
execute if entity @s[tag=homes.nameSet] run tellraw @s [{"storage":"homes:storage","nbt":"players[-1].homes[-1].name","interpret":true,"color":"yellow"},{"text":" set.","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] if score #home homes.dummy matches 1 run tellraw @s [{"text":"Home","color":"yellow"},{"text":" set.","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] unless score #home homes.dummy matches 1 run tellraw @s [{"text":"Home ","color":"yellow"},{"score":{"name":"#home","objective":"homes.dummy"},"color":"yellow"},{"text":" set.","color":"gold"}]
tag @s remove homes.nameSet