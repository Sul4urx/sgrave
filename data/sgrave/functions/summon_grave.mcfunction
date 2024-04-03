
data modify entity @s data.sgrave.posI set value [I;0,0,0]
execute store result entity @s data.sgrave.posI[0] int 1 run data get entity @s Pos[0]
execute store result entity @s data.sgrave.posI[1] int 1 run data get entity @s Pos[1]
execute store result entity @s data.sgrave.posI[2] int 1 run data get entity @s Pos[2]

# execute store result score %check.xp.lvl sgrave.dummy run xp query @p[nbt={DeathTime:1s}] levels
# execute store result score %check.xp.p sgrave.dummy run xp query @p[nbt={DeathTime:1s}] points

# execute store result entity @s data.sgrave.xp.lvl int 1 run scoreboard players get %check.xp.lvl sgrave.dummy
# execute store result entity @s data.sgrave.xp.p int 1 run scoreboard players get %check.xp.p sgrave.dummy

# execute store result entity @s data.sgrave.xp.point int 1 run xp query @p[nbt={DeathTime:1s}] points

data modify entity @s data.sgrave.success set value 1b
tag @p[nbt={DeathTime:1s}] add sgrave.has_put_grave
clear @p[nbt={DeathTime:1s}]
# xp set @p[nbt={DeathTime:1s}] 0 levels
# xp set @p[nbt={DeathTime:1s}] 0 points
scoreboard players add @p[nbt={DeathTime:1s}] sgrave.grave_count 1
scoreboard players add %global sgrave.grave_count 1

execute store result entity @s data.sgrave.id int 1 run scoreboard players get %global sgrave.grave_count
function sgrave:player_management/add_grave
execute as @p[nbt={DeathTime:1s}] run function sgrave:player_management/rotate_data/players
scoreboard players set @p[nbt={DeathTime:1s}] sgrave 1

function sgrave:summon_grave_model
tag @s remove sgrave.marker_on_use