# Temporary Marker
execute facing entity @n[tag=eplus.shield_slam_user] feet run summon minecraft:marker ^ ^ ^2 {Tags:["eplus.shield_slam_marker"]}

# Calculate Knockback
execute store result score %PlayerX eplus.temp run data get entity @s Pos[0] 100
execute store result score %PlayerZ eplus.temp run data get entity @s Pos[2] 100
execute store result score %TargetX eplus.temp as @n[type=marker,tag=eplus.shield_slam_marker] run data get entity @s Pos[0] 100
execute store result score %TargetZ eplus.temp as @n[type=marker,tag=eplus.shield_slam_marker] run data get entity @s Pos[2] 100
scoreboard players operation %TargetX eplus.temp -= %PlayerX eplus.temp
scoreboard players operation %TargetZ eplus.temp -= %PlayerZ eplus.temp

# Apply Knockback
execute store result entity @s Motion[0] double -0.01 run scoreboard players get %TargetX eplus.temp
data modify entity @s Motion[1] set value 0.5d
execute store result entity @s Motion[2] double -0.01 run scoreboard players get %TargetZ eplus.temp

# Remove Marker
kill @e[type=minecraft:marker,tag=eplus.shield_slam_marker]
