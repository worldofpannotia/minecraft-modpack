#Core Random Apple Trees#
function rng_egolden_apple_tree:core
function rng_golden_apple_tree:core
function rng_apple_tree:core

#Core Random Apple Seeds#
function rng_egolden_apple_seed:core
function rng_golden_apple_seed:core
function rng_apple_seed:core

#Apple Tick#
function apt:apples/apple_tick

##Store the value for random tick speed##
execute store result score RTS AppleGrowth run gamerule randomTickSpeed

##If RTSOld value is greater than or less than RTS value run new tick speed function##
execute if score RTSOld AppleGrowth > RTS AppleGrowth run function apt:new_tick_speed
execute if score RTSOld AppleGrowth < RTS AppleGrowth run function apt:new_tick_speed

##Timer for Apple Growth; 600 Ticks = 30 Seconds##
execute unless score RTS AppleGrowth matches 0 run scoreboard players add Timer AppleGrowth 1
execute if score Timer AppleGrowth >= NextStage AppleGrowth run function apt:apples/apple_growth_timer
