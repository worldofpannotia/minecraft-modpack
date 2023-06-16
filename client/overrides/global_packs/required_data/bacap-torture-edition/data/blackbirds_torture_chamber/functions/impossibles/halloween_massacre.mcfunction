scoreboard objectives add halloween_count dummy
scoreboard players add @s halloween_count 1

advancement revoke @s only blackbirds_torture_chamber:stuff/make_halloween_work

advancement grant @a[scores={halloween_count=1000..}] only blackbirds_torture_chamber:stuff/halloween_massacre