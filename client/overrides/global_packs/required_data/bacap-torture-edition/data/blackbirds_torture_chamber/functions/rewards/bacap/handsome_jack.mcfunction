function blackbirds_torture_chamber:rewards/msg/bacap/handsome_jack
execute if score trophy bac_settings matches 1 run function bc_rewards:trophy/monsters/handsome_jack
execute if score reward bac_settings matches 1 run function bc_rewards:reward/monsters/handsome_jack
execute if score exp bac_settings matches 1 run function bc_rewards:exp/monsters/handsome_jack

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements