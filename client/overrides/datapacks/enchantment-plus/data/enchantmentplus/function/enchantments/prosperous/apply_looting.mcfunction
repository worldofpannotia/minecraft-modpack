# Get Looting Level
execute store result score %EnchantmentLevel eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:looting"
