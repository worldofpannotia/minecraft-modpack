# Redundant Marker
execute if entity @e[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5] run kill @n[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5]

# Calculate Experience
execute if block ~ ~ ~ #enchantmentplus:blocks_with_xp unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:silk_touch" run function enchantmentplus:enchantments/extended/experience/calculate

# Damage Tool
execute if predicate enchantmentplus:damage_chance run function enchantmentplus:damage_item/mainhand/get_value

# Break Block
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air
