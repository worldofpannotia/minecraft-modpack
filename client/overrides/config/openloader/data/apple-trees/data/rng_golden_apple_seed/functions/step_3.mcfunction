scoreboard players operation @s BINGoldenAppleSeed /= 2 NUMGoldenAppleSeed
execute if score @s RNGGoldenAppleSeed >= @s BINGoldenAppleSeed run tag @e[tag=RNGGoldenAppleSeed,distance=..1,sort=random,limit=1] add NUMGoldenAppleSeed

execute if entity @e[tag=RNGGoldenAppleSeed,tag=FULL,tag=NUMGoldenAppleSeed,distance=..1] run scoreboard players operation @s NUMGoldenAppleSeed += @s BINGoldenAppleSeed
execute if entity @e[tag=RNGGoldenAppleSeed,tag=FULL,tag=NUMGoldenAppleSeed,distance=..1] run scoreboard players operation @s RNGGoldenAppleSeed -= @s BINGoldenAppleSeed

tag @e[tag=RNGGoldenAppleSeed,distance=..1] remove NUMGoldenAppleSeed

execute if score @s BINGoldenAppleSeed > 1 NUMGoldenAppleSeed run function rng_golden_apple_seed:step_3
execute if score @s BINGoldenAppleSeed = 1 NUMGoldenAppleSeed run scoreboard players set @s RNGGoldenAppleSeed 0

