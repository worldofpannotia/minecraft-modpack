######################### EXECUTING AS VILLAGER, POSITIONED AT WORKSTATION #########################

################## DEBUG ##################
#say Villager - Trade - Locked
################## DEBUG ##################

#function vjf:villager/data/prepare_and_run_copy_data

execute if block ~ ~ ~ minecraft:blast_furnace if entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:smoker if entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:cartography_table if entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:brewing_stand if entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:composter if entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:barrel if entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:fletching_table if entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:cauldron if entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:lectern if entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:stonecutter if entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:loom if entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:smithing_table if entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function vjf:villager/data/prepare_and_run_copy_data
execute if block ~ ~ ~ minecraft:grindstone if entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run function vjf:villager/data/prepare_and_run_copy_data

