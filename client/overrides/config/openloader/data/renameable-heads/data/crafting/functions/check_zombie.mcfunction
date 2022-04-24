scoreboard objectives add headCount dummy

scoreboard objectives add RE0 dummy
scoreboard players set REconfig RE0 0

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:zombie_head"},Tags:["unchecked"]}] at @s store result score @p headCount run data get entity @s Item.Count

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:zombie_head"},Tags:["unchecked"]}] at @s if score REconfig REMaxHeads matches -1 run data modify entity @s Tags set value ["checked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:zombie_head"},Tags:["unchecked"]}] at @s if score REconfig REMaxHeads >= REconfig RE0 if score @p headCount <= REconfig REMaxHeads run data modify entity @s Tags set value ["checked"]

function crafting:craft_zombie