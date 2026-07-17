# If there are raid mobs within 32 blocks, the advancement is granted
execute at @s if entity @e[type=#minecraft:raiders,predicate=blazeandcave:has_raid,distance=..32] run advancement grant @s only blazeandcave:adventure/sound_the_alarm

advancement revoke @s only blazeandcave:technical/sound_the_alarm_check