# Revoke
advancement revoke @s only enchantmentplus:enchantments/radiance_gust/trigger

# Deal Damage
tag @s add eplus.radiance_gust_user
execute as @e[type=#enchantmentplus:is_mob_or_player,distance=..5,tag=!eplus.radiance_gust_user] run damage @s 2 minecraft:player_attack by @p[tag=eplus.radiance_gust_user]
tag @s remove eplus.radiance_gust_user

# Damage Item
advancement grant @s only enchantmentplus:enchantments/radiance_gust/damage_item

# Particles
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 2.5 0 2.5 0 50 normal

# Sound
playsound enchantmentplus:enchant.radiance_gust.gust player @a
