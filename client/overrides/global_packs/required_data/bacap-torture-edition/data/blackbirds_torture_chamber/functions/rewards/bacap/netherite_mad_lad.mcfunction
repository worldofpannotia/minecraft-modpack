function blackbirds_torture_chamber:rewards/msg/bacap/netherite_mad_lad
execute if score trophy bac_settings matches 1 run function bc_rewards:trophy/nether/netherite_mad_lad
execute if score reward bac_settings matches 1 run function bc_rewards:reward/nether/netherite_mad_lad
execute if score exp bac_settings matches 1 run function bc_rewards:exp/nether/netherite_mad_lad

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements