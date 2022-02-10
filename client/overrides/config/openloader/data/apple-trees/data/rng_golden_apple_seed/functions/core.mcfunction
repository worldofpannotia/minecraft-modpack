execute as @e[scores={RNGGoldenAppleSeed=1..}] run scoreboard players set @s NUMGoldenAppleSeed 0
execute as @e[scores={RNGGoldenAppleSeed=1..}] run scoreboard players set @s BINGoldenAppleSeed 1
execute as @e[scores={RNGGoldenAppleSeed=1..}] at @s run function rng_golden_apple_seed:step_1

scoreboard players set 2 NUMGoldenAppleSeed 2
scoreboard players set 1 NUMGoldenAppleSeed 1

#RNGGoldenAppleSeed = inpuy
#NUMGoldenAppleSeed = output