# Revoke
advancement revoke @s only enchantmentplus:enchantments/shield_slam

# Tag
tag @s add eplus.shield_slam_user

# Apply Knockback
execute as @e[type=#enchantmentplus:is_mob,distance=..2] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"targeted_entity":{"nbt":"{Tags:[\"eplus.shield_slam_user\"]}"}}} at @s run function enchantmentplus:enchantments/shield_slam/apply_knockback

# Sound
playsound enchantmentplus:enchant.shield_slam.slam player @a ~ ~ ~ 1 1.2

# Tag
tag @s remove eplus.shield_slam_user
