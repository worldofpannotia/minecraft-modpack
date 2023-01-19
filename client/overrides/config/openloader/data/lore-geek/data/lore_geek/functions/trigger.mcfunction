execute at @s run data modify entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..5] Item.tag.display.Lore set from entity @s SelectedItem.tag.pages
scoreboard players reset @s AddLore