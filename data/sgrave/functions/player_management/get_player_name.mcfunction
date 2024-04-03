loot spawn ~ -100 ~ loot sgrave:get_player_name_head
execute positioned ~ -100 ~ as @e[type=item,nbt={Item:{tag:{sgrave:{to_get_player:1b}}}},distance=..1] run data modify storage sgrave players[-1].name set from entity @s Item.tag.SkullOwner.Name
execute positioned ~ -100 ~ run kill @e[type=item,nbt={Item:{tag:{sgrave:{to_get_player:1b}}}},distance=..1]
