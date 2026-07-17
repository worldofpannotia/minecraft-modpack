# Set Base Cooldown
scoreboard players set @s eplus.deflect_cooldown 620

# Decrease Cooldown Per Level
execute if entity @s[type=minecraft:player] run function enchantmentplus:enchantments/deflect/calculate_cooldown/player
execute if entity @s[type=!minecraft:player] run function enchantmentplus:enchantments/deflect/calculate_cooldown/mob

# Cooldown Can't Go Below 1
execute if score @s eplus.deflect_cooldown matches ..0 run scoreboard players set @s eplus.deflect_cooldown 1

# Playsound
playsound minecraft:entity.breeze.deflect player @a ~ ~ ~ 1 0

# Reset Damage Resisted
scoreboard players reset @s eplus.damage_resisted