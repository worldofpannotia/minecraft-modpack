# Sound
playsound enchantmentplus:enchant.vampiric_bite.hit player @a

# Particles
execute anchored eyes run particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^ ^2.5 0.5 0.5 0.5 0 15
execute anchored eyes run particle minecraft:falling_dust{block_state:"minecraft:redstone_block"} ^ ^ ^2.5 0.5 0.5 0.5 0 15

# Calculate Expected Health
execute store result score %Current eplus.temp run data get entity @s Health
execute store result score %Expected eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:vampiric_bite" 1
scoreboard players operation %Expected eplus.temp += %Current eplus.temp

# Calculate the Amount to Reduce Health
execute store result score %Max eplus.temp run attribute @s minecraft:max_health get
scoreboard players operation %Max eplus.temp -= %Expected eplus.temp
execute store result storage enchantmentplus:data Macros.ReduceMaxHealth int 1 run scoreboard players get %Max eplus.temp

# Reduce Maximum Health
function enchantmentplus:enchantments/vampiric_bite/reduce_max_health with storage enchantmentplus:data Macros{}

# Update Health
effect give @s minecraft:instant_health 1 24 true

# Set Max Health Back
tag @s add eplus.vampiric_bite_healed
schedule function enchantmentplus:enchantments/vampiric_bite/schedule 2t
