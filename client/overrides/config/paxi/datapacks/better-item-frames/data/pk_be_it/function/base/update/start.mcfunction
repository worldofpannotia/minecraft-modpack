#> pk_be_it:base/update/start
# Update the current data pack if needed

# Update to 3.0.0
execute unless score $pk.be_it.version pk.value matches 30000.. run function pk_be_it:base/update/versions/3_0_0

# Set the data pack current version score
scoreboard players set $pk.be_it.version pk.value 30003
data modify storage pk:common installed_datapacks[{id:"better_item_frames"}].version set value "3.0.3"