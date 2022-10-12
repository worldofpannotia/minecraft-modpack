######################### EXECUTING AS VILLAGER, POSITIONED AT WORK STATION #########################

################### DEBUG ###################
#say Entity - Magma Cube - Summon
################### DEBUG ###################

summon minecraft:magma_cube ~ ~ ~ {Tags:["vjf_entity","vjf_workstation","vjf_0"],Attributes:[{Base:1000,Name:"generic.max_health"}],Health:1000,Size:1,NoAI:1,Silent:1,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}

execute as @p[distance=..25,tag=vjf_source,limit=1] run function vjf:player/color_change
execute as @e[tag=vjf_workstation,tag=!vjf_on_team,distance=0,limit=1] run function vjf:entity/magma_cube/team/find_player

function vjf:villager/trade/check_if_already_traded