#Set RTSOld to current Random Tick Speed#
execute store result score RTSOld AppleGrowth run gamerule randomTickSpeed

#Set NextStage value to BaseSpeed value#
scoreboard players operation NextStage AppleGrowth = BaseSpeed AppleGrowth

#Divide NextStage value by RTS value#
scoreboard players operation NextStage AppleGrowth /= RTS AppleGrowth