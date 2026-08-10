scoreboard players add @s melon_slice_eaten 1

execute as @s if score @s melon_slice_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry melon_slice

execute as @s if score @s melon_slice_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/melon_slice_eaten
