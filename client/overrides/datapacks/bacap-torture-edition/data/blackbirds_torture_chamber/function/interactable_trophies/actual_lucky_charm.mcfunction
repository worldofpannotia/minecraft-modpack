execute as @a[predicate=blackbirds_torture_chamber:actual_lucky_charm] run tag @s add lucky_charm
execute as @a[predicate=blackbirds_torture_chamber:actual_lucky_charm_offhand] run tag @s add lucky_charm

effect give @a[tag=lucky_charm] luck 3 0

execute as @a[predicate=!blackbirds_torture_chamber:actual_lucky_charm,predicate=!blackbirds_torture_chamber:actual_lucky_charm_offhand] run tag @s remove lucky_charm
