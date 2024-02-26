function blackbirds_torture_chamber:rewards/msg/stats/1000_totems
execute if score trophy bac_settings matches 1 run function blackbirds_torture_chamber:rewards/trophy/stats/1000_totems
execute if score reward bac_settings matches 1 run function blackbirds_torture_chamber:rewards/reward/stats/1000_totems
execute if score exp bac_settings matches 1 run function blackbirds_torture_chamber:rewards/exp/stats/1000_totems

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements