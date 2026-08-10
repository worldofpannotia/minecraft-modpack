execute store result score @s bac_creaking_count run execute if entity @e[type=creaking,distance=..40]

execute if score @s bac_creaking_count matches 50.. run advancement grant @s only blazeandcave:biomes/le_creak_cest_chic
