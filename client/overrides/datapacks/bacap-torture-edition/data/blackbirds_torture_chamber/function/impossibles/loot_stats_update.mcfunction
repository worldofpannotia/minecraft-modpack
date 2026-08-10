execute as @s[advancements={blackbirds_torture_chamber:stats/loot_1000=false}] at @s if score @s bac_stat_loot_chest matches 1000.. run advancement grant @s only blackbirds_torture_chamber:stats/loot_1000
execute as @s[advancements={blackbirds_torture_chamber:stats/loot_5000=false}] at @s if score @s bac_stat_loot_chest matches 5000.. run advancement grant @s only blackbirds_torture_chamber:stats/loot_5000
execute as @s[advancements={blackbirds_torture_chamber:stats/loot_10000=false}] at @s if score @s bac_stat_loot_chest matches 10000.. run advancement grant @s only blackbirds_torture_chamber:stats/loot_10000

advancement revoke @s[advancements={blackbirds_torture_chamber:stats/loot_10000=false}] only blackbirds_torture_chamber:technical/loot_stats
