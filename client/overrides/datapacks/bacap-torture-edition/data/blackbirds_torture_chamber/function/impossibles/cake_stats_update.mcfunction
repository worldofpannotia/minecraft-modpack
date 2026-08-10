execute as @s[advancements={blackbirds_torture_chamber:stuff/gluttonous=false}] at @s if score @s cake_stats_count matches 70000.. run advancement grant @s only blackbirds_torture_chamber:stuff/gluttonous

advancement revoke @s[advancements={blackbirds_torture_chamber:stuff/gluttonous=false}] only blackbirds_torture_chamber:technical/cake_stats
