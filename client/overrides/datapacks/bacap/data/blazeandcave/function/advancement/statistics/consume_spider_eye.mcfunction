# Increases scoreboard upon consuming this item
scoreboard players add @s bac_consume_spider_eye 1
advancement revoke @s only blazeandcave:technical/consume_spider_eye

execute as @a if score @s bac_consume_spider_eye matches 1000.. run advancement grant @s only blazeandcave:monsters/pupil_poppers
