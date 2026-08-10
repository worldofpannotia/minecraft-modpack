# North
execute if entity @p[tag=eplus.lj_user,y_rotation=135..225] run return run data modify entity @s Motion set value [0.0d,0.0d,-0.5d]

# East
execute if entity @p[tag=eplus.lj_user,y_rotation=225..315] run return run data modify entity @s Motion set value [0.5d,0.0d,0.0d]

# South
execute if entity @p[tag=eplus.lj_user,y_rotation=315..45] run return run data modify entity @s Motion set value [0.0d,0.0d,0.5d]

# West
execute if entity @p[tag=eplus.lj_user,y_rotation=45..135] run return run data modify entity @s Motion set value [-0.5d,0.0d,0.0d]
