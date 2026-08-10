# Sound
playsound enchantmentplus:enchant.swirling.hit player @a

# Particles
function enchantmentplus:enchantments/swirling/particles

# Get Base Damage
execute as @p[tag=eplus.swirling_user] run function enchantmentplus:enchantments/swirling/base_damage

# Check for Owned Mobs
execute as @e[type=#enchantmentplus:is_passive,distance=..5] run function enchantmentplus:enchantments/swirling/check_owner

# Find Targets
execute as @e[type=#enchantmentplus:is_passive,tag=!eplus.swirling_exclude,distance=..5] run function enchantmentplus:enchantments/swirling/cleave

# Tag
tag @e[type=#enchantmentplus:is_passive,tag=eplus.swirling_exclude,distance=..5] remove eplus.swirling_exclude
