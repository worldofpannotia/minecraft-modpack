scoreboard objectives add breed_brown_panda dummy
scoreboard players add @s breed_brown_panda 1
advancement revoke @s only blackbirds_torture_chamber:technical/breed_brown_panda
advancement grant @a[scores={breed_brown_panda=100..}] only blackbirds_torture_chamber:stuff/i_love_brownies