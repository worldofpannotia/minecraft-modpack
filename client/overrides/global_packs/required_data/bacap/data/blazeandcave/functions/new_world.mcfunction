# Function runs the first time BlazeandCave's Advancements Pack is loaded

scoreboard players set checking bac_settings 0
scoreboard players set adv_score bac_settings 0
scoreboard players set reward bac_settings 1
scoreboard players set exp bac_settings 1
scoreboard players set trophy bac_settings 1
scoreboard players set intro_msg bac_settings 1

scoreboard players set extra_reward bac_settings 0
scoreboard players set extra_trophy bac_settings 0

scoreboard players set bac_created bac_created 1

execute in the_end run gamerule announceAdvancements false 
execute in overworld run gamerule announceAdvancements false 
execute in the_nether run gamerule announceAdvancements false
