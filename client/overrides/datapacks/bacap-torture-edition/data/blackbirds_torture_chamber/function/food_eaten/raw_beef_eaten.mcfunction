scoreboard players add @s raw_beef_eaten 1

execute as @s if score @s raw_beef_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry beef

execute as @s if score @s raw_beef_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/raw_beef_eaten
