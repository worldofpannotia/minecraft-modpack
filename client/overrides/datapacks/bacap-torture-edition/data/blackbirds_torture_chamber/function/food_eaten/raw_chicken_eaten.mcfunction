scoreboard players add @s raw_chicken_eaten 1

execute as @s if score @s raw_chicken_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry chicken

execute as @s if score @s raw_chicken_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/raw_chicken_eaten
