# Increases scoreboard upon consuming this item
scoreboard players add @s bac_consume_honey_bottle 1
advancement revoke @s only blazeandcave:technical/consume_honey_bottle

execute as @a if score @s bac_consume_honey_bottle matches 100.. run advancement grant @s only blazeandcave:animal/wheres_the_honey_lebowski
