give @s[advancements={blazeandcave:adventure/vault_hunter=false}] minecraft:ominous_trial_key 1
give @s[advancements={blazeandcave:adventure/vault_hunter=true}] minecraft:ominous_trial_key 3
tellraw @s[advancements={blazeandcave:adventure/vault_hunter=false}] {"color":"green","text":" +1 ","extra":[{"translate":"item.minecraft.ominous_trial_key"}]}
tellraw @s[advancements={blazeandcave:adventure/vault_hunter=true}] {"color":"green","text":" +3 ","extra":[{"translate":"item.minecraft.ominous_trial_key"}]}
