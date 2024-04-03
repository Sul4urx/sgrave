# execute as @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest,distance=..1] at @s on attacker run tag @s add sgrave.
function sgrave:drop_items
function sgrave:drop_xp

function sgrave:player_management/rotate_data/players_by_stored_id
execute store result score %check.grave_id sgrave.dummy run data get entity @e[tag=sgrave.marker_on_use,limit=1,sort=nearest] data.sgrave.id
function sgrave:player_management/rotate_data/graves
data modify storage sgrave players[-1].graves[-1].to_be_removed set value 1b
# execute as @p[tag=sgrave.has_interacted_with_grave] run function sgrave:player_management/rotate_data/players
function sgrave:player_management/rotate_data/graves_reverse
data remove storage sgrave players[-1].graves[{to_be_removed:1b}]


function sgrave:delete_grave
