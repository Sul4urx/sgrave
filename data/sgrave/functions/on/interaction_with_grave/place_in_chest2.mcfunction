execute if data entity @s data.sgrave.Items[{Slot:27b}] unless data entity @s data.sgrave.Items[{Slot:27b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:0b}].tag
execute if data entity @s data.sgrave.Items[{Slot:28b}] unless data entity @s data.sgrave.Items[{Slot:28b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:1b}].tag
execute if data entity @s data.sgrave.Items[{Slot:29b}] unless data entity @s data.sgrave.Items[{Slot:29b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:2b}].tag
execute if data entity @s data.sgrave.Items[{Slot:30b}] unless data entity @s data.sgrave.Items[{Slot:30b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:3b}].tag
execute if data entity @s data.sgrave.Items[{Slot:31b}] unless data entity @s data.sgrave.Items[{Slot:31b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:4b}].tag
execute if data entity @s data.sgrave.Items[{Slot:32b}] unless data entity @s data.sgrave.Items[{Slot:32b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:5b}].tag
execute if data entity @s data.sgrave.Items[{Slot:33b}] unless data entity @s data.sgrave.Items[{Slot:33b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:6b}].tag
execute if data entity @s data.sgrave.Items[{Slot:34b}] unless data entity @s data.sgrave.Items[{Slot:34b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:7b}].tag
execute if data entity @s data.sgrave.Items[{Slot:35b}] unless data entity @s data.sgrave.Items[{Slot:35b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:8b}].tag
execute if data entity @s data.sgrave.Items[{Slot:-106b}] unless data entity @s data.sgrave.Items[{Slot:-106b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:10b}].tag
execute if data entity @s data.sgrave.Items[{Slot:100b}] unless data entity @s data.sgrave.Items[{Slot:100b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:20b}].tag
execute if data entity @s data.sgrave.Items[{Slot:101b}] unless data entity @s data.sgrave.Items[{Slot:101b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:21b}].tag
execute if data entity @s data.sgrave.Items[{Slot:102b}] unless data entity @s data.sgrave.Items[{Slot:102b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:22b}].tag
execute if data entity @s data.sgrave.Items[{Slot:103b}] unless data entity @s data.sgrave.Items[{Slot:103b}].tag run data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:23b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:0b}].id set from entity @s data.sgrave.Items[{Slot:27b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:0b}].Count set from entity @s data.sgrave.Items[{Slot:27b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:0b}].tag set from entity @s data.sgrave.Items[{Slot:27b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:1b}].id set from entity @s data.sgrave.Items[{Slot:28b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:1b}].Count set from entity @s data.sgrave.Items[{Slot:28b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:1b}].tag set from entity @s data.sgrave.Items[{Slot:28b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:2b}].id set from entity @s data.sgrave.Items[{Slot:29b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:2b}].Count set from entity @s data.sgrave.Items[{Slot:29b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:2b}].tag set from entity @s data.sgrave.Items[{Slot:29b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:3b}].id set from entity @s data.sgrave.Items[{Slot:30b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:3b}].Count set from entity @s data.sgrave.Items[{Slot:30b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:3b}].tag set from entity @s data.sgrave.Items[{Slot:30b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:4b}].id set from entity @s data.sgrave.Items[{Slot:31b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:4b}].Count set from entity @s data.sgrave.Items[{Slot:31b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:4b}].tag set from entity @s data.sgrave.Items[{Slot:31b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:5b}].id set from entity @s data.sgrave.Items[{Slot:32b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:5b}].Count set from entity @s data.sgrave.Items[{Slot:32b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:5b}].tag set from entity @s data.sgrave.Items[{Slot:32b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:6b}].id set from entity @s data.sgrave.Items[{Slot:33b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:6b}].Count set from entity @s data.sgrave.Items[{Slot:33b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:6b}].tag set from entity @s data.sgrave.Items[{Slot:33b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:7b}].id set from entity @s data.sgrave.Items[{Slot:34b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:7b}].Count set from entity @s data.sgrave.Items[{Slot:34b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:7b}].tag set from entity @s data.sgrave.Items[{Slot:34b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:8b}].id set from entity @s data.sgrave.Items[{Slot:35b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:8b}].Count set from entity @s data.sgrave.Items[{Slot:35b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:8b}].tag set from entity @s data.sgrave.Items[{Slot:35b}].tag


data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:10b}].id set from entity @s data.sgrave.Items[{Slot:-106b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:10b}].Count set from entity @s data.sgrave.Items[{Slot:-106b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:10b}].tag set from entity @s data.sgrave.Items[{Slot:-106b}].tag


data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:20b}].id set from entity @s data.sgrave.Items[{Slot:100b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:20b}].Count set from entity @s data.sgrave.Items[{Slot:100b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:20b}].tag set from entity @s data.sgrave.Items[{Slot:100b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:21b}].id set from entity @s data.sgrave.Items[{Slot:101b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:21b}].Count set from entity @s data.sgrave.Items[{Slot:101b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:21b}].tag set from entity @s data.sgrave.Items[{Slot:101b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:22b}].id set from entity @s data.sgrave.Items[{Slot:102b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:22b}].Count set from entity @s data.sgrave.Items[{Slot:102b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:22b}].tag set from entity @s data.sgrave.Items[{Slot:102b}].tag

data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:23b}].id set from entity @s data.sgrave.Items[{Slot:103b}].id
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:23b}].Count set from entity @s data.sgrave.Items[{Slot:103b}].Count
data modify entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{Slot:23b}].tag set from entity @s data.sgrave.Items[{Slot:103b}].tag

data remove entity @e[tag=sgrave.temp.chest.2,limit=1,sort=nearest,distance=..1] Items[{id:"minecraft:clock",tag:{sgrave:{temp_item:1b}}}]