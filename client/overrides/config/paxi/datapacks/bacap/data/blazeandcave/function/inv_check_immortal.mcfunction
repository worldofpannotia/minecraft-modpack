scoreboard players set @s bac_inv_check 0
scoreboard players set @s bac_inv_immortal 0

# Counts up how many items there are
execute store result score @s bac_inv_check if items entity @s inventory.* minecraft:totem_of_undying
scoreboard players operation @s bac_inv_immortal += @s bac_inv_check
execute store result score @s bac_inv_check if items entity @s hotbar.* minecraft:totem_of_undying
scoreboard players operation @s bac_inv_immortal += @s bac_inv_check
execute store result score @s bac_inv_check if items entity @s weapon.offhand minecraft:totem_of_undying
scoreboard players operation @s bac_inv_immortal += @s bac_inv_check

# If there are 37 totems, the player gets Immortal
execute if entity @s[scores={bac_inv_immortal=37..}] run advancement grant @s only blazeandcave:challenges/immortal