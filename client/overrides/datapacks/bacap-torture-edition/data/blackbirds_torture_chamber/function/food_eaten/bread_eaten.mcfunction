scoreboard players add @s bread_eaten 1

execute as @s if score @s bread_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry bread

execute as @s if score @s bread_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/bread_eaten
