execute as @a[predicate=vb:effectivenetherite/effect_check,predicate=!vb:effectivenetherite/armour_check] run effect clear @s minecraft:fire_resistance
execute as @a[gamemode=!creative,gamemode=!spectator,predicate=vb:effectivenetherite/armour_check] run effect give @s minecraft:fire_resistance infinite 10 true

# Loop
schedule function vb:effectivenetherite/effective_netherite 1s
