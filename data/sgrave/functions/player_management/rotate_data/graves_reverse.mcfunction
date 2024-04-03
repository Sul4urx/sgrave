scoreboard players remove %loop_count sgrave.dummy 1
data modify storage sgrave players[-1].graves prepend from storage sgrave players[-1].graves[-1]
data remove storage sgrave players[-1].graves[-1]

execute if score %loop_count sgrave.dummy matches 1.. run function sgrave:player_management/rotate_data/graves_reverse