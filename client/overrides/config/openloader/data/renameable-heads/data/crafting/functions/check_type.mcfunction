scoreboard objectives add nameSuccess dummy

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s store success score @p nameSuccess run data get block ~ ~ ~ SkullOwner.Name

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s if score @p nameSuccess matches 1 run function crafting:get_nickname
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s if score @p nameSuccess matches 0 run function crafting:get_texture