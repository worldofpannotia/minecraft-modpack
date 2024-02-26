function blackbirds_torture_chamber:rewards/msg/stuff/storage_upgrade_required
execute if score trophy bac_settings matches 1 run function blackbirds_torture_chamber:rewards/trophy/stuff/storage_upgrade_required
execute if score reward bac_settings matches 1 run function blackbirds_torture_chamber:rewards/reward/stuff/storage_upgrade_required
execute if score exp bac_settings matches 1 run function blackbirds_torture_chamber:rewards/exp/stuff/storage_upgrade_required

scoreboard players add @s torture_advancements 1

scoreboard players set @s bac_and_torture_advancements 0
scoreboard players operation @s bac_and_torture_advancements += @s bac_advancements
scoreboard players operation @s bac_and_torture_advancements += @s torture_advancements