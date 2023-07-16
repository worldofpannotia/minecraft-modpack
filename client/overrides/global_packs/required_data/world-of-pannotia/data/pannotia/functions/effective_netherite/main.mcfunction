## Credit goes to VoodooBeard for this function

# Clear effect if armour removed
execute as @a[nbt={ActiveEffects:[{Id:12,Amplifier:10b}]},nbt=!{Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b},{Slot:101b,id:"minecraft:netherite_leggings",Count:1b},{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b},{Slot:103b,id:"minecraft:netherite_helmet",Count:1b}]}] run effect clear @s minecraft:fire_resistance
execute as @a[nbt={ActiveEffects:[{Id:12,Amplifier:10b}]},nbt=!{Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b},{Slot:101b,id:"minecraft:netherite_leggings",Count:1b},{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{isPlated:1b,Plate:"netherite"}},{Slot:103b,id:"minecraft:netherite_helmet",Count:1b}]}] run effect clear @s minecraft:fire_resistance

# Fire Resistance when wearing full netherite armour
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b},{Slot:101b,id:"minecraft:netherite_leggings",Count:1b},{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b},{Slot:103b,id:"minecraft:netherite_helmet",Count:1b}]}] run effect give @s minecraft:fire_resistance infinite 10 true
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b},{Slot:101b,id:"minecraft:netherite_leggings",Count:1b},{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{isPlated:1b,Plate:"netherite"}},{Slot:103b,id:"minecraft:netherite_helmet",Count:1b}]}] run effect give @s minecraft:fire_resistance infinite 10 true

# Loop
schedule function pannotia:effective_netherite/main 1s
