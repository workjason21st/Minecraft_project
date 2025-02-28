team remove human
team remove humanred
team remove ghost
team remove spe
team remove red
bossbar remove rglplus:time
bossbar remove rglplus:people
#------------------------------------
bossbar add rglplus:time ["",{"text":"剩餘時間： ","color":"light_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"rglplustime"},"bold":true,"color":"gold"},{"text":" ： ","color":"yellow"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
bossbar set rglplus:time color red
bossbar set rglplus:time style notched_20
bossbar set rglplus:time max 500
bossbar set rglplus:time value 500
bossbar set rglplus:time players @a
bossbar set rglplus:time visible false
bossbar add rglplus:people ["",{"text":"存活人數： ","color":"gold","bold":true},{"score":{"name":"@e[tag=core,tag=rglplus,limit=1]","objective":"laster"},"bold":true,"color":"gold"},{"text":"人","color":"gold","bold":true},{"text":" / ","color":"black"},{"score":{"name":"@e[tag=core,tag=rglplus,limit=1]","objective":"greener"},"bold":true,"color":"green"},{"text":"綠燈","color":"green"},{"text":" / ","color":"black"},{"score":{"name":"@e[tag=core,tag=rglplus,limit=1]","objective":"reder"},"bold":true,"color":"red"},{"text":"紅燈","color":"red"}]
bossbar set rglplus:people color green
bossbar set rglplus:people style notched_6
bossbar set rglplus:people max 10
bossbar set rglplus:people value 10
bossbar set rglplus:people players @a
bossbar set rglplus:people visible false
#bossbar add rglplus:touch ["",{"text":"接近鬼剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=touchtick,limit=1]","objective":"rglplustime"},"bold":true,"color":"blue"}]
#bossbar set rglplus:touch color blue
#bossbar set rglplus:touch style progress
#bossbar set rglplus:touch max 500
#bossbar set rglplus:touch value 500
#bossbar set rglplus:touch players @a
#bossbar set rglplus:touch visible false
#bossbar add rglplus:demo ["",{"text":"展示用時間倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=demotick,limit=1]","objective":"rglplustime"},"bold":true,"color":"gold"}]
#bossbar set rglplus:demo color red
#bossbar set rglplus:demo style progress
#bossbar set rglplus:demo max 50
#bossbar set rglplus:demo value 50
#bossbar set rglplus:demo players @a
#bossbar set rglplus:demo visible false
#bossbar add rglplus:demo2 ["",{"text":"接近鬼剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=demotick2,limit=1]","objective":"rglplustime"},"bold":true,"color":"blue"}]
#bossbar set rglplus:demo2 color blue
#bossbar set rglplus:demo2 style progress
#bossbar set rglplus:demo2 max 20
#bossbar set rglplus:demo2 value 20
#bossbar set rglplus:demo2 players @a
#bossbar set rglplus:demo2 visible false
#壞孩子跑給鬼追
#team modify human displayName
team add human "壞孩子"
team add humanred "紅燈壞孩子"
team add ghost "鬼"
team add spe "看不見的靈魂"
#可改
team modify human collisionRule pushOtherTeams
team modify human friendlyFire false
team modify human nametagVisibility always
team modify humanred collisionRule never
team modify humanred friendlyFire false
team modify humanred nametagVisibility always
team modify ghost collisionRule always
team modify ghost friendlyFire false
team modify ghost nametagVisibility always

team modify human color green
team modify human deathMessageVisibility never
team modify human seeFriendlyInvisibles true
team modify humanred color red
team modify humanred deathMessageVisibility never
team modify humanred seeFriendlyInvisibles false
team modify ghost color yellow
team modify ghost deathMessageVisibility never
team modify ghost seeFriendlyInvisibles true
team modify spe color black

team join human @a

team add red "紅"
#team add darkgreen "D綠"
#team add darkred "D紅"
team add gold "金"
team modify red color red
#team modify darkgreen color dark_green
#team modify darkred color dark_red
team modify gold color gold
#team join spe 剩餘的孩子們
#team join human 在綠燈狀態的孩子
#team join red 在紅燈狀態的孩子
team join ghost 在場上鬼的數量
team join gold 壞孩子失敗的總死亡數
team join red 接近鬼剩餘秒數
team join red ⇓離鬼最遠的玩家⇓
