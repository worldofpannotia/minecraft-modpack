# Redundant Marker
execute if entity @e[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5] run kill @n[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5]

# Damage Tool
execute if predicate enchantmentplus:damage_chance run function enchantmentplus:damage_item/mainhand/get_value

# Break Block
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air

# Teleport Drops to the Center
execute as @e[type=minecraft:item,nbt={Age:0s},distance=..0.5] run function enchantmentplus:enchantments/earthly_gatherer/gather_drops

# 10 Blocks Circular Area
execute if entity @e[type=minecraft:marker,tag=eplus.eg_marker,tag=eplus.eg_break,distance=..10] run function enchantmentplus:enchantments/earthly_gatherer/check_adjacent with storage enchantmentplus:data Macros
