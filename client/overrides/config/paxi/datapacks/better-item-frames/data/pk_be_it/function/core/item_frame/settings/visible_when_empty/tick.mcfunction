#> pk_be_it:core/item_frame/settings/visible_when_empty/tick

# Turning back item frames visible if they don't have any item
execute as @e[type=#pk_be_it:item_frames,tag=pk.be_it.invisible] unless items entity @s container.0 * at @s run function pk_be_it:core/item_frame/settings/visible_when_empty/unveil
execute as @e[type=#pk_be_it:item_frames,tag=pk.be_it.unveiled] if items entity @s container.0 * at @s run function pk_be_it:core/item_frame/settings/visible_when_empty/cut

# Shedule call
schedule function pk_be_it:core/item_frame/settings/visible_when_empty/tick 1t