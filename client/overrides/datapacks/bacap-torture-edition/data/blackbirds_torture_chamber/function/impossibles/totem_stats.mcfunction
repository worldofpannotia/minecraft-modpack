scoreboard players add @s totem_used_stats 1

execute as @s[advancements={blackbirds_torture_chamber:stats/totem_10=false}] at @s if score @s totem_used_stats matches 10.. run advancement grant @s only blackbirds_torture_chamber:stats/totem_10
execute as @s[advancements={blackbirds_torture_chamber:stats/totem_50=false}] at @s if score @s totem_used_stats matches 50.. run advancement grant @s only blackbirds_torture_chamber:stats/totem_50
execute as @s[advancements={blackbirds_torture_chamber:stats/totem_100=false}] at @s if score @s totem_used_stats matches 100.. run advancement grant @s only blackbirds_torture_chamber:stats/totem_100
execute as @s[advancements={blackbirds_torture_chamber:stats/totem_500=false}] at @s if score @s totem_used_stats matches 500.. run advancement grant @s only blackbirds_torture_chamber:stats/totem_500
execute as @s[advancements={blackbirds_torture_chamber:stats/totem_1000=false}] at @s if score @s totem_used_stats matches 1000.. run advancement grant @s only blackbirds_torture_chamber:stats/totem_1000
execute as @s[advancements={blackbirds_torture_chamber:stats/totem_5000=false}] at @s if score @s totem_used_stats matches 5000.. run advancement grant @s only blackbirds_torture_chamber:stats/totem_5000

execute as @s[advancements={blackbirds_torture_chamber:stats/totem_5000=false}] at @s run advancement revoke @s only blackbirds_torture_chamber:technical/use_totem
