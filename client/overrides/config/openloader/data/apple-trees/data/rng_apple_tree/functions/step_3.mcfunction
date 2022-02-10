scoreboard players operation @s BINTree /= 2 NUMTree
execute if score @s RNGTree >= @s BINTree run tag @e[tag=RNGTree,distance=..1,sort=random,limit=1] add NUMTree

execute if entity @e[tag=RNGTree,tag=FULL,tag=NUMTree,distance=..1] run scoreboard players operation @s NUMTree += @s BINTree
execute if entity @e[tag=RNGTree,tag=FULL,tag=NUMTree,distance=..1] run scoreboard players operation @s RNGTree -= @s BINTree

tag @e[tag=RNGTree,distance=..1] remove NUMTree

execute if score @s BINTree > 1 NUMTree run function rng_apple_tree:step_3
execute if score @s BINTree = 1 NUMTree run scoreboard players set @s RNGTree 0

