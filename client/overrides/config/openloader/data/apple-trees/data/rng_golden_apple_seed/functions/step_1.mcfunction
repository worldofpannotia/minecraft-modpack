scoreboard players operation @s BINGoldenAppleSeed *= 2 NUMGoldenAppleSeed
execute if score @s BINGoldenAppleSeed > @s RNGGoldenAppleSeed run function rng_golden_apple_seed:step_2
execute unless score @s BINGoldenAppleSeed > @s RNGGoldenAppleSeed run function rng_golden_apple_seed:step_1
