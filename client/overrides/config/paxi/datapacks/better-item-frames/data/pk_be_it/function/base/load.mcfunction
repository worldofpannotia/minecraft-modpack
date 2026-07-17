#> pk_be_it:base/load
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
#   pk:common | Used to store installed PK Datapacks names and version and for temp data manipulation
#declare storage pk:common

# Initialize PK data packs storage if needed
execute unless data storage pk:common installed_datapacks[{}] run data modify storage pk:common installed_datapacks set value []

# Add current data pack into the PK data packs storage if needed
execute unless data storage pk:common installed_datapacks[{id:"better_item_frames"}] run data modify storage pk:common installed_datapacks append value {name:"Better Item Frames",id:"better_item_frames"}

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define objectives that are common to each PK data pack:
#   pk.temp only concerns temp values that can be cleared at any time without risks.
#   pk.value is used for fixed values and variable settings, and won't be cleared on uninstallation until there is no PK data pack anymore.
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy

# Define objective that are specific to the current data pack
#   Used to store item frames rotation data
scoreboard objectives add pk.be_it.item_rotation dummy

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Updates:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
function pk_be_it:base/update/start

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Settings:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Invisible when empty
function pk_be_it:core/item_frame/settings/visible_when_empty/on_load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Loaded ","color": "yellow"},{"text":"KawaMood's ","color": "aqua", "bold": true},{"nbt":"installed_datapacks[{id:\"better_item_frames\"}].name", "storage": "pk:common","color": "aqua", "bold": true},{"text": " (V.","color": "aqua"},{"nbt":"installed_datapacks[{id:\"better_item_frames\"}].version", "storage": "pk:common","color": "aqua"},{"text": ")","color": "aqua"},{"text": " successfully"}]