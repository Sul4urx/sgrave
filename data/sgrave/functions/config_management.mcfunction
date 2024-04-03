execute unless data storage sgrave config{invuln_items:1b} unless data storage sgrave config{invuln_items:0b} run data modify storage sgrave config.invuln_items set value 1b
# execute unless data storage sgrave config{invuln_graves:1b} unless data storage sgrave:config {invuln_graves:0b} run data modify storage sgrave:config invuln_graves set value 1b
execute unless data storage sgrave config{glowing_graves:1b} unless data storage sgrave config{glowing_graves:1b} run data modify storage sgrave config.glowing_graves set value 1b

execute store result score %check_config.item_despawn_time sgrave.dummy run data get storage sgrave config.item_despawn_time
execute unless score %check_config.item_despawn_time sgrave.dummy matches -1.. run data modify storage sgrave config.item_despawn_time set value 600
execute unless data storage sgrave config.item_despawn_time run data modify storage sgrave config.item_despawn_time set value 600

execute store result score %check_config.min_xp_lvl sgrave.dummy run data get storage sgrave config.min_xp_lvl
execute unless score %check_config.min_xp_lvl sgrave.dummy matches 0.. run data modify storage sgrave config.min_xp_lvl set value 3
execute unless data storage sgrave config.min_xp_lvl run data modify storage sgrave config.min_xp_lvl set value 3

execute store result score %check_config.max_tries sgrave.dummy run data get storage sgrave config.max_tries
execute unless score %check_config.max_tries sgrave.dummy matches 0.. run data modify storage sgrave config.min_xp_lvl set value 500
execute unless data storage sgrave config.max_tries run data modify storage sgrave config.max_tries set value 500

execute store result score %check_config.xp_multiplier sgrave.dummy run data get storage sgrave config.xp_multiplier 10000
execute unless score %check_config.xp_multiplier sgrave.dummy matches 0..10000 run data modify storage sgrave config.xp_multiplier set value 0.9
execute unless data storage sgrave config.xp_multiplier run data modify storage sgrave config.xp_multiplier set value 0.9