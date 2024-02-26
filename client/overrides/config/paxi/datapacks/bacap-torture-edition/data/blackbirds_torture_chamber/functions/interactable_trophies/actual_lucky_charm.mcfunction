execute as @a[nbt={Inventory:[{tag:{LuckyCharm:1}}]}] run tag @s add lucky_charm

effect give @a[tag=lucky_charm] luck 3 0

execute as @a[nbt=!{Inventory:[{tag:{LuckyCharm:1}}]}] run tag @s remove lucky_charm