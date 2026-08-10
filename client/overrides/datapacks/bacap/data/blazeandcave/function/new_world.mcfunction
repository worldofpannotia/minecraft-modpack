# Function runs the first time BlazeandCave's Advancements Pack is loaded

scoreboard players set checking bac_settings 0
scoreboard players set adv_score bac_settings 0
scoreboard players set reward bac_settings 1
scoreboard players set exp bac_settings 1
scoreboard players set trophy bac_settings 1
scoreboard players set intro_msg bac_settings 1

scoreboard players set extra_reward bac_settings 0
scoreboard players set extra_trophy bac_settings 0

scoreboard players set task bac_points 1
scoreboard players set goal bac_points 2
scoreboard players set challenge bac_points 5
scoreboard players set super_challenge bac_points 20
scoreboard players set milestone bac_points 50
scoreboard players set hidden bac_points 0
scoreboard players set advancement_legend bac_points 500

execute in the_end run gamerule show_advancement_messages false 
execute in overworld run gamerule show_advancement_messages false 
execute in the_nether run gamerule show_advancement_messages false

execute unless score bac_created bac_created matches 1 run function blazeandcave:global_install
scoreboard players set bac_created bac_created 1

