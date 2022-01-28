data merge entity @s {Silent:1b}
data merge entity @s {Item:{id:"minecraft:glass_bottle"}}
playsound block.brewing_stand.brew block @a ~ ~ ~
data merge entity @s {Invisible:1b, Silent:0b}

advancement revoke @a only vb:invisible_item_frames
