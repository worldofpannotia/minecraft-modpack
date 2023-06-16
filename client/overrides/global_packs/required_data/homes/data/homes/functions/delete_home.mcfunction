execute if data storage homes:storage players[-1].homes[-1].name run tag @s add homes.nameSet
execute if entity @s[tag=homes.nameSet] run tellraw @s [{"storage":"homes:storage","nbt":"players[-1].homes[-1].name","interpret":true,"color":"yellow"},{"text":" deleted.","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] if score #home homes.dummy matches 1 run tellraw @s [{"text":"Home","color":"yellow"},{"text":" deleted.","color":"gold"}]
execute unless entity @s[tag=homes.nameSet] unless score #home homes.dummy matches 1 run tellraw @s [{"text":"Home ","color":"yellow"},{"score":{"name":"#home","objective":"homes.dummy"},"color":"yellow"},{"text":" deleted.","color":"gold"}]
tag @s remove homes.nameSet
data remove storage homes:storage players[-1].homes[-1]