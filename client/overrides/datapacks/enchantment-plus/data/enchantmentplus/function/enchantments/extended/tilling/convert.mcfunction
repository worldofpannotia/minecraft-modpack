# Convert Block
setblock ~ ~ ~ minecraft:farmland

# Damage Item
execute if predicate enchantmentplus:damage_chance run function enchantmentplus:damage_item/mainhand/get_value
