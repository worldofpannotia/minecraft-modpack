scoreboard objectives add splat dummy
scoreboard objectives add splat2 dummy
scoreboard objectives add splat_death deathCount
scoreboard objectives add fall_distance dummy

execute as @a run execute store result score @s fall_distance run data get entity @s FallDistance 1
execute as @a run scoreboard players set @s[scores={fall_distance=1000..}] splat 1
execute as @a run scoreboard players set @s[scores={fall_distance=100000..}] splat2 1

advancement grant @a[scores={splat=1,splat_death=1}] only blackbirds_torture_chamber:stuff/splat
advancement grant @a[scores={splat2=1,splat_death=1}] only blackbirds_torture_chamber:stuff/splat2

execute as @a if entity @s[scores={fall_distance=900..1100}] run schedule function blackbirds_torture_chamber:per_second/splat 1t
execute as @a if entity @s[scores={fall_distance=99900..100100}] run schedule function blackbirds_torture_chamber:per_second/splat 1t

execute as @a if entity @s[nbt={OnGround:0b},scores={fall_distance=..1000}] run scoreboard players set @s splat_death 0

execute as @a run scoreboard players set @s[scores={fall_distance=..1000}] splat 0
execute as @a run scoreboard players set @s[scores={fall_distance=..100000}] splat2 0