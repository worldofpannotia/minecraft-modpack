# Decrease Delay
execute if score @s eplus.deflect_delay matches 1.. run scoreboard players remove @s eplus.deflect_delay 1

# Ready
execute if score @s eplus.deflect_delay matches 0 run title @s actionbar {translate:"notification.enchantmentplus.deflect.ready",fallback:"\u00A7ADeflect is ready!"}
execute if score @s eplus.deflect_delay matches 0 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2

# Repeat
execute if score @s eplus.deflect_delay matches 1.. run advancement revoke @s only enchantmentplus:enchantments/deflect/delay
