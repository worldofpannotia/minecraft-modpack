######################### EXECUTING AS VILLAGER, POSITIONED AT WORKSTATION #########################

################## DEBUG ##################
#say Villager - Trade - Unlocked
################## DEBUG ##################

function vjf:villager/data/prepare

# Clears villager's offers if he:
#       - is of a different profession than the workstation
execute if block ~ ~ ~ minecraft:blast_furnace unless entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:smoker unless entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:cartography_table unless entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:brewing_stand unless entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:composter unless entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:barrel unless entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:fletching_table unless entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:cauldron unless entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:lectern unless entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:stonecutter unless entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:loom unless entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:smithing_table unless entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function vjf:villager/data/remove_offers
execute if block ~ ~ ~ minecraft:grindstone unless entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run function vjf:villager/data/remove_offers


# Give him the work station's profession
execute if block ~ ~ ~ minecraft:blast_furnace unless entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run function vjf:villager/profession/armorer
execute if block ~ ~ ~ minecraft:smoker unless entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run function vjf:villager/profession/butcher
execute if block ~ ~ ~ minecraft:cartography_table unless entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run function vjf:villager/profession/cartographer
execute if block ~ ~ ~ minecraft:brewing_stand unless entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run function vjf:villager/profession/cleric
execute if block ~ ~ ~ minecraft:composter unless entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run function vjf:villager/profession/farmer
execute if block ~ ~ ~ minecraft:barrel unless entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run function vjf:villager/profession/fisherman
execute if block ~ ~ ~ minecraft:fletching_table unless entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run function vjf:villager/profession/fletcher
execute if block ~ ~ ~ minecraft:cauldron unless entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run function vjf:villager/profession/leatherworker
execute if block ~ ~ ~ minecraft:lectern unless entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run function vjf:villager/profession/librarian
execute if block ~ ~ ~ minecraft:stonecutter unless entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run function vjf:villager/profession/mason
execute if block ~ ~ ~ minecraft:loom unless entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run function vjf:villager/profession/shepherd
execute if block ~ ~ ~ minecraft:smithing_table unless entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function vjf:villager/profession/toolsmith
execute if block ~ ~ ~ minecraft:grindstone unless entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run function vjf:villager/profession/weaponsmith


function vjf:entity/magma_cube/copy_data

tag @e[tag=vjf_workstation,distance=0,limit=1] add vjf_linked