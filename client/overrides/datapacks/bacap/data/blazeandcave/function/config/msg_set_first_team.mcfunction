scoreboard players set task bac_settings -2
scoreboard players set goal bac_settings -2
scoreboard players set challenge bac_settings -2
scoreboard players set super_challenge bac_settings -2
scoreboard players set milestone bac_settings -2
scoreboard players set hidden bac_settings -2

execute in the_end run gamerule show_advancement_messages false
execute in overworld run gamerule show_advancement_messages false 
execute in the_nether run gamerule show_advancement_messages false

function blazeandcave:config/msg_settings
