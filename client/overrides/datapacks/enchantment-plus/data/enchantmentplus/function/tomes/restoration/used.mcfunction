# Revoke
advancement revoke @s only enchantmentplus:tomes/restoration

# Experience Requirement
execute store result score %Levels eplus.temp run xp query @s levels
execute store result score %Points eplus.temp run xp query @s points
scoreboard players set %Success eplus.temp 0
execute if score %Levels eplus.temp matches 19 if score %Points eplus.temp matches 7.. run scoreboard players add %Success eplus.temp 1
execute if score %Levels eplus.temp matches 20.. run scoreboard players add %Success eplus.temp 1
execute if entity @s[gamemode=creative] run scoreboard players add %Success eplus.temp 1
execute if score %Success eplus.temp matches 0 run return fail

# Repair Item
item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:damage":0}}

# Remove Tome
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Remove Experience
xp add @s[gamemode=!creative] -500 points

# Notification
tellraw @s {translate:"desc.enchantmentplus.tome_of_restoration.used",fallback:"Fully repaired the item successfully.",color:"green"}
playsound enchantmentplus:tome.restoration.used player @a
