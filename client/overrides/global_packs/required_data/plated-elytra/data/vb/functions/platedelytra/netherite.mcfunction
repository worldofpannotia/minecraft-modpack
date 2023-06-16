# Overwrite Enchantments from Chestplate
data modify entity @s Item.tag.Enchantments set from entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_chestplate"}},distance=..1,limit=1] Item.tag.Enchantments

# Remove Ingredients
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_chestplate"}},distance=..1,limit=1]

# Modify Elytra
data merge entity @s {Motion:[0.0d,0.3d,0.0d],Item:{tag:{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",Amount:8,Operation:0,UUID:[I;1528680574,-916832196,-1265753512,-512846368]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Slot:"chest",Amount:3,Operation:0,UUID:[I;695116836,-1455930927,-1890515425,-22717190]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Slot:"chest",Amount:0.1,Operation:0,UUID:[I;1263166387,2092583721,-1228415327,1972072025]}],display:{Lore:["{\"text\":\"Netherite Plated\",\"color\":\"gray\",\"italic\":false}"]},isPlated:1b,Plate:"netherite",CustomModelData:6797}}}

# Special Effects
playsound minecraft:block.enchantment_table.use block @a[distance=..6] ~ ~ ~ 1 1
playsound minecraft:block.anvil.use block @a[distance=..6] ~ ~ ~ 1 1
particle minecraft:poof ~ ~ ~