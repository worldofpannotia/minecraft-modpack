scoreboard players operation @s BINAppleSeed /= 2 NUMAppleSeed
execute if score @s RNGAppleSeed >= @s BINAppleSeed run tag @e[tag=RNGAppleSeed,distance=..1,sort=random,limit=1] add NUMAppleSeed

execute if entity @e[tag=RNGAppleSeed,tag=FULL,tag=NUMAppleSeed,distance=..1] run scoreboard players operation @s NUMAppleSeed += @s BINAppleSeed
execute if entity @e[tag=RNGAppleSeed,tag=FULL,tag=NUMAppleSeed,distance=..1] run scoreboard players operation @s RNGAppleSeed -= @s BINAppleSeed

tag @e[tag=RNGAppleSeed,distance=..1] remove NUMAppleSeed

execute if score @s BINAppleSeed > 1 NUMAppleSeed run function rng_apple_seed:step_3
execute if score @s BINAppleSeed = 1 NUMAppleSeed run scoreboard players set @s RNGAppleSeed 0

