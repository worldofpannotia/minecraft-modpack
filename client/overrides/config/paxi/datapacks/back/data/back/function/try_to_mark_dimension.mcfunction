execute as @e[type=minecraft:item,tag=!back.notDimensionMarker] unless data entity @s Item.components."minecraft:custom_data".back_data.mark_dimension run tag @s add back.notDimensionMarker
scoreboard players set #marked back.dummy 0
execute as @e[type=minecraft:item,tag=!back.notDimensionMarker,limit=1] at @s run function back:mark_dimension
execute if score #marked back.dummy matches 0 run schedule function back:try_to_mark_dimension 1t append