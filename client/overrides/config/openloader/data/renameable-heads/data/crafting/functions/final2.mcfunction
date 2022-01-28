data modify entity @s Item.tag.SkullOwner.Id set value [I;2047294308,-302103294,-1861556619,627196240]

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["checked2"]}] at @s if score REconfig REOneTimeBook matches 1 run kill @e[type=minecraft:item,limit=1,distance=..1.5,nbt={Item:{id:"minecraft:writable_book",Count:1b}}]

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"},Tags:["checked2"]}] at @s run playsound minecraft:block.anvil.use block @a ~ ~ ~