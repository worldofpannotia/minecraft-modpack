execute as @e[scores={RNGAppleSeed=1..}] run scoreboard players set @s NUMAppleSeed 0
execute as @e[scores={RNGAppleSeed=1..}] run scoreboard players set @s BINAppleSeed 1
execute as @e[scores={RNGAppleSeed=1..}] at @s run function rng_apple_seed:step_1

scoreboard players set 2 NUMAppleSeed 2
scoreboard players set 1 NUMAppleSeed 1

#RNGAppleSeed = inpuy
#NUMAppleSeed = output