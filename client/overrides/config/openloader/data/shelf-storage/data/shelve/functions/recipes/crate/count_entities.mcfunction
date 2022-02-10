execute at @s as @e[type=item,nbt={Item: {id: "minecraft:knowledge_book",Count: 1b}},distance=..3] run scoreboard players add @p count 1
execute at @s as @e[type=item,nbt={Item: {id: "minecraft:knowledge_book",Count: 1b}},distance=..3] run kill @s
execute if score @s count matches 1.. run function shelve:recipes/crate/give
