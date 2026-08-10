scoreboard players add @s baked_potato_eaten 1

execute as @s if score @s baked_potato_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry baked_potato

execute as @s if score @s baked_potato_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/baked_potato_eaten
