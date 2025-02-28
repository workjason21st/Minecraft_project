bossbar remove newbingo:yellow
bossbar remove newbingo:red
bossbar remove newbingo:green
bossbar remove newbingo:aqua
bossbar remove newbingo:load
bossbar remove newbingo:lobby

team remove aqua
team remove green
team remove red
team remove yellow
team remove target1
team remove target2
team remove target3
team remove target4
team remove target5
team remove target6
team remove target7
team remove target8
team remove target9
team remove target10
team remove target11
team remove target12
team remove target13
team remove target14
team remove target15
#------------------------------------
#["",{"text":"green\uff1a","color":"dark_green"},{"score":{"name":"@s","objective":"teampoint"},"color":"dark_green"}]
#{"score":{"name":"*","objective":"obj"}}
bossbar add newbingo:yellow ["",{"text":"黃隊分數： ","color":"yellow"},{"score":{"name":"@e[tag=teamyellow,limit=1]","objective":"teampoint"},"color":"yellow","bold":"true"}]
bossbar add newbingo:red ["",{"text":"紅隊分數： ","color":"red"},{"score":{"name":"@e[tag=teamred,limit=1]","objective":"teampoint"},"color":"red","bold":"true"}]
bossbar add newbingo:green ["",{"text":"綠隊分數： ","color":"green"},{"score":{"name":"@e[tag=teamgreen,limit=1]","objective":"teampoint"},"color":"green","bold":"true"}]
bossbar add newbingo:aqua ["",{"text":"藍隊分數： ","color":"aqua"},{"score":{"name":"@e[tag=teamaqua,limit=1]","objective":"teampoint"},"color":"aqua","bold":"true"}]
bossbar set newbingo:yellow color yellow
bossbar set newbingo:red color red
bossbar set newbingo:green color green
bossbar set newbingo:aqua color blue

bossbar add newbingo:load "載圖進度"
bossbar set newbingo:load color pink
bossbar set newbingo:load style progress
bossbar set newbingo:load max 500
bossbar set newbingo:load value 0
bossbar set newbingo:load players @a
bossbar set newbingo:load visible false

bossbar add newbingo:lobby ["",{"text":"獲勝分數： ","color":"light_purple"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode1point"},"bold":true,"color":"light_purple"},{"text":"    遊戲時長： ","color":"yellow"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode2time"},"bold":true,"color":"yellow"}]
bossbar set newbingo:lobby color white
bossbar set newbingo:lobby style progress
bossbar set newbingo:lobby players @a

team add aqua "青隊"
team add green "綠隊"
team add red "紅隊"
team add yellow "黃隊"
team add target1
team add target2
team add target3
team add target4
team add target5
team add target6
team add target7
team add target8
team add target9
team add target10
team add target11
team add target12
team add target13
team add target14
team add target15
team add times
team add time

team modify times color gray
team modify time color light_purple
team modify aqua color aqua
team modify green color green
team modify red color red
team modify yellow color yellow
#team modify target1 color dark_blue
#team modify target2 color dark_blue
#team modify target10 color dark_blue
#team modify target3 color dark_purple
#team modify target4 color dark_purple
#team modify target8 color dark_purple
#team modify target9 color dark_purple

team modify yellow seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify aqua seeFriendlyInvisibles false

team join times 經過時間(秒)
team join time 經過時間(分)
team join time 獲勝分數
team join time 遊戲中止時間
#
team join yellow @e[tag=teamyellow]
team join red @e[tag=teamred]
team join green @e[tag=teamgreen]
team join aqua @e[tag=teamaqua]
