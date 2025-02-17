# Get Max Health
execute store result score %MaxHealth eplus.temp run attribute @s minecraft:generic.max_health get

# Health is Not Full
execute unless score @s eplus.health = %MaxHealth eplus.temp run function enchantmentplus:enchantments/feeding_module/ignore_hunger