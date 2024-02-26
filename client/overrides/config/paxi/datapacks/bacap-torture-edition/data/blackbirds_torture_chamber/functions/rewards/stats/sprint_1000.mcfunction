function blackbirds_torture_chamber:rewards/msg/stats/sprint_1000
execute if score trophy bac_settings matches 1 run function blackbirds_torture_chamber:rewards/trophy/stats/sprint_1000
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/your_legs_must_be_tired
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/your_legs_must_be_tired

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements