scoreboard objectives remove nameSuccess

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s run data modify entity @s Tags set value ["empty"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s run data modify entity @s Item.tag.pages set value [""]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b},Tags:["empty"]}] at @s run data modify entity @s Item.tag.pages[0] set from block ~ ~ ~ SkullOwner.Properties.textures[0].Value