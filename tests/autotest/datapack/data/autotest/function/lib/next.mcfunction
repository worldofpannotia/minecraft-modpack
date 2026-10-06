execute unless data storage autotest:q stages[0] run return run function autotest:lib/finish
data modify storage autotest:q stage set from storage autotest:q stages[0]
data remove storage autotest:q stages[0]
function autotest:lib/call with storage autotest:q stage
