scoreboard players add @s pumpkin_pie_eaten 1

execute as @s if score @s pumpkin_pie_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry pumpkin_pie

execute as @s if score @s pumpkin_pie_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/pumpkin_pie_eaten
