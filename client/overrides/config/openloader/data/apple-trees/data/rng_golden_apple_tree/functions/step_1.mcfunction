scoreboard players operation @s BINGATree *= 2 NUMGATree
execute if score @s BINGATree > @s RNGGATree run function rng_golden_apple_tree:step_2
execute unless score @s BINGATree > @s RNGGATree run function rng_golden_apple_tree:step_1
