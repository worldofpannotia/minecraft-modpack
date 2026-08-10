# Increases scoreboard only if the player has achieved the ninth line (which is checked within the technical advancement itself)
scoreboard players add @s bac_1000th_item_dummy 1
advancement revoke @s only blazeandcave:technical/place_warped_button

execute as @a if score @s bac_1000th_item_dummy matches 1000.. run advancement grant @s only blazeandcave:technical/riddle_tenth_line
