scoreboard objectives add x_marks_the_spot_render_distance dummy
execute unless score #DEFAULT x_marks_the_spot_render_distance matches 0.. run scoreboard players set #DEFAULT x_marks_the_spot_render_distance 5
