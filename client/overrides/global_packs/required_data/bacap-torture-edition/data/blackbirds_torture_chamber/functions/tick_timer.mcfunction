# Hardcore Hell check for health / armor / effects
execute as @a unless score @s bac_health matches 1 run scoreboard players set @s hardcore_hell 0
execute as @a unless score @s bac_health matches 1 run scoreboard players set @s hardcore_hell2 0
execute as @a if score @s hardcore_armor matches 1.. run scoreboard players set @s hardcore_hell 0
execute as @a if score @s hardcore_armor matches 1.. run scoreboard players set @s hardcore_hell2 0
execute as @a if data entity @s ActiveEffects run scoreboard players set @s hardcore_hell2 0

# Must Find Land check if not in water
execute as @a unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run scoreboard players set @s must_find_land 0
execute as @a at @s unless block ~ ~ ~ water unless block ~ ~ ~ kelp unless block ~ ~ ~ seagrass unless block ~ ~ ~ tall_seagrass run scoreboard players set @s must_find_land 0

# Candle of Darkness
execute if score candle_of_darkness bac_settings matches 1 run function blackbirds_torture_chamber:candle_of_darkness

# Actual Lucky Charm
execute if score actual_lucky_charm bac_settings matches 1 run function blackbirds_torture_chamber:actual_lucky_charm

# Friends?
scoreboard objectives add friends dummy
execute as @a store result score @s friends run execute if entity @e
