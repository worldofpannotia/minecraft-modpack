scoreboard players add @s raw_mutton_eaten 1

execute as @s if score @s raw_mutton_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry mutton

execute as @s if score @s raw_mutton_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/raw_mutton_eaten
