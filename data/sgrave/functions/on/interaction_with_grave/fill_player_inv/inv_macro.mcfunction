$item replace entity @p[tag=sgrave.has_interacted_with_grave] $(to) from entity @s $(from)
$data remove entity @e[tag=sgrave.marker_on_use,limit=1,sort=nearest] data.sgrave.Items[{Slot:$(slot_num)b}]

# execute as @e[tag=sgrave.grave,limit=1,sort=nearest] at @s store result score @s sgrave.y_pos run data get entity @s Pos[1]
# execute as @e[tag=sgrave.grave,limit=1,sort=nearest] at @s run tellraw @a {"score": {"objective": "sgrave.y_pos","name": "@s"}}

# execute as @e[tag=sgrave.grave,limit=1,sort=nearest] at @s store result score @s sgrave.y_pos run data get entity @s Pos[0]
# execute as @e[tag=sgrave.grave,limit=1,sort=nearest] at @s run tellraw @a {"score": {"objective": "sgrave.y_pos","name": "@s"}}

# execute as @e[tag=sgrave.grave,limit=1,sort=nearest] at @s store result score @s sgrave.y_pos run data get entity @s Pos[2]
# execute as @e[tag=sgrave.grave,limit=1,sort=nearest] at @s run tellraw @a {"score": {"objective": "sgrave.y_pos","name": "@s"}}

