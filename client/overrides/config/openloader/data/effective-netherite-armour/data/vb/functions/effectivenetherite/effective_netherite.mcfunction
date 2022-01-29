# Clear effect if armour removed
execute as @a[nbt={ActiveEffects:[{Id:12b,Amplifier:10b}]},predicate=!pannotia:wearing_full_netherite] run effect clear @s minecraft:fire_resistance

# Fire Resistance when wearing full netherite armour
execute as @a[gamemode=!creative,gamemode=!spectator,predicate=pannotia:wearing_full_netherite] run effect give @s minecraft:fire_resistance 99999 10 true

# Loop
schedule function vb:effectivenetherite/effective_netherite 1s
