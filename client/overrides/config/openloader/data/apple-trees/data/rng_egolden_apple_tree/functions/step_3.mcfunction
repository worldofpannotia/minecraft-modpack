scoreboard players operation @s BINEGATree /= 2 NUMEGATree
execute if score @s RNGEGATree >= @s BINEGATree run tag @e[tag=RNGEGATree,distance=..1,sort=random,limit=1] add NUMEGATree

execute if entity @e[tag=RNGEGATree,tag=FULL,tag=NUMEGATree,distance=..1] run scoreboard players operation @s NUMEGATree += @s BINEGATree
execute if entity @e[tag=RNGEGATree,tag=FULL,tag=NUMEGATree,distance=..1] run scoreboard players operation @s RNGEGATree -= @s BINEGATree

tag @e[tag=RNGEGATree,distance=..1] remove NUMEGATree

execute if score @s BINEGATree > 1 NUMEGATree run function rng_egolden_apple_tree:step_3
execute if score @s BINEGATree = 1 NUMEGATree run scoreboard players set @s RNGEGATree 0

