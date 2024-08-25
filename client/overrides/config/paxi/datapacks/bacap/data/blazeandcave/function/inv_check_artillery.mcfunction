scoreboard players set @s bac_inv_check 0
scoreboard players set @s bac_inv_artillery 0

# Counts up how many items there are
# There are two commands because due to Minecraft insisting on exact components, there is an extra command for Multishot crossbows
execute store result score @s bac_inv_check if items entity @s hotbar.* minecraft:crossbow[minecraft:charged_projectiles=[{"id":"minecraft:arrow","count":1}]]
scoreboard players operation @s bac_inv_artillery += @s bac_inv_check
execute store result score @s bac_inv_check if items entity @s hotbar.* minecraft:crossbow[minecraft:charged_projectiles=[{"id":"minecraft:arrow","count":1},{"id":"minecraft:arrow","count":1,"components":{"minecraft:intangible_projectile":{}}},{"id":"minecraft:arrow","count":1,"components":{"minecraft:intangible_projectile":{}}}]]
scoreboard players operation @s bac_inv_artillery += @s bac_inv_check

# If there are 9 loaded crossbows, the player gets Artillery
execute if entity @s[scores={bac_inv_artillery=9..}] run advancement grant @s only blazeandcave:weaponry/artillery