team remove bad
team remove badred
team remove good
team remove spe
team remove red
team remove darkgreen
team remove darkred
bossbar remove rgl:time
bossbar remove rgl:touch
bossbar remove rgl:demo
bossbar remove rgl:demo2
#------------------------------------
bossbar add rgl:time ["",{"text":"剩餘時間： ","color":"light_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"rgltime"},"bold":true,"color":"gold"},{"text":" ： ","color":"yellow"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
bossbar set rgl:time color red
bossbar set rgl:time style progress
bossbar set rgl:time max 500
bossbar set rgl:time value 500
bossbar set rgl:time players @a
bossbar set rgl:time visible false
bossbar add rgl:touch ["",{"text":"接近鬼剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=touchtick,limit=1]","objective":"rgltime"},"bold":true,"color":"blue"}]
bossbar set rgl:touch color blue
bossbar set rgl:touch style progress
bossbar set rgl:touch max 500
bossbar set rgl:touch value 500
bossbar set rgl:touch players @a
bossbar set rgl:touch visible false
bossbar add rgl:demo ["",{"text":"展示用時間倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=demotick,limit=1]","objective":"rgltime"},"bold":true,"color":"gold"}]
bossbar set rgl:demo color red
bossbar set rgl:demo style progress
bossbar set rgl:demo max 50
bossbar set rgl:demo value 50
bossbar set rgl:demo players @a
bossbar set rgl:demo visible false
bossbar add rgl:demo2 ["",{"text":"接近鬼剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=demotick2,limit=1]","objective":"rgltime"},"bold":true,"color":"blue"}]
bossbar set rgl:demo2 color blue
bossbar set rgl:demo2 style progress
bossbar set rgl:demo2 max 20
bossbar set rgl:demo2 value 20
bossbar set rgl:demo2 players @a
bossbar set rgl:demo2 visible false
#壞孩子跑給鬼追
#team modify bad displayName
team add bad "壞孩子"
team add badred "紅燈壞孩子"
team add good "鬼"
team add spe "看不見的靈魂"
#可改
team modify bad collisionRule pushOtherTeams
team modify bad friendlyFire false
team modify bad nametagVisibility always
team modify badred collisionRule never
team modify badred friendlyFire false
team modify badred nametagVisibility always
team modify good collisionRule always
team modify good friendlyFire false
team modify good nametagVisibility always

team modify bad color green
team modify bad deathMessageVisibility never
team modify bad seeFriendlyInvisibles true
team modify badred color red
team modify badred deathMessageVisibility never
team modify badred seeFriendlyInvisibles false
team modify good color yellow
team modify good deathMessageVisibility never
team modify good seeFriendlyInvisibles true
team modify spe color black

team join bad @a

team add red "紅"
#team add darkgreen "D綠"
#team add darkred "D紅"
team add gold "金"
team modify red color red
#team modify darkgreen color dark_green
#team modify darkred color dark_red
team modify gold color gold
team join spe 剩餘的孩子們
team join bad 在綠燈狀態的孩子
team join red 在紅燈狀態的孩子
team join good 在場上鬼的數量
team join gold 壞孩子獲勝的綠燈目標數
team join gold 壞孩子失敗的總死亡數量
