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

# Support for More Villagers professions
execute if block ~ ~ ~ morevillagers:oceanography_table run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ morevillagers:woodworking_table run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ morevillagers:decayed_workbench run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ morevillagers:purpur_altar run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ morevillagers:blueprint_table run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ morevillagers:gardening_table run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ morevillagers:hunting_post run function vjf:entity/magma_cube/summon
execute if block ~ ~ ~ morevillagers:mining_bench run function vjf:entity/magma_cube/summon
