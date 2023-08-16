function blackbirds_torture_chamber:rewards/msg/stats/walk_10
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/out_for_a_stroll
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/out_for_a_stroll

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements