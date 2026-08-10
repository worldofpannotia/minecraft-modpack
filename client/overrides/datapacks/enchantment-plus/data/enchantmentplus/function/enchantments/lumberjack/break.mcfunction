# Redundant Marker
execute if entity @e[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5] run kill @n[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5]

# Damage Tool
execute if block ~ ~ ~ #enchantmentplus:lumberjack/damages_tool if predicate enchantmentplus:damage_chance run function enchantmentplus:damage_item/mainhand/get_value

# Break Block
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air

# Set Motion to the Dropped Items to Simulate Tree Falling
tag @s add eplus.lj_user
execute as @e[type=minecraft:item,nbt={Age:0s},distance=..0.5] run function enchantmentplus:enchantments/lumberjack/set_motion
tag @s remove eplus.lj_user

# 15x32x15 Cubic Area
execute positioned ~-7 ~-31 ~-7 if entity @e[type=minecraft:marker,tag=eplus.lj_marker,tag=eplus.lj_break,dx=13,dy=61,dz=13] positioned ~7 ~31 ~7 run function enchantmentplus:enchantments/lumberjack/check_adjacent with storage enchantmentplus:data Macros
