function blackbirds_torture_chamber:rewards/msg/stuff/there_has_to_be_another_way_2
execute if score trophy bac_settings matches 1 run function blackbirds_torture_chamber:rewards/trophy/stuff/there_has_to_be_another_way_2
execute if score reward bac_settings matches 1 run function blackbirds_torture_chamber:rewards/reward/stuff/there_has_to_be_another_way_2
execute if score exp bac_settings matches 1 run function blackbirds_torture_chamber:rewards/exp/stuff/there_has_to_be_another_way_2

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements