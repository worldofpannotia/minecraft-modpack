scoreboard players add @s beetroot_eaten 1

execute as @s if score @s beetroot_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry beetroot

execute as @s if score @s beetroot_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/beetroot_eaten
