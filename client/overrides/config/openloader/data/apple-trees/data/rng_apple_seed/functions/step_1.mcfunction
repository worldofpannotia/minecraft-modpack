scoreboard players operation @s BINAppleSeed *= 2 NUMAppleSeed
execute if score @s BINAppleSeed > @s RNGAppleSeed run function rng_apple_seed:step_2
execute unless score @s BINAppleSeed > @s RNGAppleSeed run function rng_apple_seed:step_1
