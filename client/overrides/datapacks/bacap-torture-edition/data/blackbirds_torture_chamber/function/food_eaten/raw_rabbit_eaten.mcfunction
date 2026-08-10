scoreboard players add @s raw_rabbit_eaten 1

execute as @s if score @s raw_rabbit_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry rabbit

execute as @s if score @s raw_rabbit_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/raw_rabbit_eaten
