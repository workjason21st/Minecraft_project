advancement revoke @a only newbingo:detect/1
advancement revoke @a only newbingo:detect/2
advancement revoke @a only newbingo:detect/34
advancement revoke @a only newbingo:detect/567
advancement revoke @a only newbingo:detect/89
advancement revoke @a only newbingo:detect/10
#
bossbar remove newbingo:yellow
bossbar remove newbingo:red
bossbar remove newbingo:green
bossbar remove newbingo:aqua
bossbar add newbingo:yellow ["",{"text":"黃隊分數： ","color":"yellow"},{"text":"0","color":"yellow","bold":"true"},{"text":" ／ ","color":"yellow"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode1point"},"bold":true,"color":"light_purple"}]
bossbar add newbingo:red ["",{"text":"紅隊分數： ","color":"red"},{"text":"0","color":"red","bold":"true"},{"text":" ／ ","color":"red"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode1point"},"bold":true,"color":"light_purple"}]
bossbar add newbingo:green ["",{"text":"綠隊分數： ","color":"green"},{"text":"0","color":"green","bold":"true"},{"text":" ／ ","color":"green"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode1point"},"bold":true,"color":"light_purple"}]
bossbar add newbingo:aqua ["",{"text":"藍隊分數： ","color":"aqua"},{"text":"0","color":"aqua","bold":"true"},{"text":" ／ ","color":"aqua"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode1point"},"bold":true,"color":"light_purple"}]
bossbar set newbingo:yellow color yellow
bossbar set newbingo:red color red
bossbar set newbingo:green color green
bossbar set newbingo:aqua color blue
bossbar set newbingo:lobby visible false
execute if entity @e[tag=random0,scores={bingomode=1..4}] store result bossbar newbingo:yellow max run scoreboard players get @e[tag=random0,limit=1] mode1point
execute if entity @e[tag=random0,scores={bingomode=1..4}] store result bossbar newbingo:red max run scoreboard players get @e[tag=random0,limit=1] mode1point
execute if entity @e[tag=random0,scores={bingomode=1..4}] store result bossbar newbingo:green max run scoreboard players get @e[tag=random0,limit=1] mode1point
execute if entity @e[tag=random0,scores={bingomode=1..4}] store result bossbar newbingo:aqua max run scoreboard players get @e[tag=random0,limit=1] mode1point
#
team modify target1 color white
team modify target2 color white
team modify target3 color white
team modify target4 color white
team modify target5 color white
team modify target6 color white
team modify target7 color white
team modify target8 color white
team modify target9 color white
team modify target10 color white
team modify target11 color white
team modify target12 color white
team modify target13 color white
team modify target14 color white
team modify target15 color white

team modify target1 prefix ""
team modify target2 prefix ""
team modify target3 prefix ""
team modify target4 prefix ""
team modify target5 prefix ""
team modify target6 prefix ""
team modify target7 prefix ""
team modify target8 prefix ""
team modify target9 prefix ""
team modify target10 prefix ""
team modify target11 prefix ""
team modify target12 prefix ""
team modify target13 prefix ""
team modify target14 prefix ""
team modify target15 prefix ""
#
scoreboard players set @a deathCount 0
scoreboard players set @a totalKillCount 0
scoreboard players set @a runcm 0
scoreboard players set @a boatcm 0
scoreboard players set @a runM 0
scoreboard players set @a boatM 0
scoreboard players set @a bodyblock 0
scoreboard players set @a shieldblock 0
scoreboard players set @a mine_stone 0
scoreboard players set @a killyui 0
scoreboard players set @a killyuihome 0
scoreboard players set @a eathagee 0
scoreboard players set @a sevenegg1 0
scoreboard players set @a sevenegg2 0
scoreboard players set @a sevenegg3 0
scoreboard players set @a phantomsummon 0

scoreboard players reset @a top_death
scoreboard players reset @a top_totalKill
scoreboard players reset @a top_runM
scoreboard players reset @a top_boatM
scoreboard players reset @a top_bodyblock
scoreboard players reset @a top_shieldblock
scoreboard players reset @a top_mine_stone

scoreboard players reset @a target1
scoreboard players reset @a target2
scoreboard players reset @a target3
scoreboard players reset @a target4
scoreboard players reset @a target5
scoreboard players reset @a target6
scoreboard players reset @a target7
scoreboard players reset @a target8
scoreboard players reset @a target9
scoreboard players reset @a target10
scoreboard players reset @a target11
scoreboard players reset @a target12
scoreboard players reset @a target13
scoreboard players reset @a target14
scoreboard players reset @a target15
scoreboard players reset @a pointdetect
scoreboard players reset @a pointdetects

scoreboard players reset @a point1detect
scoreboard players reset @a point2detect
scoreboard players reset @a point3detect
scoreboard players reset @a point4detect
scoreboard players reset @a point5detect
scoreboard players reset @a point6detect
scoreboard players reset @a point7detect
scoreboard players reset @a point8detect
scoreboard players reset @a point9detect
scoreboard players reset @a point10detect
scoreboard players reset @a point11detect
scoreboard players reset @a point12detect
scoreboard players reset @a point13detect
scoreboard players reset @a point14detect
scoreboard players reset @a point15detect

scoreboard players set @a deathdetect 0
scoreboard players set @a bingodeath -1

scoreboard players reset @a bingosole
scoreboard players reset @e[tag=teampoint] bingosole
scoreboard players reset @e teampoint
scoreboard players reset @e solepoint
scoreboard players set @e[tag=random5] gametime 0
scoreboard players set @e[tag=random6] gametime 1
#
execute store result score @e[tag=random0,limit=1] yellowplayer if entity @a[team=yellow]
execute store result score @e[tag=random0,limit=1] redplayer if entity @a[team=red]
execute store result score @e[tag=random0,limit=1] greenplayer if entity @a[team=green]
execute store result score @e[tag=random0,limit=1] aquaplayer if entity @a[team=aqua]
execute if entity @e[tag=random0,scores={yellowplayer=1..}] run bossbar set newbingo:yellow players @a
execute if entity @e[tag=random0,scores={redplayer=1..}] run bossbar set newbingo:red players @a
execute if entity @e[tag=random0,scores={greenplayer=1..}] run bossbar set newbingo:green players @a
execute if entity @e[tag=random0,scores={aquaplayer=1..}] run bossbar set newbingo:aqua players @a
execute if entity @e[tag=random0,scores={yellowplayer=1..}] run bossbar set newbingo:yellow visible true
execute if entity @e[tag=random0,scores={redplayer=1..}] run bossbar set newbingo:red visible true
execute if entity @e[tag=random0,scores={greenplayer=1..}] run bossbar set newbingo:green visible true
execute if entity @e[tag=random0,scores={aquaplayer=1..}] run bossbar set newbingo:aqua visible true
execute store result bossbar newbingo:yellow value run scoreboard players get @a[team=yellow,limit=1] teampoint
execute store result bossbar newbingo:red value run scoreboard players get @a[team=red,limit=1] teampoint
execute store result bossbar newbingo:green value run scoreboard players get @a[team=green,limit=1] teampoint
execute store result bossbar newbingo:aqua value run scoreboard players get @a[team=aqua,limit=1] teampoint
