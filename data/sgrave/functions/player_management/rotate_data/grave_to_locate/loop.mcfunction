execute if score @s sgrave matches 2.. run data modify storage sgrave temp.graves prepend from storage sgrave temp.graves[-1]
execute if score @s sgrave matches 2.. run data remove storage sgrave temp.graves[-1]

scoreboard players remove @s sgrave 1

execute if score @s sgrave matches 2.. run function sgrave:player_management/rotate_data/grave_to_locate/loop