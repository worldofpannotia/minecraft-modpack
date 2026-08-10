tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Message Presets"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Preset settings
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_set_on"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to set","color":"gold"}]}}," ",{"translate":"Turn all messages on"}]
tellraw @s ["",{"text":"[ »» ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_set_off"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to set","color":"gold"}]}}," ",{"translate":"Turn all messages off"}]
tellraw @s ["",{"text":"[ »» ]","color":"yellow","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_set_first"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to set","color":"gold"}]}}," ",{"translate":"Set all messages to first-player only (recommended and default for Cooperative Mode)"}]
tellraw @s ["",{"text":"[ »» ]","color":"aqua","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_set_first_team"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to set","color":"gold"}]}}," ",{"translate":"Set all messages to first-player-on-team only (recommended and default for Team Cooperative Mode)"}]
tellraw @s ["",{"text":"[ »» ]","color":"dark_green","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_set_server1"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to set","color":"gold"}]}}," ",{"translate":"Turn all on except tasks (recommended for large servers)"}]
tellraw @s ["",{"text":"[ »» ]","color":"dark_green","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_set_server2"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to set","color":"gold"}]}}," ",{"translate":"Turn all on except tasks and goals"}]
tellraw @s ["",{"text":"[ »» ]","color":"blue","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_set_vanilla_msg"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to set","color":"gold"}]}}," ",{"translate":"Turn vanilla messages on (recommended for servers that use plugins that draw from them such as DiscordSRV)"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/msg_settings"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
