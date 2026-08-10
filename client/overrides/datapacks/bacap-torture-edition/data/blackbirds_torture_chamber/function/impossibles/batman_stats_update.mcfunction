scoreboard players set @s[advancements={blackbirds_torture_chamber:stuff/because_im_batman=false}] spyglass_math 0
scoreboard players operation @s[advancements={blackbirds_torture_chamber:stuff/because_im_batman=false}] spyglass_math -= @s drop_spyglass
scoreboard players operation @s[advancements={blackbirds_torture_chamber:stuff/because_im_batman=false}] spyglass_math += @s pick_up_spyglass

advancement grant @s[scores={spyglass_math=100..},advancements={blackbirds_torture_chamber:stuff/because_im_batman=false}] only blackbirds_torture_chamber:stuff/because_im_batman

advancement revoke @s[advancements={blackbirds_torture_chamber:stuff/because_im_batman=false}] only blackbirds_torture_chamber:technical/batman_stats
