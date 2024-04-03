schedule function sgrave:main 1t
function sgrave:config_management
execute as @a at @s run function sgrave:player_management/main

scoreboard players enable @a sgrave
scoreboard players enable @a sgrave.info
scoreboard players enable @a sgrave.grave_info

execute as @a[scores={sgrave=1..}] run function sgrave:locate_last_grave
execute as @a[scores={sgrave.info=1..}] run function sul4ur:sgrave/info
execute as @a[scores={sgrave.grave_info=1..}] run function sgrave:grave_info

data remove storage sgrave graves[-257]

execute as @a[tag=!sgrave.has_put_grave,nbt={DeathTime:1s}] at @s unless data entity @s Inventory[0] run function sgrave:on/no_inventory
execute as @a[tag=!sgrave.has_put_grave,nbt={DeathTime:1s}] at @s if data entity @s Inventory[0] run function sgrave:summon_marker
execute as @e[tag=sgrave.grave] at @s run function sgrave:grave_management

tag @a[tag=sgrave.has_put_grave,nbt=!{Health:0.0f}] remove sgrave.has_put_grave

data remove storage sgrave:temp pos
data remove storage sgrave:temp get_marker_nbt
data remove storage sgrave:temp player
data remove storage sgrave temp


scoreboard objectives remove sgrave.dummy
scoreboard objectives add sgrave.dummy dummy

#execute as @a[nbt={DeathTime:1s}] run scoreboard players reset @s sgrave.death_count