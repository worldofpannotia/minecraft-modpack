execute as @e[scores={RNGEGoldenAppleSeed=1..}] run scoreboard players set @s NUMEGoldenAppleSeed 0
execute as @e[scores={RNGEGoldenAppleSeed=1..}] run scoreboard players set @s BINEGoldenAppleSeed 1
execute as @e[scores={RNGEGoldenAppleSeed=1..}] at @s run function rng_egolden_apple_seed:step_1

scoreboard players set 2 NUMEGoldenAppleSeed 2
scoreboard players set 1 NUMEGoldenAppleSeed 1

#RNGEGoldenAppleSeed = inpuy
#NUMEGoldenAppleSeed = output