scoreboard objectives add PlayerHeadsCount dummy

scoreboard objectives add RE0 dummy
scoreboard players set REconfig RE0 0

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["unchecked2"]}] at @s store result score @p PlayerHeadsCount run data get entity @s Item.Count

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["unchecked2"]}] at @s if score REconfig REMaxHeads matches -1 run data modify entity @s Tags set value ["checked2"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["unchecked2"]}] at @s if score REconfig REMaxHeads >= REconfig RE0 if score @p PlayerHeadsCount <= REconfig REMaxHeads run data modify entity @s Tags set value ["checked2"]

function crafting:craft_player