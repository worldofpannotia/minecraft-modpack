execute as @a[predicate=blackbirds_torture_chamber:youngling_slayer_check] run tag @s add youngling_slayer
execute as @a[predicate=blackbirds_torture_chamber:youngling_slayer_check_offhand] run tag @s add youngling_slayer

execute as @a[predicate=!blackbirds_torture_chamber:youngling_slayer_check,predicate=!blackbirds_torture_chamber:youngling_slayer_check_offhand] run tag @s remove youngling_slayer

execute at @a run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace light
execute at @a[tag=youngling_slayer] run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 light[level=7] replace air
execute at @a[tag=youngling_slayer] run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 light[level=7] replace cave_air
execute at @a[tag=youngling_slayer] run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 light[level=7] replace void_air