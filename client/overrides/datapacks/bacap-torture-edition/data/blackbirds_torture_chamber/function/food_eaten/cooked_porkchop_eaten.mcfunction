scoreboard players add @s cooked_porkchop_eaten 1

execute as @s if score @s cooked_porkchop_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry cooked_porkchop

execute as @s if score @s cooked_porkchop_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/cooked_porkchop_eaten
