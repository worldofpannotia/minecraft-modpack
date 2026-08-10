scoreboard players add @s honey_bottle_eaten 1

execute as @s if score @s honey_bottle_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry honey_bottle

execute as @s if score @s honey_bottle_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/honey_bottle_eaten
