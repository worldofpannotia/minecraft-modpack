tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Advancement Completion Message Settings"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

function blazeandcave:config/msg_settings_tiers


tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
# Preset settings
tellraw @s ["",{"text":"[ »» ]","color":"light_purple","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_settings_presets"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Click to view preset options"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to main config menu"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
