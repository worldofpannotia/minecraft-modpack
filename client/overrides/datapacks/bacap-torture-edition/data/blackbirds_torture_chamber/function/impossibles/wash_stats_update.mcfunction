execute as @s[advancements={blackbirds_torture_chamber:stats/wash_10000=false}] run scoreboard players set @s washing_total 0
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_10000=false}] run scoreboard players operation @s washing_total += @s washing_shulker
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_10000=false}] run scoreboard players operation @s washing_total += @s washing_banner
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_10000=false}] run scoreboard players operation @s washing_total += @s washing_armor

execute as @s[advancements={blackbirds_torture_chamber:stats/wash_10=false}] at @s if score @s washing_total matches 10.. run advancement grant @s only blackbirds_torture_chamber:stats/wash_10
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_50=false}] at @s if score @s washing_total matches 50.. run advancement grant @s only blackbirds_torture_chamber:stats/wash_50
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_250=false}] at @s if score @s washing_total matches 250.. run advancement grant @s only blackbirds_torture_chamber:stats/wash_250
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_1000=false}] at @s if score @s washing_total matches 1000.. run advancement grant @s only blackbirds_torture_chamber:stats/wash_1000
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_5000=false}] at @s if score @s washing_total matches 5000.. run advancement grant @s only blackbirds_torture_chamber:stats/wash_5000
execute as @s[advancements={blackbirds_torture_chamber:stats/wash_10000=false}] at @s if score @s washing_total matches 10000.. run advancement grant @s only blackbirds_torture_chamber:stats/wash_10000

advancement revoke @s[advancements={blackbirds_torture_chamber:stats/wash_10000=false}] only blackbirds_torture_chamber:technical/wash_stats
