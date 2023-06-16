execute as @a[predicate=blackbirds_torture_chamber:lucky_charm_check] run tag @s add lucky_charm
execute as @a[predicate=blackbirds_torture_chamber:lucky_charm_check_offhand] run tag @s add lucky_charm
effect give @a[tag=lucky_charm] luck 3 0
execute as @a[predicate=!blackbirds_torture_chamber:lucky_charm_check,predicate=!blackbirds_torture_chamber:lucky_charm_check_offhand] run tag @s remove lucky_charm