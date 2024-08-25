# Decrease Cooldown Per Level
execute store result score %EnchantmentLevel eplus.temp run data get entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

execute store result score %EnchantmentLevel eplus.temp run data get entity @s Inventory[{Slot:102b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

execute store result score %EnchantmentLevel eplus.temp run data get entity @s Inventory[{Slot:101b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

execute store result score %EnchantmentLevel eplus.temp run data get entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

# Multiply by Per Piece Equipped
scoreboard players reset %EnchantmentLevel eplus.temp
execute if data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
execute if data entity @s Inventory[{Slot:102b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
execute if data entity @s Inventory[{Slot:101b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
execute if data entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
scoreboard players operation @s eplus.deflect_cooldown *= %EnchantmentLevel eplus.temp