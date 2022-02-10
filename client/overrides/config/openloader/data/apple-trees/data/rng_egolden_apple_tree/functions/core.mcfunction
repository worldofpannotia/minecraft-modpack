execute as @e[scores={RNGEGATree=1..}] run scoreboard players set @s NUMEGATree 0
execute as @e[scores={RNGEGATree=1..}] run scoreboard players set @s BINEGATree 1
execute as @e[scores={RNGEGATree=1..}] at @s run function rng_egolden_apple_tree:step_1

scoreboard players set 2 NUMEGATree 2
scoreboard players set 1 NUMEGATree 1

#RNGEGATree = inpuy
#NUMEGATree = output