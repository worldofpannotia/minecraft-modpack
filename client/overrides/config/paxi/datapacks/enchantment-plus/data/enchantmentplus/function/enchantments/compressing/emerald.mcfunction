# Check for Amount
execute unless items entity @s container.* minecraft:emerald[!minecraft:custom_data,minecraft:count~{min:9}] run return fail

# Clear
clear @s minecraft:emerald[!minecraft:custom_data] 9

# Give
give @s minecraft:emerald_block 1

# Repeat
execute if items entity @s container.* minecraft:emerald[!minecraft:custom_data,minecraft:count~{min:9}] run function enchantmentplus:enchantments/compressing/emerald

# Sound
execute at @s run playsound minecraft:block.crafter.craft player @s ~ ~ ~ 1 1.25