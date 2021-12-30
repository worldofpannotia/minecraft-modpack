# Controls everything to do with ss

schedule function spawning_spheres:tick 1t

execute as @a[scores={ss_removeRed=1..}] at @s run function spawning_spheres:remove/red_sphere
execute as @a[scores={ss_removeGreen=1..}] at @s run function spawning_spheres:remove/green_sphere
execute as @a[scores={ss_removeBlue=1..}] at @s run function spawning_spheres:remove/blue_sphere