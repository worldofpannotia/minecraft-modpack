data modify storage x_marks_the_spot:curr Vars set value {}
execute store result storage x_marks_the_spot:curr Vars.max_dist int 1 run function x_marks_the_spot:get_render_distance
data modify storage x_marks_the_spot:curr Vars.x set from storage x_marks_the_spot:curr Decoration.x
data modify storage x_marks_the_spot:curr Vars.z set from storage x_marks_the_spot:curr Decoration.z
function x_marks_the_spot:show_x/at_x_z with storage x_marks_the_spot:curr Vars
