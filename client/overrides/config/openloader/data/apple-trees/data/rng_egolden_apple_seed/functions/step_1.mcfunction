scoreboard players operation @s BINEGoldenAppleSeed *= 2 NUMEGoldenAppleSeed
execute if score @s BINEGoldenAppleSeed > @s RNGEGoldenAppleSeed run function rng_egolden_apple_seed:step_2
execute unless score @s BINEGoldenAppleSeed > @s RNGEGoldenAppleSeed run function rng_egolden_apple_seed:step_1
