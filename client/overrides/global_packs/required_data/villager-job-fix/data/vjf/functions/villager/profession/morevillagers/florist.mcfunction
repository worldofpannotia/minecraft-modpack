######################### EXECUTING AS VILLAGER, POSITIONED AT WORKSTATION #########################

################## DEBUG ##################
#say Villager - Profession - Florist (More Villagers)
################## DEBUG ##################

#data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:plains"}
execute if entity @s[nbt={VillagerData:{type:"minecraft:desert"}}] run data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:desert"}
execute if entity @s[nbt={VillagerData:{type:"minecraft:jungle"}}] run data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:jungle"}
execute if entity @s[nbt={VillagerData:{type:"minecraft:plains"}}] run data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:plains"}
execute if entity @s[nbt={VillagerData:{type:"minecraft:savanna"}}] run data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:savanna"}
execute if entity @s[nbt={VillagerData:{type:"minecraft:snow"}}] run data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:snow"}
execute if entity @s[nbt={VillagerData:{type:"minecraft:swamp"}}] run data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:swamp"}
execute if entity @s[nbt={VillagerData:{type:"minecraft:taiga"}}] run data modify entity @s VillagerData set value {profession: "morevillagers:florist", level: 1, type: "minecraft:taiga"}