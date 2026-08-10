# Summon Temporary Marker to Get Eye Level Coordinates
summon minecraft:marker ~ ~ ~ {Tags:[toxic_reaction_target_pos]}
data modify storage enchantmentplus:data Macros.ToxicReactionParticle.TargetPosX set from entity @n[type=minecraft:marker,tag=toxic_reaction_target_pos] Pos[0]
data modify storage enchantmentplus:data Macros.ToxicReactionParticle.TargetPosY set from entity @n[type=minecraft:marker,tag=toxic_reaction_target_pos] Pos[1]
data modify storage enchantmentplus:data Macros.ToxicReactionParticle.TargetPosZ set from entity @n[type=minecraft:marker,tag=toxic_reaction_target_pos] Pos[2]
kill @n[type=minecraft:marker,tag=toxic_reaction_target_pos]
