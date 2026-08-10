# Sound
playsound enchantmentplus:enchant.swirling.hit player @a

# Particles
function enchantmentplus:enchantments/swirling/particles

# Get Base Damage
execute as @p[tag=eplus.swirling_user] run function enchantmentplus:enchantments/swirling/base_damage

# Find Targets
execute as @e[type=#enchantmentplus:is_hostile,distance=..5] run function enchantmentplus:enchantments/swirling/cleave
