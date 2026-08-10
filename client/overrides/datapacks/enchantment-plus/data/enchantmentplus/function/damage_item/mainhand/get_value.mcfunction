# Get Value
execute store result score @s eplus.temp run data get entity @s SelectedItem.components."minecraft:damage"

# Increase Damage
scoreboard players add @s eplus.temp 1

# Store Value
execute store result storage enchantmentplus:data Macros.ItemDamage int 1 run scoreboard players get @s eplus.temp
function enchantmentplus:damage_item/mainhand/store_value with storage enchantmentplus:data Macros
