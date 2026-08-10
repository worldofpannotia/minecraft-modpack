execute if block ~ ~ ~ #blazeandcave:underwater_blocks run scoreboard players add @s[gamemode=!spectator] bac_underwater 1
execute unless block ~ ~ ~ #blazeandcave:underwater_blocks run scoreboard players set @s bac_underwater 0
execute if block ~ ~1.7 ~ #blazeandcave:non_underwater_blocks run scoreboard players set @s bac_underwater 0
advancement grant @s[scores={bac_underwater=120..}] only blazeandcave:biomes/free_diver
advancement grant @s[scores={bac_underwater=1200..}] only blazeandcave:biomes/sleep_with_the_fishes
