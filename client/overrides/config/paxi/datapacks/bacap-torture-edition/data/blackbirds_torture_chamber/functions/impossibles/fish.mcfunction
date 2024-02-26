scoreboard objectives add fish_count dummy
scoreboard players add @s fish_count 1
advancement revoke @s only blackbirds_torture_chamber:stats/make_fish_work

advancement grant @s[scores={fish_count=100..}] only blackbirds_torture_chamber:stats/fish_100
advancement grant @s[scores={fish_count=1000..}] only blackbirds_torture_chamber:stats/fish_1000
advancement grant @s[scores={fish_count=10000..}] only blackbirds_torture_chamber:stats/fish_10000
advancement grant @s[scores={fish_count=100000..}] only blackbirds_torture_chamber:stats/fish_100k
advancement grant @s[scores={fish_count=1000000..}] only blackbirds_torture_chamber:stats/fish_1_mil
advancement grant @s[scores={fish_count=10000000..}] only blackbirds_torture_chamber:stats/fish_10_mil