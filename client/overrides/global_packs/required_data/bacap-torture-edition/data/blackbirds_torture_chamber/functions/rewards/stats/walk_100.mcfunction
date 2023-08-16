function blackbirds_torture_chamber:rewards/msg/stats/walk_100
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/who_needs_cars
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/who_needs_cars

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements