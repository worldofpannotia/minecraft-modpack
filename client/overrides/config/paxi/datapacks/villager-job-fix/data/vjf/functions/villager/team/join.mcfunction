######################### EXECUTING AS VILLAGER, POSITIONED AT WORK STATION #########################

################## DEBUG ##################
#say Joined team!
#tellraw @a ["",{"text":"VJF Entities - Team Join: "},{"score":{"name":"@a[distance=..25,tag=vjf_source,limit=1]","objective":"vjf_p_color_nbr"}}]
################## DEBUG ##################

execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_aqua,distance=0,limit=1] run team join vjf_v_aqua
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_black,distance=0,limit=1] run team join vjf_v_black
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_blue,distance=0,limit=1] run team join vjf_v_blue
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_d_aqua,distance=0,limit=1] run team join vjf_v_d_aqua
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_d_blue,distance=0,limit=1] run team join vjf_v_d_blue
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_d_gray,distance=0,limit=1] run team join vjf_v_d_gray
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_d_green,distance=0,limit=1] run team join vjf_v_d_green
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_d_purple,distance=0,limit=1] run team join vjf_v_d_purple
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_d_red,distance=0,limit=1] run team join vjf_v_d_red
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_gold,distance=0,limit=1] run team join vjf_v_gold
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_gray,distance=0,limit=1] run team join vjf_v_gray
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_green,distance=0,limit=1] run team join vjf_v_green
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_l_purple,distance=0,limit=1] run team join vjf_v_l_purple
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_red,distance=0,limit=1] run team join vjf_v_red
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_white,distance=0,limit=1] run team join vjf_v_white
execute if entity @e[tag=vjf_entity,tag=vjf_workstation,tag=vjf_v_yellow,distance=0,limit=1] run team join vjf_v_yellow