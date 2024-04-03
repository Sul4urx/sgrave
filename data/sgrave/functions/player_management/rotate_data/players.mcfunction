execute store result score %check.id sgrave.dummy run data get storage sgrave players[-1].id
execute unless score %check.id sgrave.dummy = @s sgrave.id run data modify storage sgrave players append from storage sgrave players[0]
execute unless score %check.id sgrave.dummy = @s sgrave.id run data remove storage sgrave players[0]

execute store result score %check.id sgrave.dummy run data get storage sgrave players[-1].id
execute unless score %check.id sgrave.dummy = @s sgrave.id run function sgrave:player_management/rotate_data/players