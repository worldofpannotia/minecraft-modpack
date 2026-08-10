# Check for Amount
execute unless items entity @s container.* minecraft:lapis_lazuli[!minecraft:custom_data,minecraft:count~{min:9}] run return fail

# Clear
clear @s minecraft:lapis_lazuli[!minecraft:custom_data] 9

# Give
give @s minecraft:lapis_block 1

# Repeat
execute if items entity @s container.* minecraft:lapis_lazuli[!minecraft:custom_data,minecraft:count~{min:9}] run function enchantmentplus:enchantments/compressing/lapis_lazuli

# Sound
execute at @s run playsound enchantmentplus:enchant.compressing.compress player @s
