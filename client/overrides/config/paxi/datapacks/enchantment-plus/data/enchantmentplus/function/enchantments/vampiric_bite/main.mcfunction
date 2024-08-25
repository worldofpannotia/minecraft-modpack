# Sound
playsound minecraft:entity.phantom.bite player @a ~ ~ ~ 0.5 1.3

# Particles
execute anchored eyes run particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^ ^2 0.5 0.5 0.5 0 15
execute anchored eyes run particle minecraft:falling_dust{block_state:"minecraft:redstone_block"} ^ ^ ^2 0.5 0.5 0.5 0 15

# Calculate Expected Health
execute store result score %CurrentHealth eplus.temp run data get entity @s Health
execute store result score %ExpectedHealth eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."enchantmentplus:vampiric_bite" 1
scoreboard players operation %ExpectedHealth eplus.temp += %CurrentHealth eplus.temp

# Calculate the Amount to Reduce Health
execute store result score %MaxHealth eplus.temp run attribute @s minecraft:generic.max_health get
scoreboard players operation %MaxHealth eplus.temp -= %ExpectedHealth eplus.temp
execute store result storage enchantmentplus:data Macros.ReduceMaxHealth int 1 run scoreboard players get %MaxHealth eplus.temp

# Reduce Maximum Health
function enchantmentplus:enchantments/vampiric_bite/reduce_max_health with storage enchantmentplus:data Macros{}

# Update Health
effect give @s minecraft:instant_health 1 24 true

# Set Max Health Back
tag @s add eplus.vampiric_bite_healed
schedule function enchantmentplus:enchantments/vampiric_bite/schedule 2t