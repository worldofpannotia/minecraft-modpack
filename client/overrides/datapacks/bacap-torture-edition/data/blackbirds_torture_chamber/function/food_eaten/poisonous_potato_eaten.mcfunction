scoreboard players add @s poisonous_potato_eaten 1

execute as @s if score @s poisonous_potato_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry poisonous_potato

execute as @s if score @s poisonous_potato_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/poisonous_potato_eaten
