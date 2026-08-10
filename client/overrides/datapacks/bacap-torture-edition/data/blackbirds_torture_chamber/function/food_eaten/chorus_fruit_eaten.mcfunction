scoreboard players add @s chorus_fruit_eaten 1

execute as @s if score @s chorus_fruit_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry chorus_fruit

execute as @s if score @s chorus_fruit_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/chorus_fruit_eaten
