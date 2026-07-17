# Checks if there is currently a raid going
execute if entity @e[type=#minecraft:raiders,predicate=blazeandcave:has_raid,distance=..50] run advancement grant @s only blazeandcave:animal/battle_of_the_bands

advancement revoke @s only blazeandcave:technical/goat_horn_use