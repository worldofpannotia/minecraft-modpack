summon area_effect_cloud ^10 ^ ^ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["villagernoseaec","firstaec"]}
data modify entity @e[type=area_effect_cloud,tag=firstaec,sort=nearest,limit=1] Owner set from entity @s UUID
tag @e[type=area_effect_cloud] remove firstaec
scoreboard players add step spawn_aec 1
execute if score step spawn_aec matches ..24 rotated ~15 0 run function blackbirds_torture_chamber:interactable_trophies/spawn_aec
scoreboard players set step spawn_aec 0