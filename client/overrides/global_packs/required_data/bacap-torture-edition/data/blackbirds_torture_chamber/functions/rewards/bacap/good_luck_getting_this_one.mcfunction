function blackbirds_torture_chamber:rewards/msg/bacap/good_luck_getting_this_one
execute if score trophy bac_settings matches 1 run function bc_rewards:trophy/end/good_luck_getting_this_one
execute if score reward bac_settings matches 1 run function bc_rewards:reward/end/good_luck_getting_this_one
execute if score exp bac_settings matches 1 run function bc_rewards:exp/end/good_luck_getting_this_one

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements