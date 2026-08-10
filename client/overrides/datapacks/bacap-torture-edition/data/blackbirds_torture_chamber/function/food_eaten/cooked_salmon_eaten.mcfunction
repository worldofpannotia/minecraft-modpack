scoreboard players add @s cooked_salmon_eaten 1

execute as @s if score @s cooked_salmon_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry cooked_salmon

execute as @s if score @s cooked_salmon_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/cooked_salmon_eaten
