scoreboard players tag @p add loader
scoreboard players set @a[tag=!loader] load 7
scoreboard players set @a[tag=loader,score_load_min=0,score_load=0] load 1
effect @a[tag=loader,score_load_min=1,score_load=1] minecraft:blindness 777 77 true
effect @a[tag=loader,score_load_min=1,score_load=1] minecraft:resistance 777 77 true
effect @a[tag=loader,score_load_min=1,score_load=1] minecraft:mining_fatigue 777 77 true
effect @a[tag=loader,score_load_min=1,score_load=1] minecraft:slowness 777 77 true
gamemode 2 @a[tag=loader,score_load_min=1,score_load=1]
tp @a[tag=loader,score_load_min=1,score_load=1] 1033 180 1062
title @a[x=1033,z=1062,y=171,dy=10,tag=loader,score_load_min=1,score_load=1] actionbar [{"text":"小提醒:跑圖正在進行","color":"red","bold":true}]
effect @a[x=1033,z=1062,y=171,dy=10,tag=loader,score_load_min=1,score_load=1] minecraft:levitation 10 249 true
scoreboard players set @a[x=1033,z=1062,y=171,dy=10,tag=loader,score_load_min=1,score_load=1] load -1
scoreboard players set @a[x=1033,z=1062,y=102,dy=1,tag=loader,score_load_min=-1,score_load=-1] load 2

tp @a[tag=loader,score_load_min=2,score_load=2] 1034 180 1000
effect @a[x=1034,z=1000,y=171,dy=10,tag=loader,score_load_min=2,score_load=2] minecraft:levitation 10 249 true
title @a[x=1034,z=1000,y=171,dy=10,tag=loader,score_load_min=2,score_load=2] actionbar [{"text":"小提醒:大約50秒後將會跑圖完畢","color":"red","bold":true}]
scoreboard players set @a[x=1034,z=1000,y=171,dy=10,tag=loader,score_load_min=2,score_load=2] load -2
scoreboard players set @a[x=1034,z=1000,y=102,dy=1,tag=loader,score_load_min=-2,score_load=-2] load 3

tp @a[tag=loader,score_load_min=3,score_load=3] 1033 180 938
effect @a[x=1033,z=938,y=171,dy=10,tag=loader,score_load_min=3,score_load=3] minecraft:levitation 10 249 true
title @a[x=1033,z=938,y=171,dy=10,tag=loader,score_load_min=3,score_load=3] actionbar [{"text":"小提醒:大約40秒後將會跑圖完畢","color":"red","bold":true}]
scoreboard players set @a[x=1033,z=938,y=171,dy=10,tag=loader,score_load_min=3,score_load=3] load -3
scoreboard players set @a[x=1033,z=938,y=102,dy=1,tag=loader,score_load_min=-3,score_load=-3] load 4

tp @a[tag=loader,score_load_min=4,score_load=4] 979 180 938
effect @a[x=979,z=938,y=171,dy=10,tag=loader,score_load_min=4,score_load=4] minecraft:levitation 10 249 true
title @a[x=979,z=938,y=171,dy=10,tag=loader,score_load_min=4,score_load=4] actionbar [{"text":"小提醒:大約30秒後將會跑圖完畢","color":"red","bold":true}]
scoreboard players set @a[x=979,z=938,y=171,dy=10,tag=loader,score_load_min=4,score_load=4] load -4
scoreboard players set @a[x=979,z=938,y=102,dy=1,tag=loader,score_load_min=-4,score_load=-4] load 5

tp @a[tag=loader,score_load_min=5,score_load=5] 978 180 1000
effect @a[x=978,z=1000,y=171,dy=10,tag=loader,score_load_min=5,score_load=5] minecraft:leevitation 10 249 true
title @a[x=978,z=1000,y=171,dy=10,tag=loader,score_load_min=5,score_load=5] actionbar [{"text":"小提醒:大約20秒後將會跑圖完畢","color":"red","bold":true}]
scoreboard players set @a[x=978,z=1000,y=171,dy=10,tag=loader,score_load_min=5,score_load=5] load -5
scoreboard players set @a[x=978,z=1000,y=102,dy=1,tag=loader,score_load_min=-5,score_load=-5] load 6

tp @a[tag=loader,score_load_min=6,score_load=6] 979 180 1062
effect @a[x=979,z=1062,y=171,dy=10,tag=loader,score_load_min=6,score_load=6] minecraft:levitation 10 249 true
title @a[x=979,z=1062,y=171,dy=10,tag=loader,score_load_min=6,score_load=6] actionbar [{"text":"小提醒:大約10秒後將會跑圖完畢","color":"red","bold":true}]
scoreboard players set @a[x=979,z=1062,y=171,dy=10,tag=loader,score_load_min=6,score_load=6] load -6
scoreboard players set @a[x=979,z=1062,y=102,dy=1,tag=loader,score_load_min=-6,score_load=-6] load -7

effect @a[x=979,z=1062,y=102,dy=1,tag=loader,score_load_min=-7,score_load=-7] minecraft:leevitation 0 0 true
scoreboard players set @a[x=979,z=1062,y=102,dy=1,tag=loader,score_load_min=-7,score_load=-7] load 7
function windfire:lucky/setting/load/finish if @a[tag=loader,score_load_min=7,score_load=7]



