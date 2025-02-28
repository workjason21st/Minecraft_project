#上方剩餘時間
bossbar set rglplus:people visible false
execute if score 7-0-7-0-000700000007 playgame matches 2 store result bossbar rglplus:time max run scoreboard players get 7-0-7-0-000100000000 rglplustime
execute if score 7-0-7-0-000700000007 playgame matches 2 store result bossbar rglplus:time value run scoreboard players get 7-0-7-0-000700000007 gametime
execute if score 7-0-7-0-000700000007 playgame matches 2 if score 7-0-0-0-000700000007 gametime matches 10.. run bossbar set rglplus:time name ["",{"text":"剩餘時間： ","color":"light_purple"},{"score":{"name":"@e[tag=rglplus,tag=tick,limit=1]","objective":"rglplustime"},"bold":true,"color":"gold"},{"text":" ： ","color":"gold"},{"score":{"name":"@e[tag=rglplus,tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
execute if score 7-0-7-0-000700000007 playgame matches 2 if score 7-0-0-0-000700000007 gametime matches 0..9 run bossbar set rglplus:time name ["",{"text":"剩餘時間： ","color":"light_purple"},{"score":{"name":"@e[tag=rglplus,tag=tick,limit=1]","objective":"rglplustime"},"bold":true,"color":"gold"},{"text":" ： ","color":"gold"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"@e[tag=rglplus,tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]

#上方存活人數
execute store result score 7-0-7-0-000700000007 laster if entity @a[team=!ghost,gamemode=adventure]
execute store result score 7-0-7-0-000700000007 greener if entity @a[team=human,gamemode=adventure,tag=green]
execute store result score 7-0-7-0-000700000007 reder if entity @a[team=humanred,gamemode=adventure,tag=red]
bossbar set rglplus:people name ["",{"text":"存活人數： ","color":"gold","bold":true},{"score":{"name":"@e[tag=core,tag=rglplus,limit=1]","objective":"laster"},"bold":true,"color":"gold"},{"text":"人","color":"gold","bold":true},{"text":" / ","color":"black"},{"score":{"name":"@e[type=armor_stand,tag=core,tag=rglplus,limit=1]","objective":"greener"},"bold":true,"color":"green"},{"text":"綠燈","color":"green"},{"text":" / ","color":"black"},{"score":{"name":"@e[tag=core,tag=rglplus,limit=1]","objective":"reder"},"bold":true,"color":"red"},{"text":"紅燈","color":"red"}]

execute if score 7-0-7-0-000700000007 playgame matches 0..2 store result bossbar rglplus:people max run scoreboard players get 7-0-7-0-000700000007 laster
execute if score 7-0-7-0-000700000007 playgame matches 0..2 store result bossbar rglplus:people value run scoreboard players get 7-0-7-0-000700000007 greener

bossbar set rglplus:people visible true

#mode2
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 1 unless entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 2.. if entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster

execute if score 7-0-7-0-000700000007 greener matches 0 run function rglplus:final/inspect