# Set Delay
scoreboard players set @s eplus.deflect_delay 620
execute store result score %EnchantmentLevel eplus.temp run data get entity @s equipment.head.components."minecraft:enchantments"."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_delay -= %EnchantmentLevel eplus.temp
execute store result score %EnchantmentLevel eplus.temp run data get entity @s equipment.chest.components."minecraft:enchantments"."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_delay -= %EnchantmentLevel eplus.temp
execute store result score %EnchantmentLevel eplus.temp run data get entity @s equipment.legs.components."minecraft:enchantments"."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_delay -= %EnchantmentLevel eplus.temp
execute store result score %EnchantmentLevel eplus.temp run data get entity @s equipment.feet.components."minecraft:enchantments"."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_delay -= %EnchantmentLevel eplus.temp
execute if score @s eplus.deflect_delay matches ..0 run scoreboard players set @s eplus.deflect_delay 1

# Sound
playsound enchantmentplus:enchant.deflect.hit player @a

# Reset Damage Resisted
scoreboard players reset @s eplus.deflect_damage_resisted

# Start Delay Timer
advancement revoke @s only enchantmentplus:enchantments/deflect/delay
