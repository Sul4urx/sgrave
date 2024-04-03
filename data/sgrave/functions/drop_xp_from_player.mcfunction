summon experience_orb ~ ~ ~ {Tags:["sgrave.xp"]}
function sgrave:get_total_xp
execute store result entity @e[tag=sgrave.xp,limit=1,sort=nearest] Value short 1 run scoreboard players get %check.xp.total sgrave.dummy
# execute if data storage sgrave:config {invuln_items:1b} run data merge entity @e[type=experience_orb,tag=sgrave.xp,limit=1,sort=nearest] {Invulnerable:1b}