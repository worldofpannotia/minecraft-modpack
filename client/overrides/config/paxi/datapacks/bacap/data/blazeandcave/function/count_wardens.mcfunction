execute store result score @s bac_warden_count run execute if entity @e[type=warden,distance=..16]
execute store result score @s bac_overwarden_count run execute if entity @e[type=warden,distance=..100]

execute if score @s bac_warden_count matches 5.. run advancement grant @s only blazeandcave:monsters/house_of_freaks
execute if score @s bac_overwarden_count matches 50.. run advancement grant @s only blazeandcave:challenges/overwarden