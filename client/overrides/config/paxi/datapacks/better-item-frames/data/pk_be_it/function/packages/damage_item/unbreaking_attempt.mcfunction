#> pk_be_it:packages/damage_item/unbreaking_attempt

# Check if the item has an unbreaking enchant and store it
scoreboard players set $lvl pk.temp 0
execute store result score $lvl pk.temp run data get storage pk:common temp.item.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute if score $lvl pk.temp matches 0 run return fail

# @continue Calculate chance to damage depending on Unbreaking enchantment level ((100 / level + 1)%) : on base 1000
scoreboard players add $lvl pk.temp 1
scoreboard players set $chance pk.temp 1000
scoreboard players operation $chance pk.temp /= $lvl pk.temp
execute store result score $random pk.temp run random value 0..1000
execute if score $random pk.temp <= $chance pk.temp run return fail
return 1