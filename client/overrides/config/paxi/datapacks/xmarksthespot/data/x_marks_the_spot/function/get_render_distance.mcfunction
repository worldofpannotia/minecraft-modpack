execute if score @s x_marks_the_spot_render_distance matches 0.. run return run scoreboard players get @s x_marks_the_spot_render_distance
# else
scoreboard players reset @s x_marks_the_spot_render_distance
execute unless score #DEFAULT x_marks_the_spot_render_distance matches 0.. run scoreboard players set #DEFAULT x_marks_the_spot_render_distance 5
return run scoreboard players get #DEFAULT x_marks_the_spot_render_distance
