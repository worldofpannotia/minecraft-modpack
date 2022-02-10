scoreboard players operation @s BINTree *= 2 NUMTree
execute if score @s BINTree > @s RNGTree run function rng_apple_tree:step_2
execute unless score @s BINTree > @s RNGTree run function rng_apple_tree:step_1
