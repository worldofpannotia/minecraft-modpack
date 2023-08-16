scoreboard objectives add suffer dummy
scoreboard players add @s suffer 1

advancement revoke @s only blackbirds_torture_chamber:technical/suffer_technical
advancement grant @a[scores={suffer=64..}] only blackbirds_torture_chamber:stuff/suffer