schedule function autotest:lib/next 1t
execute store success score #ok autotest run scoreboard players add #autotest.probe sethome 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective sethome exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe sethome
execute store success score #ok autotest run scoreboard players add #autotest.probe homes 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes
execute store success score #ok autotest run scoreboard players add #autotest.probe home 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective home exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe home
execute store success score #ok autotest run scoreboard players add #autotest.probe namehome 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective namehome exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe namehome
execute store success score #ok autotest run scoreboard players add #autotest.probe delhome 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective delhome exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe delhome
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.target 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.target exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.target
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.delay 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.delay exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.delay
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.cooldown 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.cooldown exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.cooldown
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.dummy 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.dummy exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.dummy
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.config 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.config exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.config
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.x 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.x exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.x
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.y 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.y exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.y
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.z 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.z exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.z
execute store success score #ok autotest run scoreboard players add #autotest.probe homes.limit 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b homes: objective homes.limit exists",why:"homess load function did not run"}
scoreboard players reset #autotest.probe homes.limit
execute store success score #ok autotest run scoreboard players add #autotest.probe back 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back
execute store success score #ok autotest run scoreboard players add #autotest.probe back.config 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.config exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.config
execute store success score #ok autotest run scoreboard players add #autotest.probe back.dummy 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.dummy exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.dummy
execute store success score #ok autotest run scoreboard players add #autotest.probe back.delay 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.delay exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.delay
execute store success score #ok autotest run scoreboard players add #autotest.probe back.cooldown 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.cooldown exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.cooldown
execute store success score #ok autotest run scoreboard players add #autotest.probe back.deaths 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.deaths exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.deaths
execute store success score #ok autotest run scoreboard players add #autotest.probe back.x 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.x exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.x
execute store success score #ok autotest run scoreboard players add #autotest.probe back.y 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.y exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.y
execute store success score #ok autotest run scoreboard players add #autotest.probe back.z 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b back: objective back.z exists",why:"backs load function did not run"}
scoreboard players reset #autotest.probe back.z
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn.config 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn.config exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn.config
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn.dummy 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn.dummy exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn.dummy
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn.delay 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn.delay exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn.delay
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn.cooldown 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn.cooldown exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn.cooldown
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn.x 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn.x exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn.x
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn.y 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn.y exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn.y
execute store success score #ok autotest run scoreboard players add #autotest.probe spawn.z 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b spawn: objective spawn.z exists",why:"spawns load function did not run"}
scoreboard players reset #autotest.probe spawn.z
execute store success score #ok autotest run scoreboard players add #autotest.probe afkDis.x1 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b afk-display: objective afkDis.x1 exists",why:"afk-displays load function did not run"}
scoreboard players reset #autotest.probe afkDis.x1
execute store success score #ok autotest run scoreboard players add #autotest.probe afkDis.x2 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b afk-display: objective afkDis.x2 exists",why:"afk-displays load function did not run"}
scoreboard players reset #autotest.probe afkDis.x2
execute store success score #ok autotest run scoreboard players add #autotest.probe afkDis.y1 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b afk-display: objective afkDis.y1 exists",why:"afk-displays load function did not run"}
scoreboard players reset #autotest.probe afkDis.y1
execute store success score #ok autotest run scoreboard players add #autotest.probe afkDis.y2 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b afk-display: objective afkDis.y2 exists",why:"afk-displays load function did not run"}
scoreboard players reset #autotest.probe afkDis.y2
execute store success score #ok autotest run scoreboard players add #autotest.probe afkDis.z1 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b afk-display: objective afkDis.z1 exists",why:"afk-displays load function did not run"}
scoreboard players reset #autotest.probe afkDis.z1
execute store success score #ok autotest run scoreboard players add #autotest.probe afkDis.z2 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b afk-display: objective afkDis.z2 exists",why:"afk-displays load function did not run"}
scoreboard players reset #autotest.probe afkDis.z2
execute store success score #ok autotest run scoreboard players add #autotest.probe afkDis.checkAFK 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b afk-display: objective afkDis.checkAFK exists",why:"afk-displays load function did not run"}
scoreboard players reset #autotest.probe afkDis.checkAFK
execute store success score #ok autotest run scoreboard players add #autotest.probe as_trigger 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_trigger exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_trigger
execute store success score #ok autotest run scoreboard players add #autotest.probe as_pose 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_pose exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_pose
execute store success score #ok autotest run scoreboard players add #autotest.probe as_angle 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_angle exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_angle
execute store success score #ok autotest run scoreboard players add #autotest.probe as_help 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_help exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_help
execute store success score #ok autotest run scoreboard players add #autotest.probe if_invisible 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective if_invisible exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe if_invisible
execute store success score #ok autotest run scoreboard players add #autotest.probe as_edited_uuid1 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_edited_uuid1 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_edited_uuid1
execute store success score #ok autotest run scoreboard players add #autotest.probe as_edited_uuid2 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_edited_uuid2 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_edited_uuid2
execute store success score #ok autotest run scoreboard players add #autotest.probe as_edited_uuid3 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_edited_uuid3 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_edited_uuid3
execute store success score #ok autotest run scoreboard players add #autotest.probe as_edited_uuid4 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_edited_uuid4 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_edited_uuid4
execute store success score #ok autotest run scoreboard players add #autotest.probe as_lock_uuid1 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_lock_uuid1 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_lock_uuid1
execute store success score #ok autotest run scoreboard players add #autotest.probe as_lock_uuid2 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_lock_uuid2 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_lock_uuid2
execute store success score #ok autotest run scoreboard players add #autotest.probe as_lock_uuid3 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_lock_uuid3 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_lock_uuid3
execute store success score #ok autotest run scoreboard players add #autotest.probe as_lock_uuid4 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b armor-statues: objective as_lock_uuid4 exists",why:"armor-statuess load function did not run"}
scoreboard players reset #autotest.probe as_lock_uuid4
execute store success score #ok autotest run scoreboard players add #autotest.probe vwh_findStation 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b villager-workstation-highlights: objective vwh_findStation exists",why:"villager-workstation-highlightss load function did not run"}
scoreboard players reset #autotest.probe vwh_findStation
execute store success score #ok autotest run scoreboard players add #autotest.probe vwh_stationX 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b villager-workstation-highlights: objective vwh_stationX exists",why:"villager-workstation-highlightss load function did not run"}
scoreboard players reset #autotest.probe vwh_stationX
execute store success score #ok autotest run scoreboard players add #autotest.probe vwh_stationY 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b villager-workstation-highlights: objective vwh_stationY exists",why:"villager-workstation-highlightss load function did not run"}
scoreboard players reset #autotest.probe vwh_stationY
execute store success score #ok autotest run scoreboard players add #autotest.probe vwh_stationZ 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b villager-workstation-highlights: objective vwh_stationZ exists",why:"villager-workstation-highlightss load function did not run"}
scoreboard players reset #autotest.probe vwh_stationZ
execute store success score #ok autotest run scoreboard players add #autotest.probe wt_trades 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective wt_trades exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe wt_trades
execute store success score #ok autotest run scoreboard players add #autotest.probe wt_tradeIndex 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective wt_tradeIndex exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe wt_tradeIndex
execute store success score #ok autotest run scoreboard players add #autotest.probe wt_random 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective wt_random exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe wt_random
execute store success score #ok autotest run scoreboard players add #autotest.probe constant 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective constant exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe constant
execute store success score #ok autotest run scoreboard players add #autotest.probe math_output 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_output exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_output
execute store success score #ok autotest run scoreboard players add #autotest.probe math_input1 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_input1 exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_input1
execute store success score #ok autotest run scoreboard players add #autotest.probe math_input2 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_input2 exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_input2
execute store success score #ok autotest run scoreboard players add #autotest.probe math_temp1 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_temp1 exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_temp1
execute store success score #ok autotest run scoreboard players add #autotest.probe math_temp2 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_temp2 exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_temp2
execute store success score #ok autotest run scoreboard players add #autotest.probe math_temp3 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_temp3 exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_temp3
execute store success score #ok autotest run scoreboard players add #autotest.probe math_temp4 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_temp4 exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_temp4
execute store success score #ok autotest run scoreboard players add #autotest.probe math_temp5 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective math_temp5 exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe math_temp5
execute store success score #ok autotest run scoreboard players add #autotest.probe angle 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective angle exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe angle
execute store success score #ok autotest run scoreboard players add #autotest.probe cos 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective cos exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe cos
execute store success score #ok autotest run scoreboard players add #autotest.probe sin 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective sin exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe sin
execute store success score #ok autotest run scoreboard players add #autotest.probe theta 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective theta exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe theta
execute store success score #ok autotest run scoreboard players add #autotest.probe phi 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b wandering-trades-hermit-edition: objective phi exists",why:"wandering-trades-hermit-editions load function did not run"}
scoreboard players reset #autotest.probe phi
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_elytraKmShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_elytraKmShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_elytraKmShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_elytraKm 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_elytraKm exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_elytraKm
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_elytraCm 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_elytraCm exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_elytraCm
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_playTimeShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_playTimeShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_playTimeShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_playTime 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_playTime exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_playTime
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_playTick 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_playTick exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_playTick
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_swimKmShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_swimKmShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_swimKmShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_swimKm 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_swimKm exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_swimKm
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_swimCm 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_swimCm exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_swimCm
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineOreShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineOreShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineOreShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineOre 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineOre exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineOre
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineCoalShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineCoalShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineCoalShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDiamondShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDiamondShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDiamondShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineEmeraldShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineEmeraldShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineEmeraldShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineRedstoneShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineRedstoneShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineRedstoneShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineLapisShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineLapisShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineLapisShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineIronShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineIronShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineIronShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineGoldShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineGoldShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineGoldShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineCopperShow 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineCopperShow exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineCopperShow
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineCoal 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineCoal exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineCoal
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDiamond 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDiamond exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDiamond
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineEmerald 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineEmerald exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineEmerald
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineRedstone 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineRedstone exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineRedstone
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineLapis 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineLapis exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineLapis
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineIron 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineIron exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineIron
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineGold 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineGold exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineGold
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineCopper 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineCopper exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineCopper
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSCoal 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSCoal exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSCoal
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSDiamond 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSDiamond exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSDiamond
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSEmerald 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSEmerald exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSEmerald
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineQuartz 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineQuartz exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineQuartz
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSRedstone 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSRedstone exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSRedstone
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSLapis 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSLapis exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSLapis
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSIron 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSIron exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSIron
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSGold 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSGold exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSGold
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineSCopper 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineSCopper exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineSCopper
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineNetherite 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineNetherite exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineNetherite
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDCoal 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDCoal exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDCoal
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDDiamond 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDDiamond exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDDiamond
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDEmerald 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDEmerald exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDEmerald
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDRedstone 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDRedstone exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDRedstone
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDLapis 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDLapis exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDLapis
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDIron 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDIron exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDIron
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDGold 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDGold exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDGold
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_MineDCopper 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_MineDCopper exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_MineDCopper
execute store success score #ok autotest run scoreboard players add #autotest.probe hc_constant 0
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOAD-1b track-statistics: objective hc_constant exists",why:"track-statisticss load function did not run"}
scoreboard players reset #autotest.probe hc_constant
