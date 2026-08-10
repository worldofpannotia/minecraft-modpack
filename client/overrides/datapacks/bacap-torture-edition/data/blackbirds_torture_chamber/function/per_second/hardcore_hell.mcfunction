execute as @a[predicate=blackbirds_torture_chamber:any_effects] run tag @s add has_effects
execute as @a[predicate=!blackbirds_torture_chamber:any_effects] run tag @s remove has_effects

execute as @a if score @s bac_health matches 1 run scoreboard players add @s hardcore_hell 1
execute as @a if score @s bac_health matches 1 run scoreboard players add @s hardcore_hell2 1
execute as @a run scoreboard players set @s[tag=has_effects] hardcore_hell2 0
execute as @a run scoreboard players set @s[scores={hardcore_armor=1..}] hardcore_hell 0
execute as @a run scoreboard players set @s[scores={hardcore_armor=1..}] hardcore_hell2 0
execute as @a run advancement grant @s[scores={hardcore_hell=3600..}] only blackbirds_torture_chamber:stuff/hardcore_hell
execute as @a run advancement grant @s[scores={hardcore_hell2=21600..}] only blackbirds_torture_chamber:stuff/hardcore_hell_2
