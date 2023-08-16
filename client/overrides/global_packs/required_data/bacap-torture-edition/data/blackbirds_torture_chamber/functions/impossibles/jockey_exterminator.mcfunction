scoreboard objectives add jockey_exterminator dummy
scoreboard players add @s jockey_exterminator 1

advancement revoke @s only blackbirds_torture_chamber:technical/make_jockey_exterminator_work

advancement grant @a[scores={jockey_exterminator=500..}] only blackbirds_torture_chamber:stuff/jockey_exterminator