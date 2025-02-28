execute if entity @e[tag=core,tag=reteam] run team join bad @a
execute if entity @e[tag=core,tag=allbadteam] run team join bad @a[team=!spe]
execute if entity @e[tag=core,tag=randomgood] run tag @r[team=bad] add joingood
execute if entity @e[tag=core,tag=randomgood] run team join good @a[tag=joingood]
execute if entity @e[tag=core,tag=speteam] positioned 116 52 103 run team join spe @p[distance=..3]
execute if entity @e[tag=core,tag=badteam] positioned 114 51 103 run team join bad @p[distance=..3]
execute if entity @e[tag=core,tag=goodteam] positioned 115 51 103 run team join good @p[distance=..3]

execute if entity @e[tag=core,tag=reteam] run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"text":"已經重置所有人的隊伍","color":"white"}]
execute if entity @e[tag=core,tag=allbadteam] run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"text":"已經將所有人加入壞孩子(除觀察者)","color":"green"}]
execute if entity @a[tag=joingood] unless entity @e[tag=core,tag=randomgood,scores={rglmode=4}] run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"text":"壞孩子小心, ","color":"white"},{"selector":"@a[tag=joingood]","color":"yellow"},{"text":"要來追你們了","color":"white"}]
execute if entity @a[tag=joingood] if entity @e[tag=core,scores={rglmode=4}] store result score @e[tag=core,limit=1] ghost if entity @a[team=good]
execute if entity @a[tag=joingood] if entity @e[tag=core,tag=randomgood,scores={rglmode=4}] run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"text":"壞孩子小心, 有 ","color":"white"},{"score":{"name":"@e[tag=core,limit=1]","objective":"ghost"},"color":"yellow"},{"text":" 個臥底藏在你們當中","color":"white"}]
execute if entity @e[tag=core,tag=speteam] positioned 116 52 103 run tellraw @p ["",{"text":"紅綠燈 : ","color":"white"},{"selector":"@p[distance=..3]","color":"white"},{"text":"成功加入觀察者隊伍","color":"white"}]
execute if entity @e[tag=core,tag=badteam] positioned 114 51 103 run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"selector":"@p[distance=..3]","color":"green"},{"text":"成功加入壞孩子們","color":"white"}]
execute if entity @e[tag=core,tag=goodteam] positioned 115 51 103 run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"selector":"@p[distance=..3]","color":"yellow"},{"text":"成功加入鬼","color":"white"}]
execute if entity @e[tag=core,tag=goodteam,scores={rglmode=4}] store result score @e[tag=core,limit=1] ghost if entity @a[team=good]
execute if entity @e[tag=core,tag=goodteam,scores={rglmode=4}] positioned 115 51 103 run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"text":"壞孩子小心, 有 ","color":"white"},{"score":{"name":"@e[tag=core,limit=1]","objective":"ghost"},"color":"yellow"},{"text":" 個臥底藏在你們當中","color":"white"}]


tag @e[tag=joingood] remove joingood
tag @e[tag=core,limit=1] remove reteam
tag @e[tag=core,limit=1] remove allbadteam
tag @e[tag=core,limit=1] remove randomgood
tag @e[tag=core,limit=1] remove speteam
tag @e[tag=core,limit=1] remove badteam
tag @e[tag=core,limit=1] remove goodteam
tag @e[tag=core,limit=1] remove randomteam

execute if entity @e[tag=core,scores={rglmode=6}] run function rgl:sign/detail/give
execute if entity @e[tag=core,scores={rglmode=6}] run function rgl:sign/detail/count
