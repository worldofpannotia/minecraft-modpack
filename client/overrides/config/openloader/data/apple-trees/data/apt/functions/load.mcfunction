#Generate intractable text#  
tellraw @a [{"text":"["},{"text":"+","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Enable","color":"dark_green"}]},"clickEvent":{"action":"run_command","value":"/function apt:load"}},{"text":" "},{"text":"| "},{"text":"-","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Disable","color":"dark_red"}]},"clickEvent":{"action":"run_command","value":"/function apt:uninstall"}},{"text":"] "},{"text":"Apple Trees Datapack","color":"white","bold":false},{"text":" by ManaMage","color":"white","bold":false}]

#Initiate Random Apple Trees#
function rng_egolden_apple_tree:initiate
function rng_golden_apple_tree:initiate
function rng_apple_tree:initiate

#Initiate Random Apple Seeds#
function rng_egolden_apple_seed:initiate
function rng_golden_apple_seed:initiate
function rng_apple_seed:initiate

#Add Scoreboard Dummies#
scoreboard objectives add AppleGrowth dummy
scoreboard players set Timer AppleGrowth 0
scoreboard players set BaseSpeed AppleGrowth 9000
scoreboard players operation NextStage AppleGrowth = BaseSpeed AppleGrowth
function apt:new_tick_speed
scoreboard objectives add AppleStages dummy

#Add Scoreboard Eat Apples#
scoreboard objectives add APTEatApple minecraft.used:minecraft.apple
scoreboard objectives add APTEatGApple minecraft.used:minecraft.golden_apple
scoreboard objectives add APTEatEGApple minecraft.used:minecraft.enchanted_golden_apple