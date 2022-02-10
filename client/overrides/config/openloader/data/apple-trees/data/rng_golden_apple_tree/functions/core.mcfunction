execute as @e[scores={RNGGATree=1..}] run scoreboard players set @s NUMGATree 0
execute as @e[scores={RNGGATree=1..}] run scoreboard players set @s BINGATree 1
execute as @e[scores={RNGGATree=1..}] at @s run function rng_golden_apple_tree:step_1

scoreboard players set 2 NUMGATree 2
scoreboard players set 1 NUMGATree 1

#RNGGATree = inpuy
#NUMGATree = output