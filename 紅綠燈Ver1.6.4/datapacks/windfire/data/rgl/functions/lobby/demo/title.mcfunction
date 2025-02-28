execute unless score title rgldemo matches 1.. run fill 118 52 120 114 56 120 minecraft:barrier destroy

execute unless score title rgldemo matches 1.. run scoreboard players set title rgldemo 321
execute if score title rgldemo matches 240 run bossbar set rgl:demo visible true
execute if score title rgldemo matches 240 run bossbar set rgl:demo2 visible true
execute if score title rgldemo matches 240 run scoreboard players set @e[tag=demotick1] rgltime 50
execute if score title rgldemo matches 240 run scoreboard players set @e[tag=demotick2] rgltime 20
execute if score title rgldemo matches 1..240 as @e[tag=demotick,predicate=rgl:titledemo] run scoreboard players remove @s rgltime 1
execute if score title rgldemo matches 1..240 store result bossbar rgl:demo value run scoreboard players get @e[tag=demotick1,limit=1] rgltime
execute if score title rgldemo matches 1..240 store result bossbar rgl:demo2 value run scoreboard players get @e[tag=demotick2,limit=1] rgltime
#顯示
execute if score title rgldemo matches 320 run summon minecraft:area_effect_cloud 116 51.0 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"壞孩子的畫面下方會顯示與鬼的距離\",\"color\":\"gold\"}",CustomNameVisible:1b,Duration:80}
execute if score title rgldemo matches 320 run summon minecraft:area_effect_cloud 116 50.5 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"還有紅燈剩餘量、死亡剩餘數等資訊\",\"color\":\"gold\"}",CustomNameVisible:1b,Duration:80}
execute if score title rgldemo matches 240 run summon minecraft:area_effect_cloud 116 51.0 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"畫面上方則是會顯示剩餘時間\",\"color\":\"dark_purple\"}",CustomNameVisible:1b,Duration:60}
execute if score title rgldemo matches 180 run summon minecraft:area_effect_cloud 116 51.0 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"還有每段時間需要碰到鬼的顯示剩餘時間\",\"color\":\"dark_purple\"}",CustomNameVisible:1b,Duration:60}
execute if score title rgldemo matches 180 run summon minecraft:area_effect_cloud 116 51.5 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"若是沒有達成會讓離鬼最遠的孩子死亡\",\"color\":\"dark_purple\"}",CustomNameVisible:1b,Duration:60}
execute if score title rgldemo matches 120 run summon minecraft:area_effect_cloud 116 51.0 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"而畫面右手邊是顯示關於場上的隊伍資訊\",\"color\":\"aqua\"}",CustomNameVisible:1b,Duration:60}
execute if score title rgldemo matches 60 run summon minecraft:area_effect_cloud 116 51.0 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"玩家們需要隨時注意這些資訊\",\"color\":\"aqua\"}",CustomNameVisible:1b,Duration:60}
execute if score title rgldemo matches 60 run summon minecraft:area_effect_cloud 116 51.5 119 {Tags:["rgl","lobby0","title","explain"],CustomName:"{\"text\":\"勝敗就在一瞬間，一不注意就結束了\",\"color\":\"aqua\"}",CustomNameVisible:1b,Duration:60}
#鬼 孩 116.5 122.5
execute if score title rgldemo matches 321 run summon armor_stand 115 52.00 123 {Team:good,Tags:["rgl","lobby0","title","Ghost"],Rotation:[-180f],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{id:"leather_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"WindFire_tw"}}],HandItems:[{id:"golden_sword",Count:1b},{}],CustomName:"{\"text\":\"工具鬼\",\"color\":\"yellow\",\"bold\":\"true\"}",CustomNameVisible:1b,Pose:{Head:[8f,0f,0f],LeftLeg:[10f,0f,0f],RightLeg:[343f,0f,0f],LeftArm:[247f,0f,0f],RightArm:[0.1f,0f,0f]}}
execute if score title rgldemo matches 321 run summon armor_stand 117 52.00 123 {Team:bad,Tags:["rgl","lobby0","title","Child"],Rotation:[-180f],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{id:"leather_chestplate",Count:1b},{id:"skeleton_skull",Count:1b}],HandItems:[{id:"red_concrete",Count:1b},{}],CustomName:"{\"text\":\"工具壞孩子\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:1b,Pose:{Head:[8f,0f,0f],LeftLeg:[352f,0f,0f],RightLeg:[16f,0f,0f],LeftArm:[111f,-40f,0f],RightArm:[318f,0f,0f]}}
execute if score title rgldemo matches 320 run summon area_effect_cloud 116 51 119 {Tags:["rgl","lobby0","title","demotick","demotick1"],PortalCooldown:320,Duration:320}
execute if score title rgldemo matches 320 run summon area_effect_cloud 116 51 119 {Tags:["rgl","lobby0","title","demotick","demotick2"],PortalCooldown:320,Duration:320}
#行動
execute if score title rgldemo matches 1..320 as @e[tag=demotick1,predicate=rgl:titledis] run function rgl:lobby/dis/dis
execute if score title rgldemo matches 1..320 as @a[team=good,scores={sqrt=-1..2147483647}] at @s run title @s actionbar ["",{"text":"距離最近孩子的格數： ","color":"red"},{"score":{"name":"@s","objective":"sqrt"},"bold":true,"color":"dark_red"}]
execute if score title rgldemo matches 1..320 as @a[team=bad,scores={sqrt=-1..2147483647}] at @s run title @s actionbar ["",{"text":"距離最近的鬼格數： ","color":"green"},{"score":{"name":"@s","objective":"sqrt"},"bold":true,"color":"dark_green"},{"text":"    你的紅燈剩餘次數： (展示用)","color":"red"},{"text":"    全隊的死亡剩餘次數： (展示用)","color":"blue"}]
execute if score title rgldemo matches 1..240 run bossbar set rgl:demo name ["",{"text":"(展示用)時間倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=demotick1,limit=1]","objective":"rgltime"},"bold":true,"color":"gold"}]
execute if score title rgldemo matches 1..240 run bossbar set rgl:demo2 name ["",{"text":"(展示用)接近鬼7格內 剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=demotick2,limit=1]","objective":"rgltime"},"bold":true,"color":"blue"}]
execute if score title rgldemo matches 120 run scoreboard objectives setdisplay sidebar rgldemolist
#
scoreboard players remove title rgldemo 1
execute if score title rgldemo matches 1.. run schedule function rgl:lobby/demo/title 1t
execute if score title rgldemo matches 0 run scoreboard objectives setdisplay sidebar
execute if score title rgldemo matches 0 run bossbar set rgl:demo visible false
execute if score title rgldemo matches 0 run bossbar set rgl:demo2 visible false
execute if score title rgldemo matches 0 run kill @e[tag=title]
execute if score title rgldemo matches 0 run fill 118 52 120 114 56 120 minecraft:green_concrete
execute if score title rgldemo matches 0 run setblock 116 52 119 minecraft:jungle_wall_sign[facing=north]
execute if score title rgldemo matches 0 run data merge block 116 52 119 {Text2: "{\"text\":\"遊戲畫面說明\",\"color\":\"gold\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function rgl:lobby/demo/title\"}}",Text4: "{\"text\":\"(點擊查看)\"}"}
