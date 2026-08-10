tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"How do I install the Language Pack?"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# How
tellraw @s ["",{"translate":"The Language Pack is NOT a datapack and is not installed in the same way."}]
tellraw @s ["",{"translate":"Instead, it is a resource pack, and it is installed just like any other resource pack."}]
tellraw @s ["",{"translate":"Place it into your resourcepacks folder, then select it in the resource pack menu."}]
tellraw @s ["",{"translate":"Once you do this, the custom advancements will appear in whatever language you have selected if this language is supported."}]

# Go back
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_faq"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
