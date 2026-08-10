# At the beginning of each day:
scoreboard players add @a bac_day_count 1

advancement grant @a[scores={bac_day_count=100..}] only blazeandcave:statistics/passing_the_time
advancement grant @a[scores={bac_day_count=365..}] only blazeandcave:statistics/happy_new_year

# # For "An Apple a Day" it is checked if an apple was eaten in the previous day
# If there wasn't one, the day score is reset
execute as @a[advancements={blazeandcave:technical/consume_apple=false}] run scoreboard players set @s bac_apple_days 0

# If there was one, the consume_apple advancement is reset, meaning players have to eat another apple on the new day
execute as @a[advancements={blazeandcave:technical/consume_apple=true}] run advancement revoke @s only blazeandcave:technical/consume_apple
