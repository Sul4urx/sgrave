# execute as @s[nbt={data:{sgrave:{is_inside_blocks:1b}}}] if block ~ ~ ~ #minecraft:replaceable run function sgrave:summon_grave_model
# execute as @s[nbt=!{data:{sgrave:{is_inside_blocks:1b}}}] unless block ~ ~ ~ minecraft:player_head run function sgrave:on/missing_head/main
execute if data entity @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest,distance=..2] interaction run function sgrave:on/interaction_with_grave/main 
execute if data entity @e[type=interaction,limit=1,tag=sgrave.interaction,sort=nearest,distance=..2] attack run function sgrave:on/attack_grave