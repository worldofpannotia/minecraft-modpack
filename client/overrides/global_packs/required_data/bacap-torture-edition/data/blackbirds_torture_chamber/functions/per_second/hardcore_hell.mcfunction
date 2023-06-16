scoreboard objectives add hardcore_hell dummy
scoreboard objectives add hardcore_hell2 dummy
scoreboard objectives add hardcore_armor armor
scoreboard objectives add active_effects dummy
execute store result score @s active_effects run execute if entity @s[nbt={ActiveEffects:[{}]}]
execute as @a if score @s bac_health matches 1 run scoreboard players add @s hardcore_hell 1
execute as @a if score @s bac_health matches 1 run scoreboard players add @s hardcore_hell2 1
execute as @a run scoreboard players set @s[scores={active_effects=1..}] hardcore_hell2 0
execute as @a run scoreboard players set @s[scores={hardcore_armor=1..}] hardcore_hell 0
execute as @a run scoreboard players set @s[scores={hardcore_armor=1..}] hardcore_hell2 0
execute as @a run advancement grant @s[scores={hardcore_hell=3600..}] only blackbirds_torture_chamber:stuff/hardcore_hell
execute as @a run advancement grant @s[scores={hardcore_hell2=21600..}] only blackbirds_torture_chamber:stuff/hardcore_hell_2