# Remove Ingredients
kill @e[nbt={Item:{tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:mending"}]}}},distance=..1,limit=1]
kill @e[nbt={Item:{tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:infinity"}]}}},distance=..1,limit=1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}},distance=..1,limit=1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..1,limit=1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=..1,limit=1]

# Modify Bow
data merge entity @s {Motion:[0.0d,0.3d,0.0d],Item:{tag:{Enchantments:[{lvl: 1s, id: "minecraft:mending"},{lvl: 1s, id: "minecraft:infinity"}]}}}

# Special Effects
playsound minecraft:block.enchantment_table.use block @a[distance=..6] ~ ~ ~ 1 1
playsound minecraft:block.anvil.use block @a[distance=..6] ~ ~ ~ 1 1
particle minecraft:poof ~ ~ ~