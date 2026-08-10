# Get Max Health
execute store result score %Max eplus.temp run attribute @s minecraft:max_health get

# Health is Not Full
execute unless score @s eplus.health = %Max eplus.temp run function enchantmentplus:enchantments/feeding_module/ignore_hunger
