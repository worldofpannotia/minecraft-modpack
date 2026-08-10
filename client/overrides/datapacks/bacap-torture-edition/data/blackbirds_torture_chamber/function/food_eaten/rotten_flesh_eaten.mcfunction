scoreboard players add @s rotten_flesh_eaten 1

execute as @s if score @s rotten_flesh_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry rotten_flesh

execute as @s if score @s rotten_flesh_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/rotten_flesh_eaten
