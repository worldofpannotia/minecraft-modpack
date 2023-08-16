scoreboard objectives add jungle_nitwit dummy
scoreboard objectives add swamp_nitwit dummy
scoreboard objectives add plains_nitwit dummy
scoreboard objectives add desert_nitwit dummy
scoreboard objectives add taiga_nitwit dummy
scoreboard objectives add snow_nitwit dummy
scoreboard objectives add savanna_nitwit dummy

scoreboard players add @a[advancements={blackbirds_torture_chamber:technical/make_youre_the_nitwit_work={jungle=true}}] jungle_nitwit 1
scoreboard players add @a[advancements={blackbirds_torture_chamber:technical/make_youre_the_nitwit_work={swamp=true}}] swamp_nitwit 1
scoreboard players add @a[advancements={blackbirds_torture_chamber:technical/make_youre_the_nitwit_work={plains=true}}] plains_nitwit 1
scoreboard players add @a[advancements={blackbirds_torture_chamber:technical/make_youre_the_nitwit_work={desert=true}}] desert_nitwit 1
scoreboard players add @a[advancements={blackbirds_torture_chamber:technical/make_youre_the_nitwit_work={taiga=true}}] taiga_nitwit 1
scoreboard players add @a[advancements={blackbirds_torture_chamber:technical/make_youre_the_nitwit_work={snow=true}}] snow_nitwit 1
scoreboard players add @a[advancements={blackbirds_torture_chamber:technical/make_youre_the_nitwit_work={savanna=true}}] savanna_nitwit 1

advancement revoke @a only blackbirds_torture_chamber:technical/make_youre_the_nitwit_work

advancement grant @a[scores={jungle_nitwit=100..}] only blackbirds_torture_chamber:stuff/youre_the_nitwit_now jungle
advancement grant @a[scores={swamp_nitwit=100..}] only blackbirds_torture_chamber:stuff/youre_the_nitwit_now swamp
advancement grant @a[scores={plains_nitwit=100..}] only blackbirds_torture_chamber:stuff/youre_the_nitwit_now plains
advancement grant @a[scores={desert_nitwit=100..}] only blackbirds_torture_chamber:stuff/youre_the_nitwit_now desert
advancement grant @a[scores={taiga_nitwit=100..}] only blackbirds_torture_chamber:stuff/youre_the_nitwit_now taiga
advancement grant @a[scores={snow_nitwit=100..}] only blackbirds_torture_chamber:stuff/youre_the_nitwit_now snow
advancement grant @a[scores={savanna_nitwit=100..}] only blackbirds_torture_chamber:stuff/youre_the_nitwit_now savanna