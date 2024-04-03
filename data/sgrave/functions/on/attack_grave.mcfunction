tag @s add sgrave.marker_on_use

execute as @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest,distance=..1] at @s on attacker unless predicate sgrave:is_sneaking as @e[tag=sgrave.marker_on_use,limit=1,sort=nearest] at @s run function sgrave:on/interaction_with_grave/main
execute as @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest,distance=..1] at @s on attacker if predicate sgrave:is_sneaking as @e[tag=sgrave.marker_on_use,limit=1,sort=nearest] at @s run function sgrave:on/sneak_attack_grave
