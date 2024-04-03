tag @s add sgrave.marker_on_use
execute as @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest,nbt={interaction:{}}] on target run tag @s add sgrave.has_interacted_with_grave
execute as @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest,nbt={attack:{}}] on attacker run tag @s add sgrave.has_interacted_with_grave
scoreboard players remove @p[tag=sgrave.has_interacted_with_grave] sgrave.grave_count 1
data remove entity @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest] interaction
data remove entity @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest] attack

summon chest_minecart ~ -100 ~ {NoGravity:1b,Invulnerable:1b,Tags:["sgrave.temp.chest.1"]}
summon chest_minecart ~ -101 ~ {NoGravity:1b,Invulnerable:1b,Tags:["sgrave.temp.chest.2"]}

execute positioned ~ -100 ~ run data modify entity @e[tag=sgrave.temp.chest.1,limit=1,sort=nearest,distance=..1] Items set from entity @s data.sgrave.Items

execute positioned ~ -101 ~ as @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] run function sgrave:on/interaction_with_grave/fill_chest2
execute positioned ~ -101 ~ run function sgrave:on/interaction_with_grave/place_in_chest2

execute positioned ~ -100 ~ as @e[tag=sgrave.temp.chest.1,limit=1,sort=nearest,distance=..1] at @s run function sgrave:on/interaction_with_grave/fill_player_inv/inv1
execute positioned ~ -101 ~ as @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] at @s run function sgrave:on/interaction_with_grave/fill_player_inv/inv2

execute positioned ~ -100 ~ as @e[tag=sgrave.temp.chest.1,limit=1,sort=nearest,distance=..1] run function sgrave:on/interaction_with_grave/clear_temp_chest
execute positioned ~ -101 ~ as @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] run function sgrave:on/interaction_with_grave/clear_temp_chest

function sgrave:on/interaction_with_grave/give_xp with entity @s data.sgrave.xp

function sgrave:player_management/rotate_data/players_by_stored_id
execute store result score %check.grave_id sgrave.dummy run data get entity @s data.sgrave.id
function sgrave:player_management/rotate_data/graves
data modify storage sgrave players[-1].graves[-1].to_be_removed set value 1b
# execute as @p[tag=sgrave.has_interacted_with_grave] run function sgrave:player_management/rotate_data/players
function sgrave:player_management/rotate_data/graves_reverse
data remove storage sgrave players[-1].graves[{to_be_removed:1b}]

execute if data entity @s data.sgrave.Items[0] run function sgrave:drop_items
function sgrave:delete_grave

tag @e[tag=sgrave.has_interacted_with_grave] remove sgrave.has_interacted_with_grave
tag @e[tag=sgrave.marker_on_use] remove sgrave.marker_on_use
