scoreboard players operation @s BINEGoldenAppleSeed /= 2 NUMEGoldenAppleSeed
execute if score @s RNGEGoldenAppleSeed >= @s BINEGoldenAppleSeed run tag @e[tag=RNGEGoldenAppleSeed,distance=..1,sort=random,limit=1] add NUMEGoldenAppleSeed

execute if entity @e[tag=RNGEGoldenAppleSeed,tag=FULL,tag=NUMEGoldenAppleSeed,distance=..1] run scoreboard players operation @s NUMEGoldenAppleSeed += @s BINEGoldenAppleSeed
execute if entity @e[tag=RNGEGoldenAppleSeed,tag=FULL,tag=NUMEGoldenAppleSeed,distance=..1] run scoreboard players operation @s RNGEGoldenAppleSeed -= @s BINEGoldenAppleSeed

tag @e[tag=RNGEGoldenAppleSeed,distance=..1] remove NUMEGoldenAppleSeed

execute if score @s BINEGoldenAppleSeed > 1 NUMEGoldenAppleSeed run function rng_egolden_apple_seed:step_3
execute if score @s BINEGoldenAppleSeed = 1 NUMEGoldenAppleSeed run scoreboard players set @s RNGEGoldenAppleSeed 0

