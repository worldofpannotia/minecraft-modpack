scoreboard players operation @s BINGATree /= 2 NUMGATree
execute if score @s RNGGATree >= @s BINGATree run tag @e[tag=RNGGATree,distance=..1,sort=random,limit=1] add NUMGATree

execute if entity @e[tag=RNGGATree,tag=FULL,tag=NUMGATree,distance=..1] run scoreboard players operation @s NUMGATree += @s BINGATree
execute if entity @e[tag=RNGGATree,tag=FULL,tag=NUMGATree,distance=..1] run scoreboard players operation @s RNGGATree -= @s BINGATree

tag @e[tag=RNGGATree,distance=..1] remove NUMGATree

execute if score @s BINGATree > 1 NUMGATree run function rng_golden_apple_tree:step_3
execute if score @s BINGATree = 1 NUMGATree run scoreboard players set @s RNGGATree 0

