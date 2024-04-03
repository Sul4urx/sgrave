execute store result score %check.stored_id sgrave.dummy run data get storage sgrave players[-1].id
execute store result score %check.grave_stored_id sgrave.dummy run data get entity @s data.sgrave.owner.sgrave_id

execute unless score %check.stored_id sgrave.dummy = %check.grave_stored_id sgrave.dummy run data modify storage sgrave players append from storage sgrave players[0]
execute unless score %check.stored_id sgrave.dummy = %check.grave_stored_id sgrave.dummy run data remove storage sgrave players[0]

execute store result score %check.stored_id sgrave.dummy run data get storage sgrave players[-1].id
execute unless score %check.stored_id sgrave.dummy = %check.grave_stored_id sgrave.dummy run function sgrave:player_management/rotate_data/players_by_stored_id