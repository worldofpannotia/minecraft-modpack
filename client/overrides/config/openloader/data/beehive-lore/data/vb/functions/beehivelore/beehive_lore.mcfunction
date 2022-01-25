# Target
execute as @e[type=minecraft:item,tag=!VBbeeLoreTag,nbt={Item:{id:"minecraft:bee_nest"}}] unless data entity @s Item.tag{VBbeeLoreTag:1b} if data entity @s Item.tag.display.Lore run function vb:beehivelore/set_lore
execute as @e[type=minecraft:item,tag=!VBbeeLoreTag,nbt={Item:{id:"minecraft:beehive"}}] unless data entity @s Item.tag{VBbeeLoreTag:1b} if data entity @s Item.tag.display.Lore run function vb:beehivelore/set_lore

# Loop
schedule function vb:beehivelore/beehive_lore 1t