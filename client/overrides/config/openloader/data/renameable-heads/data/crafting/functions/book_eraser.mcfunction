execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s run kill @e[type=minecraft:item,distance=..0.5,nbt={Item:{id:"minecraft:written_book",Count:1b}}]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:writable_book",Count:1b,tag:{display:{Name:'[{"text":"Erased Book","color":"light_purple","italic":"false"}]'}}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s run data remove entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b,tag:{display:{Name:'[{"text":"Erased Book","color":"light_purple","italic":"false"}]'}}}},limit=1] Item.tag.pages
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s run kill @s