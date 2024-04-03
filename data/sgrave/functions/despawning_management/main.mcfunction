execute as @e[scores={sgrave.despawn_time=-32767..}] at @s run function sgrave:despawning_management/decrease_timer
schedule function sgrave:despawning_management/main 20t