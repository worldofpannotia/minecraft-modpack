execute as @a[scores={complete_cubollection=1}] if entity @s[advancements={blackbirds_torture_chamber:technical/complete_cubollection_empty=true,blackbirds_torture_chamber:technical/complete_cubollection_non_empty=false}] run advancement grant @s only blackbirds_torture_chamber:stuff/complete_cubollection empty
advancement revoke @a[scores={complete_cubollection=1}] only blackbirds_torture_chamber:technical/complete_cubollection_non_empty
advancement revoke @a[scores={complete_cubollection=1}] only blackbirds_torture_chamber:technical/complete_cubollection_empty
scoreboard players set @s complete_cubollection 0
