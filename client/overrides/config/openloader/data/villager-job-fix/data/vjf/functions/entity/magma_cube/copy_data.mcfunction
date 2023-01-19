######################### EXECUTING AS VILLAGER, POSITIONED AT WORK STATION #########################

################### DEBUG ###################
#say Entity - Magma Cube - Copy Data
################### DEBUG ###################

# say Copying Shulker position to Villager's brain
data modify entity @s Brain.memories.minecraft:job_site.value.pos[0] set from entity @e[tag=vjf_workstation,limit=1,distance=0] Pos[0]
data modify entity @s Brain.memories.minecraft:job_site.value.pos[1] set from entity @e[tag=vjf_workstation,limit=1,distance=0] Pos[1]
data modify entity @s Brain.memories.minecraft:job_site.value.pos[2] set from entity @e[tag=vjf_workstation,limit=1,distance=0] Pos[2]

function vjf:villager/team/join
function vjf:villager/linked/set

tag @e[tag=vjf_workstation,distance=0,limit=1] add vjf_linked