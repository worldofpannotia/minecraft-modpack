execute if entity @s[nbt={Item:{id:"minecraft:blue_egg"}}] run scoreboard players set @s bac_splatfest_egg 3
execute if entity @s[nbt={Item:{id:"minecraft:brown_egg"}}] run scoreboard players set @s bac_splatfest_egg 2
execute if entity @s[nbt={Item:{id:"minecraft:egg"}}] run scoreboard players set @s bac_splatfest_egg 1

tag @s add splatfest_tagged
