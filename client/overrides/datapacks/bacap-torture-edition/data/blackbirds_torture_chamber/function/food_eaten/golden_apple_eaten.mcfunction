scoreboard players add @s golden_apple_eaten 1

execute as @s if score @s golden_apple_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry golden_apple

execute as @s if score @s golden_apple_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/golden_apple_eaten
