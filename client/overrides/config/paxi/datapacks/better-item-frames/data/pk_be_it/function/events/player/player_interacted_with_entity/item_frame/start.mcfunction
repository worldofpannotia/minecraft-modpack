#> pk_be_it:events/player/player_interacted_with_entity/item_frame/start
# @within advancement pk_be_it:events/player/player_interacted_with_entity/item_frame

# Revoke advancement
advancement revoke @s only pk_be_it:events/player_interacted_with_entity/item_frame

# Mark player
tag @s add pk.current.player

# Search right-clicked item frame
execute as @e[type=#pk_be_it:item_frames,distance=..30] at @s run function pk_be_it:events/player/player_interacted_with_entity/item_frame/search

# Free player
tag @s remove pk.current.player