scoreboard players set task bac_settings 0
scoreboard players set goal bac_settings 1
scoreboard players set challenge bac_settings 1
scoreboard players set super_challenge bac_settings 1
scoreboard players set milestone bac_settings 1

execute in the_end run gamerule announceAdvancements false
execute in overworld run gamerule announceAdvancements false 
execute in the_nether run gamerule announceAdvancements false

function blazeandcave:config/msg_settings