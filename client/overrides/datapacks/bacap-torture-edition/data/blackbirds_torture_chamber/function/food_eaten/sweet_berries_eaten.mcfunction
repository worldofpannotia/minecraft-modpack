scoreboard players add @s sweet_berries_eaten 1

execute as @s if score @s sweet_berries_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry sweet_berries

execute as @s if score @s sweet_berries_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/sweet_berries_eaten
