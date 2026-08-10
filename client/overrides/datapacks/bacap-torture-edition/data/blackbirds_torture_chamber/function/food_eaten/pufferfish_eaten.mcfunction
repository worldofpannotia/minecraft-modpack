scoreboard players add @s pufferfish_eaten 1

execute as @s[advancements={blackbirds_torture_chamber:stuff/puffer_poppers=false}] at @s if score @s pufferfish_eaten matches 1000.. run advancement grant @s only blackbirds_torture_chamber:stuff/puffer_poppers
execute as @s if score @s pufferfish_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry pufferfish

execute as @s if score @s pufferfish_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/pufferfish_eaten
