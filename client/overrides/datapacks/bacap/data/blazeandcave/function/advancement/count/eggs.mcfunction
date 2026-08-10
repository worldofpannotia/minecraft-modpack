execute store result score @s bac_egg_count run execute if entity @e[type=egg,scores={bac_splatfest_egg=1},distance=..48]
execute store result score @s bac_egg_brown_count run execute if entity @e[type=egg,scores={bac_splatfest_egg=2},distance=..48]
execute store result score @s bac_egg_blue_count run execute if entity @e[type=egg,scores={bac_splatfest_egg=3},distance=..48]

execute if score @s bac_egg_count matches 100.. if score @s bac_egg_brown_count matches 100.. if score @s bac_egg_blue_count matches 100.. run advancement grant @s only blazeandcave:redstone/splatfest
