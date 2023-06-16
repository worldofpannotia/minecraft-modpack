scoreboard objectives add suffer2 dummy
scoreboard players add @s suffer2 1

advancement revoke @s only blackbirds_torture_chamber:stuff/suffer2_technical
advancement grant @a[scores={suffer2=64..}] only blackbirds_torture_chamber:stuff/suffer2