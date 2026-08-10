scoreboard players add @s mushroom_stew_eaten 1

execute as @s if score @s mushroom_stew_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry mushroom_stew

execute as @s if score @s mushroom_stew_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/mushroom_stew_eaten
