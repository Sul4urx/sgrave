summon item ~ ~ ~ {Item:{id:"minecraft:clock",tag:{sgrave:{temp_item:1b}},Count:1b},Age:-32768}

execute if data storage sgrave config{invuln_items:1b} run data merge entity @e[nbt={Item:{tag:{sgrave:{temp_item:1b}}}},limit=1,sort=nearest] {Invulnerable:1b}

execute store result score %check_config.item_despawn_time sgrave.dummy run data get storage sgrave config.item_despawn_time
execute if score %check_config.item_despawn_time sgrave.dummy matches -1 run scoreboard players set @e[nbt={Item:{tag:{sgrave:{temp_item:1b}}}},limit=1,sort=nearest] sgrave.despawn_time -32768
execute if score %check_config.item_despawn_time sgrave.dummy matches 0.. run scoreboard players operation @e[nbt={Item:{tag:{sgrave:{temp_item:1b}}}},limit=1,sort=nearest] sgrave.despawn_time = %check_config.item_despawn_time sgrave.dummy

data modify entity @e[nbt={Item:{tag:{sgrave:{temp_item:1b}}}},limit=1,sort=nearest] Item set from entity @s data.sgrave.Items[-1]
data remove entity @s data.sgrave.Items[-1]

kill @e[nbt={Item:{tag:{sgrave:{temp_item:1b}}}}]
execute if data entity @s data.sgrave.Items[0] run function sgrave:drop_items
#execute unless data entity @s data.sgrave.Items[0] run function sgrave:delete_grave
# execute unless entity @e[tag=sgrave.xp,distance=..1] run function sgrave:summon_xp
