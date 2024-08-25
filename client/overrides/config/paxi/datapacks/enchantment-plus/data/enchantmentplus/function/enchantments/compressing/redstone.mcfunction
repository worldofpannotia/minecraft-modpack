# Check for Amount
execute unless items entity @s container.* minecraft:redstone[!minecraft:custom_data,minecraft:count~{min:9}] run return fail

# Clear
clear @s minecraft:redstone[!minecraft:custom_data] 9

# Give
give @s minecraft:redstone_block 1

# Repeat
execute if items entity @s container.* minecraft:redstone[!minecraft:custom_data,minecraft:count~{min:9}] run function enchantmentplus:enchantments/compressing/redstone

# Sound
execute at @s run playsound minecraft:block.crafter.craft player @s ~ ~ ~ 1 1.25