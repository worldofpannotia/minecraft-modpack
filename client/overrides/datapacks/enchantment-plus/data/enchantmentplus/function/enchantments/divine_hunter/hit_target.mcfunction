# Targeted Only Once
tag @s add eplus.divine_hunter_exclude

# Apply Glowing and Slowness
effect give @s minecraft:glowing 2 0 true
effect give @s[type=!minecraft:player] minecraft:slowness 2 2 true

# Hit Sound
playsound enchantmentplus:enchant.divine_hunter.hit player @a

# Particles
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

# Deal Damage
damage @s[type=minecraft:player] 4 enchantmentplus:light_beam by @n[tag=eplus.divine_hunter_user]
damage @s[type=!minecraft:player] 8 enchantmentplus:light_beam by @n[tag=eplus.divine_hunter_user]

# Trigger Vision
execute if data entity @s {Health:0.0f} as @n[tag=eplus.divine_hunter_user] at @s run function enchantmentplus:enchantments/divine_hunter/trigger_vision
