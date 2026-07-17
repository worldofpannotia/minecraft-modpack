#> pk_be_it:events/player/player_interacted_with_entity/item_frame/switch_triggers

# If the item frame contains an item, isn't invisible yet, and the player was sneaking using shears
execute if data entity @s[tag=!pk.be_it.invisible] Item.id if entity @a[tag=pk.current.player,predicate=pk_be_it:flags/sneak,predicate=pk_be_it:hold/shears,distance=..30,limit=1] run function pk_be_it:core/item_frame/cut

# If the item frame is already invisible, and the player was sneaking using a brush
execute if data entity @s[tag=pk.be_it.invisible] Item.id if entity @a[tag=pk.current.player,predicate=pk_be_it:flags/sneak,predicate=pk_be_it:hold/brush,distance=..30,limit=1] run function pk_be_it:core/item_frame/repair

# If the player was sneaking using a glass pane
execute if entity @s[tag=!pk.be_it.rotation_fixed] if entity @a[tag=pk.current.player,predicate=pk_be_it:flags/sneak,predicate=pk_be_it:hold/glass_pane,distance=..30,limit=1] run function pk_be_it:core/item_frame/fix_rotation

# If the item frame has its rotation fixed, reset the rotation
execute store result entity @s[tag=pk.be_it.rotation_fixed] ItemRotation short 1 run scoreboard players get @s pk.be_it.item_rotation

# Update item rotation from score
execute store result score @s[tag=!pk.be_it.rotation_fixed] pk.be_it.item_rotation run data get entity @s ItemRotation