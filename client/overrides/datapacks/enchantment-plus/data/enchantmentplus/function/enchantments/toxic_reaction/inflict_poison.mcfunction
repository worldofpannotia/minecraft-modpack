# Give Effect
effect give @s minecraft:poison 4 1 false

# Sound
playsound enchantmentplus:enchant.toxic_reaction.transfer_poison player @a

# Get Target Particle Position
execute as @s at @s anchored eyes positioned ^ ^ ^ run function enchantmentplus:enchantments/toxic_reaction/particle/get_target_pos

# Particle
function enchantmentplus:enchantments/toxic_reaction/particle/create with storage enchantmentplus:data Macros.ToxicReactionParticle
