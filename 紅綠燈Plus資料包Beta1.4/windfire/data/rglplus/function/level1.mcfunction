tag @e[tag=core,tag=rglplus] add rgl1.0

forceload add 100 100 100 100
forceload add 1191 1218 1191 1218
forceload add -830 600 -830 600
forceload add 487 624 487 624
forceload add 445 -955 445 -955
forceload add 752 -1949 752 -1949
forceload add 2260 165 2260 165
forceload add 3147 602 3147 602
forceload add 4120 570 4120 570

tp 10000007-0-7-0-000700000007 1191.0 52 1218.0
summon minecraft:text_display -830 57 600 {Tags:["rglplus","map2spawn","spawn"],text:'{"text":"","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;536870919,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}
summon minecraft:text_display 487.0 18 624.0 {Tags:["rglplus","map3spawn","spawn"],text:'{"text":"","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;805306375,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}
summon minecraft:text_display 445 60 -955 {Tags:["rglplus","map4spawn","spawn"],text:'{"text":"","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;1073741831,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}
summon minecraft:text_display 752 43.5 -1949 {Tags:["rglplus","map5spawn","spawn"],text:'{"text":"","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;1342177287,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}
summon minecraft:text_display 2260 33 165 {Tags:["rglplus","map6spawn","spawn"],text:'{"text":"","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;1610612743,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}
summon minecraft:text_display 3147 26 602 {Tags:["rglplus","map7spawn","spawn"],text:'{"text":"","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;1879048199,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}
summon minecraft:text_display 4120 52 570 {Tags:["rglplus","map8spawn","spawn"],text:'{"text":"","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;-2147483641,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}

data merge entity 10000007-0-7-0-000700000007 {CustomName:"{\"text\":\"兒童公園\"}",CustomNameVisible:0b}
data merge entity 20000007-0-7-0-000700000007 {CustomName:"{\"text\":\"韓國海港城\"}",CustomNameVisible:0b}
data merge entity 30000007-0-7-0-000700000007 {CustomName:"{\"text\":\"法蘭克福\"}",CustomNameVisible:0b}
data merge entity 40000007-0-7-0-000700000007 {CustomName:"{\"text\":\"沙漠小鎮\"}",CustomNameVisible:0b}
data merge entity 50000007-0-7-0-000700000007 {CustomName:"{\"text\":\"洞穴基地\"}",CustomNameVisible:0b}
data merge entity 60000007-0-7-0-000700000007 {CustomName:"{\"text\":\"英格蘭高中\"}",CustomNameVisible:0b}
data merge entity 70000007-0-7-0-000700000007 {CustomName:"{\"text\":\"現代社區\"}",CustomNameVisible:0b}
data merge entity 80000007-0-7-0-000700000007 {CustomName:"{\"text\":\"印加古城\"}",CustomNameVisible:0b}

scoreboard players set 10000007-0-7-0-000700000007 rglplusplaymap 1
scoreboard players set 20000007-0-7-0-000700000007 rglplusplaymap 2
scoreboard players set 30000007-0-7-0-000700000007 rglplusplaymap 3
scoreboard players set 40000007-0-7-0-000700000007 rglplusplaymap 4
scoreboard players set 50000007-0-7-0-000700000007 rglplusplaymap 5
scoreboard players set 60000007-0-7-0-000700000007 rglplusplaymap 6
scoreboard players set 70000007-0-7-0-000700000007 rglplusplaymap 7
scoreboard players set 80000007-0-7-0-000700000007 rglplusplaymap 8
scoreboard players set 7-0-7-0-000100000000 rglplusplaymap 8

tp 10000007-0-7-0-000700000007 1191.0 52 1218.0
tp 20000007-0-7-0-000700000007 -830 57 600
tp 30000007-0-7-0-000700000007 487.0 18 624.0
tp 40000007-0-7-0-000700000007 445 60 -955
tp 50000007-0-7-0-000700000007 752 43.5 -1949
tp 60000007-0-7-0-000700000007 2260 33 165
tp 70000007-0-7-0-000700000007 3147 26 602
tp 80000007-0-7-0-000700000007 4120 52 570

rotate 20000007-0-7-0-000700000007 180 0
rotate 30000007-0-7-0-000700000007 -175 -30
rotate 40000007-0-7-0-000700000007 75 -15
rotate 50000007-0-7-0-000700000007 45 0
rotate 60000007-0-7-0-000700000007 135 -20
rotate 70000007-0-7-0-000700000007 90 -20
rotate 80000007-0-7-0-000700000007 -90 0

tellraw @a ["",{"text":"RGL 基礎場景設定導入成功","color":"gold","bold":true}]
