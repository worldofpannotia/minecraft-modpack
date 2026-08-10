scoreboard players add @s beetroot_soup_eaten 1

execute as @s if score @s beetroot_soup_eaten matches 1728.. run advancement grant @s only blackbirds_torture_chamber:stuff/im_still_hungry beetroot_soup

execute as @s if score @s beetroot_soup_eaten matches ..1727 run advancement revoke @s only blackbirds_torture_chamber:technical/eating/beetroot_soup_eaten
