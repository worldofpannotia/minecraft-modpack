execute as @e[scores={RNGTree=1..}] run scoreboard players set @s NUMTree 0
execute as @e[scores={RNGTree=1..}] run scoreboard players set @s BINTree 1
execute as @e[scores={RNGTree=1..}] at @s run function rng_apple_tree:step_1

scoreboard players set 2 NUMTree 2
scoreboard players set 1 NUMTree 1

#RNGTree = inpuy
#NUMTree = output