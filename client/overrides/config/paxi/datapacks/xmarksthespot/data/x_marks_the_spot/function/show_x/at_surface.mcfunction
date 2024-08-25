execute if block ~ ~-1 ~ #x_marks_the_spot:vertical_offset/all positioned ~ ~-1 ~ run return run function x_marks_the_spot:show_x/with_offset
# else
execute unless block ~ ~-1 ~ #x_marks_the_spot:no_x run function x_marks_the_spot:show_x/render
