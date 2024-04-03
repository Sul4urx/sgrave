data modify storage sgrave players append value {UUID:[I;],name:""}
execute store result storage sgrave players[-1].id int 1 run scoreboard players get @s sgrave.id
data modify storage sgrave players[-1].UUID set from entity @s UUID
function sgrave:player_management/get_player_name
tag @s add sgrave.is_stored
