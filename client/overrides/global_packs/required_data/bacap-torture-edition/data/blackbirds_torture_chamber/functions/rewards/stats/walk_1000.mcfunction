function blackbirds_torture_chamber:rewards/msg/stats/walk_1000
execute if score trophy bac_settings matches 1 run function blackbirds_torture_chamber:rewards/trophy/stats/walk_1000
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/i_enjoy_long_walks_and_playing_minecraft
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/i_enjoy_long_walks_and_playing_minecraft

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements