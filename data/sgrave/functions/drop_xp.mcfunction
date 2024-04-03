summon experience_orb ~ ~ ~ {Tags:["sgrave.xp"]}
data modify entity @e[type=experience_orb,tag=sgrave.xp,limit=1,sort=nearest] Value set from entity @s data.sgrave.xp.total
execute if data storage sgrave config{invuln_items:1b} run data merge entity @e[type=experience_orb,tag=sgrave.xp,limit=1,sort=nearest] {Invulnerable:1b}

execute store result score %check_config.item_despawn_time sgrave.dummy run data get storage sgrave:config item_despawn_time
execute if score %check_config.item_despawn_time sgrave.dummy matches -1 run scoreboard players set @e[type=experience_orb,tag=sgrave.xp,limit=1,sort=nearest] sgrave.despawn_time -32768
execute if score %check_config.item_despawn_time sgrave.dummy matches 0.. run scoreboard players operation @e[type=experience_orb,tag=sgrave.xp,limit=1,sort=nearest] sgrave.despawn_time = %check_config.item_despawn_time sgrave.dummy