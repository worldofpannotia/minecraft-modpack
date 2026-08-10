tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"yellow","bold":false,"translate":"How many points would you like each advancement tier to award?"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Scoreboards
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"run_command","command":"/dialog show @s blazeandcave:config/change_points_task"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to change","color":"gold"}]}}," ",{"color":"green","translate":"Task"}," ",{"translate":"Advancements:"}," ",{"text":"           ","color":"white","strikethrough":true}," ",{"color":"yellow","bold":true,"score":{"name":"task","objective":"bac_points"}}]
tellraw @s ["",{"text":"[ »» ]","color":"#75E1FF","click_event":{"action":"run_command","command":"/dialog show @s blazeandcave:config/change_points_goal"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to change","color":"gold"}]}}," ",{"color":"#75E1FF","translate":"Goal"}," ",{"translate":"Advancements:"}," ",{"text":"           ","color":"white","strikethrough":true}," ",{"color":"yellow","bold":true,"score":{"name":"goal","objective":"bac_points"}}]
tellraw @s ["",{"text":"[ »» ]","color":"dark_purple","click_event":{"action":"run_command","command":"/dialog show @s blazeandcave:config/change_points_challenge"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to change","color":"gold"}]}}," ",{"color":"dark_purple","translate":"Challenge"}," ",{"translate":"Advancements:"}," ",{"text":"    ","color":"white","strikethrough":true}," ",{"color":"yellow","bold":true,"score":{"name":"challenge","objective":"bac_points"}}]
tellraw @s ["",{"text":"[ »» ]","color":"#FF2A2A","click_event":{"action":"run_command","command":"/dialog show @s blazeandcave:config/change_points_super_challenge"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to change","color":"gold"}]}}," ",{"color":"#FF2A2A","translate":"Super Challenges"},": ",{"text":"            ","color":"white","strikethrough":true}," ",{"color":"yellow","bold":true,"score":{"name":"super_challenge","objective":"bac_points"}}]
tellraw @s ["",{"text":"[ »» ]","color":"yellow","click_event":{"action":"run_command","command":"/dialog show @s blazeandcave:config/change_points_milestone"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to change","color":"gold"}]}}," ",{"color":"yellow","translate":"Milestone"}," ",{"translate":"Advancements:"}," ",{"text":"     ","color":"white","strikethrough":true}," ",{"color":"yellow","bold":true,"score":{"name":"milestone","objective":"bac_points"}}]
tellraw @s ["",{"text":"[ »» ]","color":"light_purple","click_event":{"action":"run_command","command":"/dialog show @s blazeandcave:config/change_points_hidden"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to change","color":"gold"}]}}," ",{"color":"light_purple","translate":"Hidden"}," ",{"translate":"Advancements:"}," ",{"text":"        ","color":"white","strikethrough":true}," ",{"color":"yellow","bold":true,"score":{"name":"hidden","objective":"bac_points"}}]
tellraw @s ["",{"text":"[ »» ]","color":"gold","click_event":{"action":"run_command","command":"/dialog show @s blazeandcave:config/change_points_advancement_legend"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to change","color":"gold"}]}}," ",{"color":"gold","translate":"Advancement Legend"},": ",{"text":"        ","color":"white","strikethrough":true}," ",{"color":"yellow","bold":true,"score":{"name":"advancement_legend","objective":"bac_points"}}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

tellraw @s ["",{"text":"[ »» ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/scoreboard_change_points_reset"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to reset","color":"gold"}]}}," ",{"translate":"Reset to defaults"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/scoreboard_settings"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
