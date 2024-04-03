# execute as @e[tag=sgrave.interaction,sort=nearest,limit=1,distance=..1] on attacker at @s run scoreboard players remove @s sgrave.grave_count 1

kill @e[tag=sgrave.interaction,sort=nearest,limit=1,distance=..1]
execute positioned ~ ~0.75 ~ run kill @e[tag=sgrave.text_display,sort=nearest,limit=1,distance=..1]
execute positioned ~ ~-0.725 ~ run kill @e[tag=sgrave.head_model,limit=1,sort=nearest,distance=..1]

kill @s
