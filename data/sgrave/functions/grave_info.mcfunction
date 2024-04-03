function sgrave:player_management/rotate_data/players

scoreboard players operation %check.grave_id sgrave.dummy = @s sgrave.grave_info
# data modify storage sgrave temp.graves set from storage sgrave players[-1].graves
scoreboard players set %loop_count sgrave.dummy 0
function sgrave:player_management/rotate_data/graves
# scoreboard players remove %loop_count sgrave.dummy 1
execute if score %loop_count sgrave.dummy > %check.grave_count sgrave.dummy run tellraw @s "\u00a7cThat grave doesn't exist or has already been opened."

execute if score %loop_count sgrave.dummy <= %check.grave_count sgrave.dummy run tellraw @s ["","\nGrave \u00a7c#",{"nbt":"players[-1].graves[-1].id","storage":"sgrave","color": "gold"}," Info"]
execute if score %loop_count sgrave.dummy <= %check.grave_count sgrave.dummy run tellraw @s ["  ","\u00a7bLocation: \u00a7f[",{"nbt":"players[-1].graves[-1].posI[]","separator": "\u00a7f, ","color":"gold","storage": "sgrave"},"] in ",{"nbt":"players[-1].graves[-1].dimension","storage": "sgrave","color": "green"}]
execute if score %loop_count sgrave.dummy <= %check.grave_count sgrave.dummy run tellraw @s ["  \u00a7bExperience: ",{"nbt":"players[-1].graves[-1].xp.total","color":"gold","storage": "sgrave"}," Points in total"]
execute if score %loop_count sgrave.dummy <= %check.grave_count sgrave.dummy run tellraw @s " "

execute unless score %loop_count sgrave.dummy matches 0 run function sgrave:player_management/rotate_data/graves_reverse

scoreboard players set @s sgrave.grave_info 0