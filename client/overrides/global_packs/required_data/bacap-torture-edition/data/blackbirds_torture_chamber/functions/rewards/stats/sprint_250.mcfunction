function blackbirds_torture_chamber:rewards/msg/stats/sprint_250
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/marathon
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/marathon