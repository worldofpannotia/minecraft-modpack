function blackbirds_torture_chamber:rewards/msg/stats/walk_100
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/who_needs_cars
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/who_needs_cars