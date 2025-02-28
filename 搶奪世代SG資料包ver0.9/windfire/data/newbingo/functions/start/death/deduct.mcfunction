#deathdeduct1
execute if entity @e[tag=random0,tag=deathdeduct1] run scoreboard players remove @a[scores={deathdetect=1..,displayhealth=20}] teampoint 1
execute if entity @e[tag=random0,tag=deathdeduct2] run scoreboard players remove @a[scores={deathdetect=1..,displayhealth=20}] teampoint 2
execute if entity @e[tag=random0,tag=deathdeduct3] run scoreboard players remove @a[scores={deathdetect=1..,displayhealth=20}] teampoint 3
execute if entity @e[tag=random0,tag=deathdeduct4] run scoreboard players remove @a[scores={deathdetect=1..,displayhealth=20}] teampoint 4
execute if entity @e[tag=random0,tag=deathdeduct5] run scoreboard players remove @a[scores={deathdetect=1..,displayhealth=20}] teampoint 5
execute as @e[team=yellow] run scoreboard players operation @s teampoint < @e[team=yellow,scores={deathdetect=1..,displayhealth=20}] teampoint
execute as @e[team=red] run scoreboard players operation @s teampoint < @e[team=red,scores={deathdetect=1..,displayhealth=20}] teampoint
execute as @e[team=green] run scoreboard players operation @s teampoint < @e[team=green,scores={deathdetect=1..,displayhealth=20}] teampoint
execute as @e[team=aqua] run scoreboard players operation @s teampoint < @e[team=aqua,scores={deathdetect=1..,displayhealth=20}] teampoint
execute store result bossbar newbingo:yellow value run scoreboard players get @a[team=yellow,limit=1] teampoint
execute store result bossbar newbingo:red value run scoreboard players get @a[team=red,limit=1] teampoint
execute store result bossbar newbingo:green value run scoreboard players get @a[team=green,limit=1] teampoint
execute store result bossbar newbingo:aqua value run scoreboard players get @a[team=aqua,limit=1] teampoint
bossbar set newbingo:yellow name ["",{"text":"黃隊分數： ","color":"yellow"},{"score":{"name":"@e[tag=teamyellow,limit=1]","objective":"teampoint"},"color":"yellow","bold":"true"}]
bossbar set newbingo:red name ["",{"text":"紅隊分數： ","color":"red"},{"score":{"name":"@e[tag=teamred,limit=1]","objective":"teampoint"},"color":"red","bold":"true"}]
bossbar set newbingo:green name ["",{"text":"綠隊分數： ","color":"green"},{"score":{"name":"@e[tag=teamgreen,limit=1]","objective":"teampoint"},"color":"green","bold":"true"}]
bossbar set newbingo:aqua name ["",{"text":"藍隊分數： ","color":"aqua"},{"score":{"name":"@e[tag=teamaqua,limit=1]","objective":"teampoint"},"color":"aqua","bold":"true"}]

tellraw @a ["",{"selector":"@a[scores={deathdetect=1..,displayhealth=20}]"},{"text":"死亡了，隊伍分數被扣到剩","color":"white"},{"score":{"name":"@a[scores={deathdetect=1..,displayhealth=20}]","objective":"teampoint"},"bold":true,"color":"light_purple"},{"text":"分","color":"light_purple"}]
