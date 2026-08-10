scoreboard players add @s enchanted_golden_apple_eaten 1

execute as @s if score @s enchanted_golden_apple_eaten matches 64.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry enchanted_golden_apple
execute as @s if score @s enchanted_golden_apple_eaten matches 64.. run advancement grant @s only blackbirds_torture_chamber:stuff/superduperoverpowered

execute as @s if score @s enchanted_golden_apple_eaten matches ..63 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/enchanted_golden_apple_eaten
