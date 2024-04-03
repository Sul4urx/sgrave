xp set @s[level=128..] 0 points
xp set @s[level=128..] 127 levels
execute store result score %check.player_xp sgrave.dummy run xp query @s levels
execute store result score %check_config.min_xp_lvl sgrave.dummy run data get storage sgrave config.min_xp_lvl

# execute if score %check.player_xp sgrave.dummy matches 1024.. run scoreboard players set %check.player_xp sgrave.dummy 1023
execute if score %check.player_xp sgrave.dummy >= %check_config.min_xp_lvl sgrave.dummy run function sgrave:summon_marker
execute unless score %check.player_xp sgrave.dummy >= %check_config.min_xp_lvl sgrave.dummy run xp add @s -2147483648 points