tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Frequently Asked Questions"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Why aren't all tabs visible at the start?
tellraw @s ["",{"text":"[ »» ]","color":"yellow","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_faq_not_all_tabs_visible"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Why aren't all tabs visible at the start?"}]

# How do I install the Language Pack?
tellraw @s ["",{"text":"[ »» ]","color":"aqua","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_faq_language_install"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"How do I install the Language Pack?"}]

# How can I translate the advancements into a new language?
tellraw @s ["",{"text":"[ »» ]","color":"dark_aqua","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_faq_language_translate"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"How can I translate the advancements into a new language?"}]

# What is the name of the mod that lets you see progress on advancements? (Advancement Info)
tellraw @s ["",{"text":"[ »» ]","color":"gold","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_faq_advinfo"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"What is the name of the mod that lets you see progress on advancements?"}]


# Go back
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/help_menu"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to main config menu"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
