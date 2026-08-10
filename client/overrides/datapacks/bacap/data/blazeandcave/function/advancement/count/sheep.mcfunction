execute store result score @s bac_sheep_count run execute if entity @e[type=sheep,distance=..16]

execute if score @s bac_sheep_count matches 100.. run advancement grant @s only blazeandcave:animal/counting_sheep
