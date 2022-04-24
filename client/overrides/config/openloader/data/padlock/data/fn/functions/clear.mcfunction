execute as @e[tag=padlock] at @s run function fn:padlock/remove

kill @e[type=item,nbt={Item:{tag:{CustomModelData:4765872}}}]
kill @e[type=item,nbt={Item:{tag:{CustomModelData:476587201}}}]

clear @a #fn:padlock_stuff{CustomModelData:4765872}
clear @a #fn:padlock_stuff{CustomModelData:476587201}

scoreboard players set %toAttach Key 1
