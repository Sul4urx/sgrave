function sgrave:player_management/rotate_data/players

execute store result score %check.graves_count sgrave.dummy if data storage sgrave players[-1].graves[]

execute if score %check.graves_count sgrave.dummy >= @s sgrave run function sgrave:player_management/rotate_data/grave_to_locate/main

execute if score %check.graves_count sgrave.dummy >= @s sgrave run tellraw @s [{"text": "<SGrave> "},"Grave \u00a7c#",{"nbt":"temp.graves[-1].id","storage":"sgrave","color": "gold"},{"text":" is at [","color": "white"},{"nbt":"temp.graves[-1].posI[]","storage": "sgrave","separator": "\u00a7f, \u00a7r","color": "gold"},{"text": "] in ","color": "white"},{"nbt": "temp.graves[-1].dimension","storage": "sgrave","color":"green"},"\u00a7f."]

execute if score %check.graves_count sgrave.dummy < @s sgrave run tellraw @s "\u00a7cThat grave doesn't exist or has already been opened."

scoreboard players set @s sgrave 0