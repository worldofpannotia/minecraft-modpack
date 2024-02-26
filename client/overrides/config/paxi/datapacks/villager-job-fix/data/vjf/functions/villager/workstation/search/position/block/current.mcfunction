######################### EXECUTING AS VILLAGER, POSITIONED AT WORK STATION #########################

################## DEBUG ##################
#say Villager - Workstation - Search - Current Block
#effect give @e[type=magma_cube] minecraft:glowing 5 1
################## DEBUG ##################

execute if block ~ ~ ~ minecraft:blast_furnace run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:smoker run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:cartography_table run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:brewing_stand run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:composter run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:barrel run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:fletching_table run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:cauldron run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:lectern run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:stonecutter run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:loom run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:smithing_table run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ minecraft:grindstone run function vjf:entity/magma_cube/summon
