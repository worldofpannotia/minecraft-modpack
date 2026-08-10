scoreboard players add @s dried_kelp_eaten 1

execute as @s if score @s dried_kelp_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry dried_kelp

execute as @s if score @s dried_kelp_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/dried_kelp_eaten
