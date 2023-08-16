scoreboard players set task bac_settings 0
scoreboard players set goal bac_settings 0
scoreboard players set challenge bac_settings 0
scoreboard players set super_challenge bac_settings 0
scoreboard players set milestone bac_settings 0

execute in the_end run gamerule announceAdvancements true
execute in overworld run gamerule announceAdvancements true
execute in the_nether run gamerule announceAdvancements true

function blazeandcave:config/msg_settings