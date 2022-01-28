scoreboard objectives remove RE0

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:skeleton_skull"},Tags:["checked"]}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b},PickupDelay:-1,Tags:["unchecked2"]}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:skeleton_skull"},Tags:["checked"]}] at @s run kill @s

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",Count:1b}}] at @s store result entity @s Item.Count byte 1 run scoreboard players get @p skullCount
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"}}] at @s run data modify entity @s PickupDelay set value 0

scoreboard objectives remove skullCount
function crafting:check_player