give @s minecraft:trial_key 2
tellraw @s {"color":"green","text":" +2 ","extra":[{"translate":"item.minecraft.trial_key"}]}

give @s[advancements={minecraft:adventure/revaulting=true}] minecraft:ominous_trial_key 2
tellraw @s[advancements={minecraft:adventure/revaulting=true}] {"color":"green","text":" +2 ","extra":[{"translate":"item.minecraft.ominous_trial_key"}]}
