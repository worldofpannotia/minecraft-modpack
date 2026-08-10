scoreboard players add @s potato_eaten 1

execute as @s if score @s potato_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry potato

execute as @s if score @s potato_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/potato_eaten
