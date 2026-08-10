# Increases scoreboard upon consuming this item
scoreboard players add @s bac_consume_poisonous_potato 1
advancement revoke @s only blazeandcave:technical/consume_poisonous_potato

execute as @a if score @s bac_consume_poisonous_potato matches 100.. run advancement grant @s only blazeandcave:farming/certified_spud_chomper
