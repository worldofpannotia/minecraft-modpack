scoreboard players operation @s BINEGATree *= 2 NUMEGATree
execute if score @s BINEGATree > @s RNGEGATree run function rng_egolden_apple_tree:step_2
execute unless score @s BINEGATree > @s RNGEGATree run function rng_egolden_apple_tree:step_1
