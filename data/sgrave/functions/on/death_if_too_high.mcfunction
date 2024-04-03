scoreboard players add %int.tries_count sgrave.dummy 1

execute if score @s sgrave.y_pos matches -64..320 anchored feet unless block ~ ~ ~ #minecraft:replaceable run function sgrave:move_grave/down
execute if score @s sgrave.y_pos matches -64..320 if score %int.tries_count sgrave.dummy <= %check_config.max_tries sgrave.dummy anchored feet if block ~ ~ ~ #minecraft:replaceable run function sgrave:summon_grave
execute if score %int.tries_count sgrave.dummy > %check_config.max_tries sgrave.dummy run function sgrave:drop_items 