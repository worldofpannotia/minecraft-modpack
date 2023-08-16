function blackbirds_torture_chamber:rewards/msg/stuff/get_out_of_my_sky
execute if score trophy bac_settings matches 1 run function blackbirds_torture_chamber:rewards/trophy/stuff/get_out_of_my_sky
execute if score reward bac_settings matches 1 run function blackbirds_torture_chamber:rewards/reward/stuff/get_out_of_my_sky
execute if score exp bac_settings matches 1 run function blackbirds_torture_chamber:rewards/exp/stuff/get_out_of_my_sky

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements