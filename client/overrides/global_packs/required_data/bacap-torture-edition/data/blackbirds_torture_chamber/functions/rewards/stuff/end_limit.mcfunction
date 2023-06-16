function blackbirds_torture_chamber:rewards/msg/stuff/end_limit
execute if score trophy bac_settings matches 1 run function blackbirds_torture_chamber:rewards/trophy/stuff/end_limit
execute if score reward bac_settings matches 1 run function blackbirds_torture_chamber:rewards/reward/stuff/end_limit
execute if score exp bac_settings matches 1 run function blackbirds_torture_chamber:rewards/exp/stuff/end_limit