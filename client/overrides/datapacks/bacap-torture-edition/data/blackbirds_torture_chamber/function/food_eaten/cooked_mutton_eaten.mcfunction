scoreboard players add @s cooked_mutton_eaten 1

execute as @s if score @s cooked_mutton_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry cooked_mutton

execute as @s if score @s cooked_mutton_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/cooked_mutton_eaten
