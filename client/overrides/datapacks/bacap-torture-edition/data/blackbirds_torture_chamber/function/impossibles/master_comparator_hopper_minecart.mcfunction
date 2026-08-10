execute at @e[type=hopper_minecart,distance=..5] if block ~ ~ ~ detector_rail if block ~ ~ ~1 comparator[facing=north] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator hopper_minecart
execute at @e[type=hopper_minecart,distance=..5] if block ~ ~ ~ detector_rail if block ~ ~ ~-1 comparator[facing=south] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator hopper_minecart
execute at @e[type=hopper_minecart,distance=..5] if block ~ ~ ~ detector_rail if block ~1 ~ ~ comparator[facing=west] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator hopper_minecart
execute at @e[type=hopper_minecart,distance=..5] if block ~ ~ ~ detector_rail if block ~-1 ~ ~ comparator[facing=east] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator hopper_minecart

advancement revoke @s only blackbirds_torture_chamber:technical/master_comparator_hopper_minecart
