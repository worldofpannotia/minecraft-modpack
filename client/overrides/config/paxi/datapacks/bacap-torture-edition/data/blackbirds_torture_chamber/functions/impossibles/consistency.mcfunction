scoreboard objectives add consistency dummy
scoreboard players add @s consistency 1

advancement revoke @s only blackbirds_torture_chamber:technical/make_consistency_work
advancement grant @a[scores={consistency=500..}] only blackbirds_torture_chamber:stuff/consistency