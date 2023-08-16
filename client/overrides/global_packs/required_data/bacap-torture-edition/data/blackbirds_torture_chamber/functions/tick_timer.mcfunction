# Hardcore Hell check for health / armor / effects
execute as @a unless score @s bac_health matches 1 run scoreboard players set @s hardcore_hell 0
execute as @a unless score @s bac_health matches 1 run scoreboard players set @s hardcore_hell2 0
execute as @a if score @s hardcore_armor matches 1.. run scoreboard players set @s hardcore_hell 0
execute as @a if score @s hardcore_armor matches 1.. run scoreboard players set @s hardcore_hell2 0
execute as @a if data entity @s ActiveEffects run scoreboard players set @s hardcore_hell2 0

# Must Find Land check if not in water
execute as @a unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run scoreboard players set @s must_find_land 0
execute as @a at @s unless block ~ ~ ~ water unless block ~ ~ ~ kelp unless block ~ ~ ~ seagrass unless block ~ ~ ~ tall_seagrass run scoreboard players set @s must_find_land 0

# Interactable trophies
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/candle_of_darkness
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/actual_lucky_charm
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/batbow
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/villager_nose
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/ya_like_jazz
execute if score interactable_trophies bac_settings matches 1 as @a[nbt={Inventory:[{tag:{HeavenlyBell:1}}]}] run playsound minecraft:block.bell.use block @s ~ ~ ~ 100 1
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/youngling_slayer


# Friends?
scoreboard objectives add friends dummy
execute as @a store result score @s friends run execute if entity @e
