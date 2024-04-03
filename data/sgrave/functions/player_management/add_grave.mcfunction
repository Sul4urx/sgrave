execute as @p[nbt={DeathTime:1s}] run function sgrave:player_management/rotate_data/players
data modify storage sgrave players[-1].graves[-1].is_last_death set value 0b

data modify storage sgrave players[-1].graves append from entity @s data.sgrave
data modify storage sgrave players[-1].graves[-1].pos set from entity @s Pos
data modify storage sgrave players[-1].graves[-1].dimension set from entity @p[nbt={DeathTime:1s}] Dimension
data modify storage sgrave players[-1].graves[-1].is_last_death set value 1b

data modify storage sgrave graves append from entity @s data.sgrave

data modify storage sgrave graves[-1].pos set from entity @s Pos
data modify storage sgrave graves[-1].dimension set from entity @p[nbt={DeathTime:1s}] Dimension

# tellraw @a {"nbt":"players[-1].graves[-1].pos","storage": "sgrave"}
# data modify storage sgrave players[-1].graves[-1].Items set from entity @s data.sgrave.Items
# data modify storage sgrave players[-1].graves[-1].xp set from entity @s data.sgrave.xp

# execute store result storage sgrave players[-1].graves[-1].id int 1 run scoreboard players get %global sgrave.grave_count
# execute store result storage sgrave graves[-1].id int 1 run scoreboard players get %global sgrave.grave_count


