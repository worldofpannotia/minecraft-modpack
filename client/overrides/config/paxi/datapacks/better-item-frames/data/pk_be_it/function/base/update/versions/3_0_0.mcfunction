#> pk_be_it:base/update/versions/3
# Update to 3.0.0

data remove storage pk.common:data Datapacks[{Name:"Better Item Frames"}]
execute unless data storage pk.common:data Temp
execute unless data storage pk.common:data Datapacks[{}] run data remove storage pk.common:data Datapacks