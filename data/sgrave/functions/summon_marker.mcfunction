execute align xyz run summon marker ~0.5 ~ ~0.5 {Invulnerable:1b,data:{sgrave:{Items:[]}},Tags:["sgrave.grave","sgrave.marker_on_use"]}

data modify entity @e[tag=sgrave.marker_on_use,sort=nearest,limit=1,nbt=!{data:{sgrave:{owner:{UUID:[]}}}}] data.sgrave.owner.UUID set from entity @s UUID
loot spawn ~ ~ ~ loot sgrave:get_player_name_head
data modify entity @e[tag=sgrave.marker_on_use,sort=nearest,limit=1] data.sgrave.owner.name set from entity @e[type=item,nbt={Item:{tag:{sgrave:{to_get_player:1b}}}},sort=nearest,limit=1] Item.tag.SkullOwner.Name
kill @e[type=item,nbt={Item:{tag:{sgrave:{to_get_player:1b}}}}]

execute store result entity @e[tag=sgrave.marker_on_use,sort=nearest,limit=1] data.sgrave.owner.sgrave_id int 1 run scoreboard players get @s sgrave.id

data modify entity @e[tag=sgrave.marker_on_use,limit=1,sort=nearest] data.sgrave.Items set from entity @s Inventory
data remove entity @e[tag=sgrave.marker_on_use,limit=1,sort=nearest] data.sgrave.Items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]

function sgrave:get_total_xp
execute store result entity @e[tag=sgrave.marker_on_use,sort=nearest,limit=1] data.sgrave.xp.total int 1 run scoreboard players get %check.xp.total sgrave.dummy

execute as @e[tag=sgrave.marker_on_use,limit=1,sort=nearest,nbt=!{data:{sgrave:{success:1b}}}] at @s run function sgrave:on/death