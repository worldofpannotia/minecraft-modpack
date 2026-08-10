# Checks this Area Effect Cloud for dragon_breath particles

execute unless entity @s[nbt={custom_particle:{type:"minecraft:dragon_breath"}}] run tag @s add aec_player_created

tag @s add aec_checked
