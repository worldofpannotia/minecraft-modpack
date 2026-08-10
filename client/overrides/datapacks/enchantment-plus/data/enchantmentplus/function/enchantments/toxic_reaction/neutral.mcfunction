# Get Origin Particle Position
execute as @s at @s anchored eyes positioned ^ ^ ^ run function enchantmentplus:enchantments/toxic_reaction/particle/get_origin_pos

# Check for Mobs That Are Angry Towards the User
execute as @e[type=#enchantmentplus:is_neutral,distance=..8] run function enchantmentplus:enchantments/toxic_reaction/check_anger

# Find a Target
execute as @e[type=#enchantmentplus:is_neutral,tag=eplus.toxic_reaction_angry_at,distance=..8,limit=1,sort=random,nbt=!{active_effects:[{id:"minecraft:poison"}]}] run function enchantmentplus:enchantments/toxic_reaction/inflict_poison

# Tag
tag @e[type=#enchantmentplus:is_neutral,tag=eplus.toxic_reaction_angry_at,distance=..8] remove eplus.toxic_reaction_angry_at
