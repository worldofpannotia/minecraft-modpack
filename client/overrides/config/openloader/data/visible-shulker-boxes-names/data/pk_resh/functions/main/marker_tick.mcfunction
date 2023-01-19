execute if score %pk_shulkerbox_name_visibility PKValue matches 1 run data modify entity @s CustomNameVisible set value 1b
execute if score %pk_shulkerbox_name_visibility PKValue matches 0 run data modify entity @s CustomNameVisible set value 0b
execute unless block ~ ~ ~ #shulker_boxes run kill @s