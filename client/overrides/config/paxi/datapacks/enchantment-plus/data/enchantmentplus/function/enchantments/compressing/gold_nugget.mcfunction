# Check for Amount
execute unless items entity @s container.* minecraft:gold_nugget[!minecraft:custom_data,minecraft:count~{min:9}] run return fail

# Clear
clear @s minecraft:gold_nugget[!minecraft:custom_data] 9

# Give
give @s minecraft:gold_ingot 1

# Repeat
execute if items entity @s container.* minecraft:gold_nugget[!minecraft:custom_data,minecraft:count~{min:9}] run function enchantmentplus:enchantments/compressing/gold_nugget

# Check for Amount
execute unless items entity @s container.* minecraft:gold_ingot[!minecraft:custom_data,minecraft:count~{min:9}] run return fail

# Clear
clear @s minecraft:gold_ingot[!minecraft:custom_data] 9

# Give
give @s minecraft:gold_block 1

# Repeat
execute if items entity @s container.* minecraft:gold_ingot[!minecraft:custom_data,minecraft:count~{min:9}] run function enchantmentplus:enchantments/compressing/gold_nugget

# Sound
execute at @s run playsound minecraft:block.crafter.craft player @s ~ ~ ~ 1 1.25