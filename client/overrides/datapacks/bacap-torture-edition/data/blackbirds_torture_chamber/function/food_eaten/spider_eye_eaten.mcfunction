scoreboard players add @s spider_eye_eaten 1

execute as @s if score @s spider_eye_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry spider_eye

execute as @s if score @s spider_eye_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/spider_eye_eaten
