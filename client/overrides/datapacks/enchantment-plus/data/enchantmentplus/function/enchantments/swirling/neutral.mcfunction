# Sound
playsound enchantmentplus:enchant.swirling.hit player @a

# Particles
function enchantmentplus:enchantments/swirling/particles

# Get Base Damage
execute as @p[tag=eplus.swirling_user] run function enchantmentplus:enchantments/swirling/base_damage

# Check for Mobs That Are Angry Towards the User
execute as @e[type=#enchantmentplus:is_neutral,distance=..5] run function enchantmentplus:enchantments/swirling/check_anger

# Find Targets
execute as @e[type=#enchantmentplus:is_neutral,tag=eplus.swirling_angry_at,distance=..5] run function enchantmentplus:enchantments/swirling/cleave

# Tag
tag @e[type=#enchantmentplus:is_neutral,tag=eplus.swirling_angry_at,distance=..5] remove eplus.swirling_angry_at
