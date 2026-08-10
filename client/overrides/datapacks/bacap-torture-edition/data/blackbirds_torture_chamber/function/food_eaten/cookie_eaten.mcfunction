scoreboard players add @s cookie_eaten 1

execute as @s if score @s cookie_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry cookie

execute as @s if score @s cookie_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/cookie_eaten
