######################### EXECUTING AS WORK STATION, EXECUTING AT EXECUTING PLAYER #########################

################## DEBUG ##################
#say Joined team!
################## DEBUG ##################

execute if score @p[distance=0] vjf_p_color_nbr matches 1 run tag @s add vjf_v_aqua
execute if score @p[distance=0] vjf_p_color_nbr matches 2 run tag @s add vjf_v_black
execute if score @p[distance=0] vjf_p_color_nbr matches 3 run tag @s add vjf_v_blue
execute if score @p[distance=0] vjf_p_color_nbr matches 4 run tag @s add vjf_v_d_aqua
execute if score @p[distance=0] vjf_p_color_nbr matches 5 run tag @s add vjf_v_d_blue
execute if score @p[distance=0] vjf_p_color_nbr matches 6 run tag @s add vjf_v_d_gray
execute if score @p[distance=0] vjf_p_color_nbr matches 7 run tag @s add vjf_v_d_green
execute if score @p[distance=0] vjf_p_color_nbr matches 8 run tag @s add vjf_v_d_purple
execute if score @p[distance=0] vjf_p_color_nbr matches 9 run tag @s add vjf_v_d_red
execute if score @p[distance=0] vjf_p_color_nbr matches 10 run tag @s add vjf_v_gold
execute if score @p[distance=0] vjf_p_color_nbr matches 11 run tag @s add vjf_v_gray
execute if score @p[distance=0] vjf_p_color_nbr matches 12 run tag @s add vjf_v_green
execute if score @p[distance=0] vjf_p_color_nbr matches 13 run tag @s add vjf_v_l_purple
execute if score @p[distance=0] vjf_p_color_nbr matches 14 run tag @s add vjf_v_red
execute if score @p[distance=0] vjf_p_color_nbr matches 15 run tag @s add vjf_v_white
execute if score @p[distance=0] vjf_p_color_nbr matches 16 run tag @s add vjf_v_yellow

execute if score @p[distance=0] vjf_p_color_nbr matches 1 run team join vjf_m_aqua
execute if score @p[distance=0] vjf_p_color_nbr matches 2 run team join vjf_m_black
execute if score @p[distance=0] vjf_p_color_nbr matches 3 run team join vjf_m_blue
execute if score @p[distance=0] vjf_p_color_nbr matches 4 run team join vjf_m_d_aqua
execute if score @p[distance=0] vjf_p_color_nbr matches 5 run team join vjf_m_d_blue
execute if score @p[distance=0] vjf_p_color_nbr matches 6 run team join vjf_m_d_gray
execute if score @p[distance=0] vjf_p_color_nbr matches 7 run team join vjf_m_d_green
execute if score @p[distance=0] vjf_p_color_nbr matches 8 run team join vjf_m_d_purple
execute if score @p[distance=0] vjf_p_color_nbr matches 9 run team join vjf_m_d_red
execute if score @p[distance=0] vjf_p_color_nbr matches 10 run team join vjf_m_gold
execute if score @p[distance=0] vjf_p_color_nbr matches 11 run team join vjf_m_gray
execute if score @p[distance=0] vjf_p_color_nbr matches 12 run team join vjf_m_green
execute if score @p[distance=0] vjf_p_color_nbr matches 13 run team join vjf_m_l_purple
execute if score @p[distance=0] vjf_p_color_nbr matches 14 run team join vjf_m_red
execute if score @p[distance=0] vjf_p_color_nbr matches 15 run team join vjf_m_white
execute if score @p[distance=0] vjf_p_color_nbr matches 16 run team join vjf_m_yellow

tag @s add vjf_on_team