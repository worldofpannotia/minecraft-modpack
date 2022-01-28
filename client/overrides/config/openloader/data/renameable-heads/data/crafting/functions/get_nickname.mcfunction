scoreboard objectives remove nameSuccess

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b},PickupDelay:-1,Tags:["empty"]}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s run kill @s

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book",Count:1b},Tags:["empty"]}] at @s run data modify entity @s Item.tag.title set from block ~ ~ ~ SkullOwner.Name
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book",Count:1b},Tags:["empty"]}] at @s run data modify entity @s PickupDelay set value 0