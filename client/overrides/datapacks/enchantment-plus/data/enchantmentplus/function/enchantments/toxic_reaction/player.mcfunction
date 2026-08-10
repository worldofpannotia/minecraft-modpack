# Get Origin Particle Position
execute as @s at @s anchored eyes positioned ^ ^ ^ run function enchantmentplus:enchantments/toxic_reaction/particle/get_origin_pos

# Find a Target
execute as @e[type=minecraft:player,tag=!eplus.toxic_reaction_user,distance=..8,limit=1,sort=random,nbt=!{active_effects:[{id:"minecraft:poison"}]}] run function enchantmentplus:enchantments/toxic_reaction/inflict_poison
