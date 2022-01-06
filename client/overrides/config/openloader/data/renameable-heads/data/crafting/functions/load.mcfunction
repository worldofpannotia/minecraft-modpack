scoreboard objectives add RE-1 dummy
scoreboard players set REconfig RE-1 -1

scoreboard objectives add REMaxHeads dummy
execute unless score REconfig REMaxHeads >= REconfig RE-1 run scoreboard players set REconfig REMaxHeads -1

scoreboard objectives add REOneTimeBook dummy
execute unless score REconfig REOneTimeBook >= REconfig RE-1 run scoreboard players set REconfig REOneTimeBook 0

scoreboard objectives add REErasableBooks dummy
execute unless score REconfig REErasableBooks >= REconfig RE-1 run scoreboard players set REconfig REErasableBooks 1

scoreboard objectives add RERenamePlayer dummy
execute unless score REconfig RERenamePlayer >= REconfig RE-1 run scoreboard players set REconfig RERenamePlayer 1

scoreboard objectives add RERenameZombie dummy
execute unless score REconfig RERenameZombie >= REconfig RE-1 run scoreboard players set REconfig RERenameZombie 1

scoreboard objectives add RERenameSkeleton dummy
execute unless score REconfig RERenameSkeleton >= REconfig RE-1 run scoreboard players set REconfig RERenameSkeleton 1

scoreboard objectives add RERenameWither dummy
execute unless score REconfig RERenameWither >= REconfig RE-1 run scoreboard players set REconfig RERenameWither 0

scoreboard objectives add RERenameCreeper dummy
execute unless score REconfig RERenameCreeper >= REconfig RE-1 run scoreboard players set REconfig RERenameCreeper 0

scoreboard objectives add RERenameDragon dummy
execute unless score REconfig RERenameDragon >= REconfig RE-1 run scoreboard players set REconfig RERenameDragon 0

scoreboard objectives remove RE-1

tellraw @a ["",{"text":"\u2016=","color":"light_purple"},{"text":"====================","color":"dark_purple"},{"text":"\u2016\u2042\u2016","color":"light_purple"},{"text":"====================","color":"dark_purple"},{"text":"=\u2016","color":"light_purple"}]

tellraw @a ["",{"text":"      Renameable Heads v1.5 by danieldimasgamer","color":"#4ACCF7"},{"text":"\n                was successfully installed!\n                             ","color":"dark_green"}]
tellraw @a ["",{"text":"                [Uninstall]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function crafting:config/uninstall_confirm"}},{"text":"          [Config]","color":"gold","clickEvent":{"action":"run_command","value":"/function crafting:config/config"}}]

tellraw @a ["",{"text":"\u2016=","color":"light_purple"},{"text":"====================","color":"dark_purple"},{"text":"\u2016\u203b\u2016","color":"light_purple"},{"text":"====================","color":"dark_purple"},{"text":"=\u2016","color":"light_purple"}]