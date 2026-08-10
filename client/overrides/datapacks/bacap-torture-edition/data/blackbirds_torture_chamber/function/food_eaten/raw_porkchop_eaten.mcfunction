scoreboard players add @s raw_porkchop_eaten 1

execute as @s if score @s raw_porkchop_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry porkchop

execute as @s if score @s raw_porkchop_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/raw_porkchop_eaten
