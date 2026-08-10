tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"How to add players to teams"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# How
tellraw @s ["",{"translate":"This datapack adds 16 teams, one of each colour, that this datapack can work with."}]
tellraw @s ["",{"translate":"For Team Cooperative Mode and team-based scoreboards to work properly, players MUST be added to these teams using the following command:"}]
tellraw @s ["",{"color":"gray","translate":"/team join bac_team_<color> <player>","click_event":{"action":"suggest_command","command":"/team join bac_team_"}}]
tellraw @s ["",{"translate":"You may freely change the team's display name, prefix and suffix using their respective commands as well"}]

# Go back
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_menu"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
