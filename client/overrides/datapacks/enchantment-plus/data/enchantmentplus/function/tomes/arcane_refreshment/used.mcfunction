# Revoke
advancement revoke @s only enchantmentplus:tomes/arcane_refreshment

# Experience Requirement
execute store result score %Levels eplus.temp run xp query @s levels
execute store result score %Points eplus.temp run xp query @s points
scoreboard players set %Success eplus.temp 0
execute if score %Levels eplus.temp matches 22 if score %Points eplus.temp matches 71.. run scoreboard players add %Success eplus.temp 1
execute if score %Levels eplus.temp matches 23.. run scoreboard players add %Success eplus.temp 1
execute if entity @s[gamemode=creative] run scoreboard players add %Success eplus.temp 1
execute if score %Success eplus.temp matches 0 run return fail

# Reset Repair Cost
item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:repair_cost":0}}

# Remove Tome
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Remove Experience
xp add @s[gamemode=!creative] -750 points

# Notification
tellraw @s {translate:"desc.enchantmentplus.tome_of_arcane_refreshment.used",fallback:"Successfully reset the repair cost of the item.",color:"green"}
playsound enchantmentplus:tome.arcane_refreshment.used player @a
