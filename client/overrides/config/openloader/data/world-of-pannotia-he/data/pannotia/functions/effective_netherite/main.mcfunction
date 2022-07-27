## Credit goes to VoodooBeard for the original idea of this function

# Clear effect if armor removed
execute as @a[nbt={ActiveEffects:[{Id:12b,Amplifier:10b}]},predicate=!pannotia:wearing_full_netherite] run effect clear @s minecraft:fire_resistance

# Fire Resistance when wearing full netherite armor
execute as @a[gamemode=!creative,gamemode=!spectator,predicate=pannotia:wearing_full_netherite] run effect give @s minecraft:fire_resistance 99999 10 true

# Loop
schedule function pannotia:effective_netherite/main 1s
