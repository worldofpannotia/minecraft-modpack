scoreboard objectives add cure_zillagers dummy
scoreboard players add @s cure_zillagers 1

advancement revoke @s only blackbirds_torture_chamber:technical/cure_zillagers

advancement grant @a[scores={cure_zillagers=10000..}] only blackbirds_torture_chamber:stuff/we_were_bad_but_now_were_good