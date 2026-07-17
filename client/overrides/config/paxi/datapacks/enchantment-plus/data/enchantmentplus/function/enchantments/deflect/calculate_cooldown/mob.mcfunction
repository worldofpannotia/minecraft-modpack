# Decrease Cooldown Per Level
execute store result score %EnchantmentLevel eplus.temp run data get entity @s ArmorItems[3].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

execute store result score %EnchantmentLevel eplus.temp run data get entity @s ArmorItems[2].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

execute store result score %EnchantmentLevel eplus.temp run data get entity @s ArmorItems[1].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

execute store result score %EnchantmentLevel eplus.temp run data get entity @s ArmorItems[0].components."minecraft:enchantments".levels."enchantmentplus:deflect" 20
scoreboard players operation @s eplus.deflect_cooldown -= %EnchantmentLevel eplus.temp

# Multiply by Per Piece Equipped
scoreboard players reset %EnchantmentLevel eplus.temp
execute if data entity @s ArmorItems[3].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
execute if data entity @s ArmorItems[2].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
execute if data entity @s ArmorItems[1].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
execute if data entity @s ArmorItems[0].components."minecraft:enchantments".levels."enchantmentplus:deflect" run scoreboard players add %EnchantmentLevel eplus.temp 1
scoreboard players operation @s eplus.deflect_cooldown *= %EnchantmentLevel eplus.temp