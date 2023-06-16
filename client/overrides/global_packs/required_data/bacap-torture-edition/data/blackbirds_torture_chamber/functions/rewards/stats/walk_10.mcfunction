function blackbirds_torture_chamber:rewards/msg/stats/walk_10
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/out_for_a_stroll
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/out_for_a_stroll