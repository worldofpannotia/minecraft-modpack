scoreboard objectives remove PlayerHeadsCount
scoreboard objectives remove RE0

scoreboard objectives add modifySuccessR dummy
scoreboard objectives add modifySuccessT dummy

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["checked2"]}] at @s run data modify entity @s Item.tag.SkullOwner set value {}

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["checked2"]}] at @s if entity @e[type=minecraft:item,distance=..0.5,nbt={Item:{id:"minecraft:written_book",Count:1b}}] store success score @p modifySuccessR run data modify entity @s Item.tag.SkullOwner set from entity @e[type=minecraft:item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:written_book",Count:1b}}] Item.tag.title
execute if score @p modifySuccessR matches 1 run function crafting:final

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["checked2"]}] at @s if entity @e[type=minecraft:item,distance=..0.5,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run data modify entity @s Item.tag.SkullOwner.Properties.textures set value [{Value:""}]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["checked2"]}] at @s if entity @e[type=minecraft:item,distance=..0.5,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] store success score @p modifySuccessT run data modify entity @s Item.tag.SkullOwner.Properties.textures[0].Value set from entity @e[type=minecraft:item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] Item.tag.pages[0]
execute if score @p modifySuccessT matches 1 run function crafting:final2

scoreboard objectives remove modifySuccessR
scoreboard objectives remove modifySuccessT