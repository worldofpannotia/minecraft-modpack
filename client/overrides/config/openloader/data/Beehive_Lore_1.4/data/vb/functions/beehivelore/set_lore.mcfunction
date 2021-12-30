# Lore Spacer
data modify entity @s Item.tag.display.Lore prepend value '{"text":""}'

# Bees
execute unless data entity @s Item.tag.BlockEntityTag.Bees[0] run data modify entity @s Item.tag.display.Lore insert 1 value '{"text":"Bees: 0","color":"gold","italic":"false"}'

execute if data entity @s Item.tag.BlockEntityTag.Bees[0] unless data entity @s Item.tag.BlockEntityTag.Bees[1] run data modify entity @s Item.tag.display.Lore insert 1 value '{"text":"Bees: 1","color":"gold","italic":"false"}'
execute if data entity @s Item.tag.BlockEntityTag.Bees[1] unless data entity @s Item.tag.BlockEntityTag.Bees[2] run data modify entity @s Item.tag.display.Lore insert 1 value '{"text":"Bees: 2","color":"gold","italic":"false"}'
execute if data entity @s Item.tag.BlockEntityTag.Bees[2] run data modify entity @s Item.tag.display.Lore insert 1 value '{"text":"Bees: 3","color":"gold","italic":"false"}'

# Honey
# v1.4+ Set in loot table

# Tag Nest/Hive
tag @s add VBbeeLoreTag
data merge entity @s {Item:{tag:{VBbeeLoreTag:1b}}}