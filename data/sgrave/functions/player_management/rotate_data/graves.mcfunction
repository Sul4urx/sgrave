execute store result score %check.grave_count sgrave.dummy if data storage sgrave players[-1].graves[]
execute store result score %check.id sgrave.dummy run data get storage sgrave players[-1].graves[-1].id
execute unless score %check.id sgrave.dummy = %check.grave_id sgrave.dummy run scoreboard players add %loop_count sgrave.dummy 1
execute unless score %check.id sgrave.dummy = %check.grave_id sgrave.dummy run data modify storage sgrave players[-1].graves append from storage sgrave players[-1].graves[0]
execute unless score %check.id sgrave.dummy = %check.grave_id sgrave.dummy run data remove storage sgrave players[-1].graves[0]

execute store result score %check.id sgrave.dummy run data get storage sgrave players[-1].graves[-1].id
execute unless score %check.id sgrave.dummy = %check.grave_id sgrave.dummy if score %check.grave_count sgrave.dummy >= %loop_count sgrave.dummy run function sgrave:player_management/rotate_data/graves