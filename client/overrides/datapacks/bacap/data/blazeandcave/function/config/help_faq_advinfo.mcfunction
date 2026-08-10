tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"What is the name of the mod that lets you see progress on advancements?"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# How
tellraw @s ["",{"translate":"The mod in question is named Advancement Info Reloaded, which displays the requirements that have been completed on each advancement."}]
tellraw @s ["",{"translate":"It is extremely useful, especially for Super Challenges with many requirements such as 'All the Blocks'."}]
tellraw @s ["",{"translate":"It can be downloaded here:"}]
tellraw @s ["",{"color":"aqua","underlined": true,"text":"https://modrinth.com/mod/advancements-reloaded","click_event":{"action":"open_url","url":"https://modrinth.com/mod/advancements-reloaded"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to follow link","color":"gold"}]}}]

# Go back
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_faq"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
