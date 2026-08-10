# Redundant Marker
execute if entity @e[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5] run kill @n[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5]

# Calculate Experience
execute if block ~ ~ ~ #enchantmentplus:ores_with_xp unless data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:silk_touch" run function enchantmentplus:enchantments/ore_excavation/experience/calculate

# Damage Tool
execute if predicate enchantmentplus:damage_chance run function enchantmentplus:damage_item/mainhand/get_value

# Break Block
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air

# Teleport Drops to the Center
execute as @e[type=minecraft:item,nbt={Age:0s},distance=..0.5] run function enchantmentplus:enchantments/ore_excavation/gather_drops

# 10 Blocks Circular Area
execute if entity @e[type=minecraft:marker,tag=eplus.oe_marker,tag=eplus.oe_break,distance=..10] run function enchantmentplus:enchantments/ore_excavation/check_adjacent with storage enchantmentplus:data Macros
