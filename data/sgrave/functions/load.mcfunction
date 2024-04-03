scoreboard objectives add sgrave.y_pos dummy
scoreboard objectives add sgrave.grave_count dummy
scoreboard objectives add sgrave.despawn_time dummy
scoreboard objectives add sgrave.constant_dummy dummy
scoreboard objectives add sgrave.dummy dummy 
scoreboard objectives add sgrave.id dummy
scoreboard objectives add sgrave.info trigger "Information about data pack"
scoreboard objectives add sgrave trigger "Locate last grave"
scoreboard objectives add sgrave.grave_info trigger "Information about nth grave"
execute unless score %global sgrave.id matches 1.. run scoreboard players set %global sgrave.id 0

scoreboard players set %10 sgrave.constant_dummy 10
scoreboard players set %20 sgrave.constant_dummy 20
scoreboard players set %100 sgrave.constant_dummy 100
scoreboard players set %10000 sgrave.constant_dummy 10000

function sgrave:despawning_management/main
function sgrave:main