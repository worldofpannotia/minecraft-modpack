tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Help Menu"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Link to Config Menu Documentation
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"open_url","url":"http://bit.ly/3HXkft2"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to follow link","color":"gold"}]}}," ",{"translate":"Full documentation on how to use the Config Menu"}]

# How to update to newer versions of the datapack
tellraw @s ["",{"text":"[ »» ]","color":"yellow","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_new_version_update"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"How to update to new datapack versions"}]

# How to add players to teams
tellraw @s ["",{"text":"[ »» ]","color":"aqua","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_teams"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"How to add players to teams"}]

# Link to more links
## Specifically: Language Pack, Hardcore and Terralith versions, Advancements Documentation, Trophy List, Discord and Patreon
tellraw @s ["",{"text":"[ »» ]","color":"dark_green","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_links"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Important Links"}]

# Known troubleshooting issues and FAQ's
## Specifically: Use the right version of BACAP for the right version of MC, Paper/Spigot server issues, Advancement Info
tellraw @s ["",{"text":"[ »» ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_troubleshooting"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Troubleshooting"}]
tellraw @s ["",{"text":"[ »» ]","color":"blue","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_faq"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Frequently Asked Questions"}]


# Go back
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to main config menu"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
