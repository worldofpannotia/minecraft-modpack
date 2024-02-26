function blackbirds_torture_chamber:rewards/msg/stats/swim_250
execute if score reward bac_settings matches 1 run function blackbirds_torture_chamber:rewards/reward/stats/swim_250
execute if score exp bac_settings matches 1 run function blackbirds_torture_chamber:rewards/exp/stats/swim_250

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements