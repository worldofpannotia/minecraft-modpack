##########################################
# Authors: ScorchedPsyche
# Date: July 26, 2022
# Version: 1.0.3
# Minecraft Version 1.19
# Description: Release
##########################################

# Removes scoreboards

scoreboard objectives remove vjf_clocks
scoreboard objectives remove vjf_p_color_nbr
scoreboard objectives remove vjf_single
scoreboard objectives remove vjf_multiple
scoreboard objectives remove vjf_range_toggle
scoreboard objectives remove vjf_range

# Add datapack scoreboard

scoreboard objectives add vjf_clocks dummy "VJF - Clocks"
scoreboard players set Tick vjf_clocks 0
scoreboard players set Seconds vjf_clocks 1

scoreboard objectives add vjf_p_color_nbr dummy "VJF - Color Nbr"
scoreboard objectives add vjf_single trigger "VJF - Single"
scoreboard objectives add vjf_multiple trigger "VJF - Multiple"
scoreboard objectives add vjf_range_toggle trigger "VJF - Range - Toggle"
scoreboard objectives add vjf_range dummy "VJF - Range Active"

# Add teams

function vjf:configure/teams

# Removes trash from Connected Villager Job Site

scoreboard objectives remove cvjs_fixJobSite
team remove cvjs_noClip

################## DEBUG ##################
#scoreboard objectives setdisplay sidebar vjf_y_pos
################## DEBUG ##################

# Install announcement
tellraw @a ["",{"text":"Villager Job Fix v1.0.3","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/members/scorchedpsyche/projects"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to view ScorchedPsyche's Data Packs","bold":true,"color":"aqua"}]}},{"text":" by ScorchedPsyche","italic":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCaLTJgTMXViqBEuRraie5WA"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to go to ScorchedPsyche's YouTube","bold":true,"color":"aqua"}]}}]