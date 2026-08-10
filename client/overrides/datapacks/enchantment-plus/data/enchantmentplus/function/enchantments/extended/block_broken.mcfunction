# Define Center Point
tag @s add eplus.ex_break

# Start Breaking
$execute as @p[nbt={UUID:$(UserUUID)}] run function enchantmentplus:enchantments/extended/mining/main

# Summon Experience Orb
execute if score @s eplus.temp2 matches 1.. run function enchantmentplus:enchantments/extended/experience/summon_orb

# Kill
kill @s
