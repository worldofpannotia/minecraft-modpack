# Summon Temporary Marker to Get Eye Level Coordinates
summon minecraft:marker ~ ~ ~ {Tags:[toxic_reaction_origin_pos]}
data modify storage enchantmentplus:data Macros.ToxicReactionParticle.OriginPosX set from entity @n[type=minecraft:marker,tag=toxic_reaction_origin_pos] Pos[0]
data modify storage enchantmentplus:data Macros.ToxicReactionParticle.OriginPosY set from entity @n[type=minecraft:marker,tag=toxic_reaction_origin_pos] Pos[1]
data modify storage enchantmentplus:data Macros.ToxicReactionParticle.OriginPosZ set from entity @n[type=minecraft:marker,tag=toxic_reaction_origin_pos] Pos[2]
kill @n[type=minecraft:marker,tag=toxic_reaction_origin_pos]
