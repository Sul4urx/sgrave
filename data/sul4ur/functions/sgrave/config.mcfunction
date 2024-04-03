execute store result score %check_config.xp_multiplier sgrave.dummy run data get storage sgrave config.xp_multiplier 100
scoreboard players operation %check_config.xp_multiplier.int_part sgrave.dummy = %check_config.xp_multiplier sgrave.dummy
scoreboard players operation %check_config.xp_multiplier.int_part sgrave.dummy /= %100 sgrave.constant_dummy

scoreboard players operation %check_config.xp_multiplier.decimal_part sgrave.dummy = %check_config.xp_multiplier sgrave.dummy
scoreboard players operation %check_config.xp_multiplier.decimal_part sgrave.dummy %= %100 sgrave.constant_dummy


tellraw @s "\n \u00a7b\u00a7lS\u00a76\u00a7lGrave\u00a7r \u00a7bConfig"
execute if data storage sgrave config{item_despawn_time:-1} run tellraw @s ["    ",{"text": "Item despawning time:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fDetermines the despawning time of the items that are dropped from graves. \u00a77(in seconds)\n\u00a76Range: \u00a7fAny number bigger than or equal to -1 \u00a77(-1 = infinite)\n\u00a7eDefault: \u00a7f600 \u00a77seconds"}}," ",{"text": "\u00a77[\u00a7b∞\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.item_despawn_time set value "},"hoverEvent": {"action": "show_text","contents": "Click and enter a number to change the value."}}]
execute unless data storage sgrave config{item_despawn_time:-1} run tellraw @s ["    ",{"text": "Item despawning time:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fDetermines the despawning time of the items that are dropped from graves. \u00a77(in seconds)\n\u00a76Range: \u00a7fAny integer bigger than or equal to -1 \u00a77(-1 = infinite)\n\u00a7eDefault: \u00a7f600 \u00a77seconds"}}," ",{"translate": "\u00a77[%s\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.item_despawn_time set value "},"hoverEvent": {"action": "show_text","contents": "Click and enter a number to change the value."},"with":[{"nbt":"config.item_despawn_time","storage":"sgrave","color":"aqua"}]}]

tellraw @s ["    ",{"text": "Minimum XP level:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fIf a player dies without any items in their inventory, this determines the minimum xp level required to make the grave. If a player dies with no items and their XP levels are lower than the value, their grave will not be made.\n\u00a76Range: \u00a7fAny integer bigger than or equal to 0\n\u00a7eDefault: \u00a7f3 \u00a77levels"}}," ",{"translate": "\u00a77[%s\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.xp_multiplier set value "},"hoverEvent": {"action": "show_text","contents": "Click and enter a number to change the value."},"with":[{"nbt":"config.min_xp_lvl","storage":"sgrave","color":"aqua"}]}]

tellraw @s ["    ",{"text": "XP multiplier:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fDetermines the value that is multiplied with your total amount of XP when you die. Set value to 1 to avoid XP loss.\n\u00a76Range: \u00a7fAny decimal number from 0 to 1. \n\u00a7eDefault: \u00a7f0.9"}}," ",{"translate": "\u00a77[\u00a7f~%s\u00a7b.%s\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.xp_multiplier set value "},"hoverEvent": {"action": "show_text","contents": "Click and enter a number to change the value."},"with":[{"score":{"objective": "sgrave.dummy","name": "%check_config.xp_multiplier.int_part"},"color": "aqua"},{"score":{"objective": "sgrave.dummy","name": "%check_config.xp_multiplier.decimal_part"},"color":"aqua"}]}]

execute if data storage sgrave config{invuln_items:1b} run tellraw @s ["    ",{"text": "Invulnerable items:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fIf true, items that are dropped from breaking a grave will be invulnerable and can't be destroyed by things like lava or explosions. They will still be destroyed by the void.\n\u00a76Usage: \u00a7c0 = False, \u00a7a1 = True\n\u00a7eDefault: \u00a7aTrue"}}," ",{"text": "\u00a77[\u00a7aTrue\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.invuln_items set value 0b"},"hoverEvent": {"action": "show_text","contents": "Click to set value to \u00a7cfalse."}}]

execute if data storage sgrave config{invuln_items:0b} run tellraw @s ["    ",{"text": "Invulnerable items:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fIf true, items that are dropped from breaking a grave will be invulnerable and can't be destroyed by things like lava or explosions. They will still be destroyed by the void.\n\u00a76Usage: \u00a7c0 = False, \u00a7a1 = True\n\u00a7eDefault: \u00a7aTrue"}}," ",{"text": "\u00a77[\u00a7cFalse\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.invuln_items set value 1b"},"hoverEvent": {"action": "show_text","contents": "Click to set value to \u00a7atrue."}}]

execute if data storage sgrave config{glowing_graves:1b} run tellraw @s ["    ",{"text": "Glowing graves:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fIf true, graves will glow.\n\u00a76Usage: \u00a7c0 = False, \u00a7a1 = True\n\u00a7eDefault: \u00a7aTrue"}}," ",{"text": "\u00a77[\u00a7aTrue\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.glowing_graves set value 0b"},"hoverEvent": {"action": "show_text","contents": "Click to set value to \u00a7cfalse."}}]

execute if data storage sgrave config{glowing_graves:0b} run tellraw @s ["    ",{"text": "Glowing graves:","hoverEvent": {"action": "show_text","contents": "\u00a7aDescription: \u00a7fIf true, graves will glow.\n\u00a76Usage: \u00a7c0 = False, \u00a7a1 = True\n\u00a7eDefault: \u00a7aTrue"}}," ",{"text": "\u00a77[\u00a7cFalse\u00a77]","clickEvent": {"action": "suggest_command","value": "/data modify storage sgrave config.glowing_graves set value 1b"},"hoverEvent": {"action": "show_text","contents": "Click to set value to \u00a7atrue."}}]

tellraw @s {"text": "\u00a77[\u00a7bRefresh\u00a77]","clickEvent": {"action": "run_command","value": "/function sul4ur:sgrave/config"},"hoverEvent": {"action": "show_text","contents": "Click to refresh and see the changes you've made."}}

tellraw @s ""