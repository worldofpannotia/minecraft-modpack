scoreboard players add @s steak_eaten 1

execute as @s if score @s steak_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry cooked_beef

execute as @s if score @s steak_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/steak_eaten
