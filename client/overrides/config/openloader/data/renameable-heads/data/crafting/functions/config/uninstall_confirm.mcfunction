tellraw @a ["",{"text":"\u2016=","color":"light_purple"},{"text":"======================","color":"dark_purple"},{"text":"\u2016\u2042\u2016","color":"light_purple"},{"text":"======================","color":"dark_purple"},{"text":"=\u2016","color":"light_purple"}]

tellraw @a ["",{"text":" Are you sure that you want to uninstall","color":"dark_gray"},{"text":" Renameable Heads?","color":"#4ACCF7"}]
tellraw @a ["",{"text":"\n                       [Yes]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function crafting:config/uninstall"}},{"text":"             [No]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function crafting:load"}}]

tellraw @a ["",{"text":"\u2016=","color":"light_purple"},{"text":"======================","color":"dark_purple"},{"text":"\u2016\u203b\u2016","color":"light_purple"},{"text":"======================","color":"dark_purple"},{"text":"=\u2016","color":"light_purple"}]