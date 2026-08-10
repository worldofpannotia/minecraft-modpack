scoreboard players add @s tropical_fish_eaten 1

execute as @s if score @s tropical_fish_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry tropical_fish

execute as @s if score @s tropical_fish_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/tropical_fish_eaten
