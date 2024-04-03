execute align xyz run summon minecraft:armor_stand ~0.5 ~-0.725 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["sgrave.head_model","sgrave.head_model_on_use"]}
data modify entity @e[tag=sgrave.head_model_on_use,limit=1,sort=nearest] ArmorItems[-1].tag.SkullOwner.Name set from entity @s data.sgrave.owner.name
data modify entity @e[tag=sgrave.head_model_on_use,limit=1,sort=nearest] ArmorItems[-1].tag.SkullOwner.Id set from entity @s data.sgrave.owner.UUID

execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:replaceable unless entity @e[tag=sgrave.grave,tag=!sgrave.marker_on_use,distance=..1] run setblock ~ ~ ~ dirt destroy

execute align xyz run summon interaction ~0.5 ~-0.1 ~0.5 {Tags:["sgrave.interaction"],height:0.75,width:0.75}
execute align xyz run summon text_display ~0.5 ~0.75 ~0.5 {text:'["",{"nbt": "players[-1].graves[-1].owner.name","color":"green","storage":"sgrave"},{"text":"\'s grave\\nGrave \\u00a7c#","color":"white"},{"nbt":"players[-1].graves[-1].id","storage":"sgrave","color":"gold"}]',billboard:"center",Tags:["sgrave.text_display"],shadow:1b}
data modify entity @e[tag=sgrave.head_model_on_use,limit=1,sort=nearest] Glowing set from storage sgrave config.glowing_graves

tag @e[tag=sgrave.head_model_on_use] remove sgrave.head_model_on_use