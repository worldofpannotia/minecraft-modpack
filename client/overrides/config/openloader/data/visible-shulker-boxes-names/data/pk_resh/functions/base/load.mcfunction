# ----------------------------------------
# Scores
# ----------------------------------------

# Generic score used for most of parameters
scoreboard objectives add PKValue dummy

# Datapack Parameters :
# - scoreboard players set %pk_shulkerbox_name_visibility PKValue 1 : Show/hide the name above the shulkerbox.
# Initialize parameters :
execute unless score %pk_shulkerbox_name_visibility PKValue matches 0..1 run scoreboard players set %pk_shulkerbox_name_visibility PKValue 1

# ----------------------------------------
# Logs
# ----------------------------------------

# Loading message
tellraw @a [{"text":"Loaded ","color":"yellow"},{"text":"PK Visible Shulker Boxes Names","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]