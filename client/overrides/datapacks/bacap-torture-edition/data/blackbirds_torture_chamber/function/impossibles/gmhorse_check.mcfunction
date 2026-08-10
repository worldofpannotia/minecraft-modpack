execute store result score @s te_horse_speed on vehicle run attribute @s minecraft:movement_speed get 10000
execute store result score @s te_horse_health on vehicle run attribute @s minecraft:max_health get 100
execute store result score @s te_horse_jump on vehicle run attribute @s minecraft:jump_strength get 1000

execute if entity @s[advancements={blackbirds_torture_chamber:stuff/gmhorse=false}] if score @s te_horse_health matches 2975.. if score @s te_horse_speed matches 3358.. if score @s te_horse_jump matches 995.. run advancement grant @s only blackbirds_torture_chamber:stuff/gmhorse

execute as @a[advancements={blackbirds_torture_chamber:stuff/gmhorse=false}] run advancement revoke @s only blackbirds_torture_chamber:technical/make_gmhorse_work
