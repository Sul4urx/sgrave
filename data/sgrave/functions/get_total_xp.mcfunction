xp set @s[level=1024..] 0 points
xp set @s[level=128..] 127 levels
execute store result score %check.xp.points sgrave.dummy run xp query @s points
scoreboard players operation %check.xp.total sgrave.dummy += %check.xp.points sgrave.dummy
execute as @s[level=1..] run scoreboard players add %check.xp.total sgrave.dummy 1
xp set @s 0 points
xp add @s[level=1..] -1 points
# tellraw @a ["xp:",{"score":{"name": "%check.xp.total","objective": "sgrave.dummy"}}]
execute if entity @s[level=1..] run function sgrave:get_total_xp

execute store result score %check_config.xp_multiplier sgrave.dummy run data get storage sgrave config.xp_multiplier 10000
execute if entity @s[level=0,nbt=!{XpP:0f}] store result score %check.xp.points sgrave.dummy run xp query @s points
execute if entity @s[level=0,nbt=!{XpP:0f}] run scoreboard players operation %check.xp.total sgrave.dummy += %check.xp.points sgrave.dummy
execute if entity @s[level=0,nbt=!{XpP:0f}] run scoreboard players operation %check.xp.total sgrave.dummy *= %check_config.xp_multiplier sgrave.dummy
execute if entity @s[level=0,nbt=!{XpP:0f}] run scoreboard players operation %check.xp.total sgrave.dummy /= %10000 sgrave.constant_dummy

xp set @s[level=0,nbt=!{XpP:0f}] 0 points