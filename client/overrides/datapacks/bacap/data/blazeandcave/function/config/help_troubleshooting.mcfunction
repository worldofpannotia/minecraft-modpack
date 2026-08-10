tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Troubleshooting"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# How
tellraw @s ["",{"translate":"If certain aspects of this datapack are not working properly (e.g. Advancements are granted automatically when they shouldn't), make sure you are using the correct version of the datapack for the Minecraft version you are running."}]
tellraw @s ["",{"translate":"In addition, some advancements may break on Spigot or Paper servers."}]

# Go back
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_menu"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
