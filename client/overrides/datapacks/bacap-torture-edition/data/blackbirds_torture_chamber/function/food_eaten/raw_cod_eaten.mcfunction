scoreboard players add @s raw_cod_eaten 1

execute as @s if score @s raw_cod_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry raw_cod

execute as @s if score @s raw_cod_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/raw_cod_eaten
