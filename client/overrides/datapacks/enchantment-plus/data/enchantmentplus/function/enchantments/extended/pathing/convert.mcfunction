# Convert Block
setblock ~ ~ ~ minecraft:dirt_path

# Damage Item
execute if predicate enchantmentplus:damage_chance run function enchantmentplus:damage_item/mainhand/get_value
