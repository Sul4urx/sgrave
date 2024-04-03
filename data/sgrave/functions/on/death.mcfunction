scoreboard players add %int.tries_count sgrave.dummy 1

execute store result score @s sgrave.y_pos run data get entity @s Pos[1]
execute store result score %check_config.max_tries sgrave.dummy run data get storage sgrave config.max_tries

tellraw @a [{"score":{"name": "@e[tag=sgrave.marker_on_use,limit=1]","objective": "sgrave.y_pos"}}," - ",{"score":{"name": "%int.tries_count","objective": "sgrave.dummy"}}]
execute as @s at @s unless entity @p[nbt={DeathTime:1s},tag=sgrave.has_put_grave] if score @s sgrave.y_pos matches ..-65 run tp ~ -63 ~
execute as @s at @s unless entity @p[nbt={DeathTime:1s},tag=sgrave.has_put_grave] if score @s sgrave.y_pos matches 321.. positioned ~ ~-1 ~ unless entity @e[tag=sgrave.grave,tag=!sgrave.marker_on_use,distance=..1] run tp ~ 320 ~

execute as @s at @s unless entity @p[nbt={DeathTime:1s},tag=sgrave.has_put_grave] if block ~ ~-1 ~ #sgrave:grave_replaceable positioned ~ ~-1 ~ unless entity @e[tag=sgrave.grave,tag=!sgrave.marker_on_use,distance=..1] if score %int.tries_count sgrave.dummy <= %check_config.max_tries sgrave.dummy run function sgrave:move_grave_to_set_location
execute as @s at @s unless entity @p[nbt={DeathTime:1s},tag=sgrave.has_put_grave] unless block ~ ~ ~ #sgrave:grave_replaceable if score %int.tries_count sgrave.dummy <= %check_config.max_tries sgrave.dummy run function sgrave:move_grave/up
execute as @s at @s unless entity @p[nbt={DeathTime:1s},tag=sgrave.has_put_grave] if entity @e[tag=sgrave.grave,tag=!sgrave.marker_on_use,distance=..1] if score %int.tries_count sgrave.dummy <= %check_config.max_tries sgrave.dummy run function sgrave:move_grave/up

execute as @s at @s unless entity @p[nbt={DeathTime:1s},tag=sgrave.has_put_grave] unless entity @e[tag=sgrave.grave,tag=!sgrave.marker_on_use,distance=..1] if score %int.tries_count sgrave.dummy <= %check_config.max_tries sgrave.dummy run function sgrave:summon_grave