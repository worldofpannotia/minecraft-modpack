function blackbirds_torture_chamber:rewards/msg/stats/sprint_42
execute if score reward bac_settings matches 1 run function bc_rewards:reward/statistics/natural_sprinter
execute if score exp bac_settings matches 1 run function bc_rewards:exp/statistics/natural_sprinter