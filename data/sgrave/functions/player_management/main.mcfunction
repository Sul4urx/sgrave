execute as @a[tag=!sgrave.checked] run function sgrave:player_management/set_id
execute as @a[tag=!sgrave.is_stored] run function sgrave:player_management/add_player
# execute as @e[tag=sgrave.player_storage] at @s unless entity @p[distance=..1] run function sgrave:player_management/no_near_player_as_marker

# tag @s add sgrave.player_on_use

# execute anchored eyes as @e[type=marker,tag=sgrave.player_storage,distance=..1,limit=1,sort=nearest] unless score @s sgrave.id = @p[tag=sgrave.player_on_use] sgrave.id run summon marker ~ ~ ~ {Tags:["sgrave.player_storage","sgrave.marker_storage_on_use"]}
# execute anchored eyes unless entity @e[type=marker,tag=sgrave.player_storage,distance=..1,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["sgrave.player_storage","sgrave.marker_storage_on_use"]}
# execute as @e[tag=sgrave.marker_storage_on_use] at @s if data storage sgrave:temp get_marker_nbt run data modify entity @s data.sgrave set from storage sgrave:temp get_marker_nbt
# scoreboard players operation @e[tag=sgrave.marker_storage_on_use] sgrave.id = @s sgrave.id

# tag @e[type=marker,tag=sgrave.marker_storage_on_use] remove sgrave.marker_storage_on_use