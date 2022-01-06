#Door
execute at @s[tag=closed] unless block ~ ~ ~ iron_bars run kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars",Count:1b}},limit=1,sort=nearest]
execute at @s[tag=closed] unless block ~ ~1 ~ iron_bars run kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars",Count:1b}},limit=1,sort=nearest]
execute at @s[tag=closed] run fill ~ ~ ~ ~ ~1 ~ iron_bars

#Accesibility
execute if entity @a[nbt={SelectedItem:{id:"minecraft:clock",tag:{key:1}}}] run data merge entity @s {Marker:0}
execute if entity @a[nbt=!{SelectedItem:{id:"minecraft:clock",tag:{key:1}}}] run data merge entity @s {Marker:1}

#Checking compatibility
execute store result score @s Key run data get entity @s ArmorItems[3].tag.Key
execute store result score @s Input run data get entity @s HandItems[0].tag.Id

#Key Definition
execute if entity @s[nbt={HandItems:[{id:"minecraft:clock",Count:1b}]}] if score @s Key matches 0 if score @s Input matches 0 at @s run function fn:padlock/definition

#Denying and unlocking

execute if entity @s[tag=opened,nbt={HandItems:[{tag:{key:1}}]}] if score @s Key = @s Input unless score @s Key matches 0 at @s run function fn:padlock/close
execute if entity @s[tag=closed,nbt={HandItems:[{tag:{key:1}}]}] if score @s Key = @s Input unless score @s Key matches 0 at @s run function fn:padlock/open

execute if entity @s[nbt={HandItems:[{id:"minecraft:clock",Count:1b}]}] unless score @s Key = @s Input at @s run function fn:padlock/lock
data merge entity @s {HandItems:[{},{}]}
