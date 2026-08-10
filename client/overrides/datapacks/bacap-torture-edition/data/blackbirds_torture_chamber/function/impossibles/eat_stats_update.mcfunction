execute as @s[advancements={blackbirds_torture_chamber:stats/eat_25k=false}] at @s if score @s bac_stat_food matches 25000.. run advancement grant @s only blackbirds_torture_chamber:stats/eat_25k
execute as @s[advancements={blackbirds_torture_chamber:stats/eat_50k=false}] at @s if score @s bac_stat_food matches 50000.. run advancement grant @s only blackbirds_torture_chamber:stats/eat_50k
execute as @s[advancements={blackbirds_torture_chamber:stats/eat_100k=false}] at @s if score @s bac_stat_food matches 100000.. run advancement grant @s only blackbirds_torture_chamber:stats/eat_100k

advancement revoke @s[advancements={blackbirds_torture_chamber:stats/eat_100k=false}] only blackbirds_torture_chamber:technical/eat_stats
