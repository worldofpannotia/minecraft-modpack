summon minecraft:marker ~ ~ ~ {Tags:["back.dimension","back.newDimension"]}
data modify entity @e[type=minecraft:marker,tag=back.newDimension,limit=1,distance=..0.01] data.Dimension set from entity @s Item.components."minecraft:custom_data".back_data.mark_dimension
tag @e[type=minecraft:marker,tag=back.newDimension,limit=1,distance=..0.01] remove back.newDimension
kill @s
scoreboard players set #marked back.dummy 1