#隨機隊伍
tag @a[tag=joinghost] remove joinghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=5..7}] run team join human @a[team=!spe]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=7}] run tag @r[team=human,limit=3] add joinghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=6}] run tag @r[team=human,limit=2] add joinghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=5}] run tag @r[team=human,limit=1] add joinghost

#依序當鬼
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4,rglplusround=2..}] if entity @e[tag=rglplus,tag=random1,scores={rglplusround=2..}] if score @e[tag=rglplus,tag=core,limit=1] rglplusmode matches 2 run scoreboard players add @a[tag=firstpathogen,tag=!normal,team=ghost,gamemode=adventure] rglplusghost 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4,rglplusround=2..}] if entity @e[tag=rglplus,tag=random1,scores={rglplusround=2..}] unless score @e[tag=rglplus,tag=core,limit=1] rglplusmode matches 2 run scoreboard players add @a[team=ghost,gamemode=adventure] rglplusghost 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4}] as @a[team=ghost] if score @s rglplusghost > @e[tag=rglplus,tag=random1,limit=1] rglplusghost run scoreboard players operation @e[tag=rglplus,tag=random1,limit=1] rglplusghost = @s rglplusghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4}] run team join human @a[team=!spe]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4}] as @a[team=human] unless score @s rglplusghost >= @e[tag=rglplus,tag=random1,limit=1] rglplusghost run tag @s add queueghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=4}] run tag @r[team=human,tag=queueghost,limit=3] add joinghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=3}] run tag @r[team=human,tag=queueghost,limit=2] add joinghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2}] run tag @r[team=human,tag=queueghost,limit=1] add joinghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4}] run tag @a[tag=queueghost] remove queueghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4}] unless entity @a[tag=joinghost] run scoreboard players add @e[tag=rglplus,tag=random1] rglplusghost 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=4}] unless entity @a[tag=joinghost] run team join ghost @r[team=human,tag=!joinghost,limit=3]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=3}] unless entity @a[tag=joinghost] run team join ghost @r[team=human,tag=!joinghost,limit=2]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2}] unless entity @a[tag=joinghost] run team join ghost @r[team=human,tag=!joinghost,limit=1]
#不足
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=3..4}] run team join ghost @a[tag=joinghost]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=3..4}] store result score @e[tag=rglplus,tag=core,limit=1] ghost if entity @a[team=ghost,gamemode=adventure]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=3..4}] store result score @e[tag=rglplus,tag=core,limit=1] laster if entity @a[team=human,gamemode=adventure]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=3,laster=2..,ghost=1}] run team join ghost @r[team=human,tag=!joinghost,limit=1]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=4,laster=2..,ghost=2}] run team join ghost @r[team=human,tag=!joinghost,limit=1]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=4,laster=3..,ghost=1}] run team join ghost @r[team=human,tag=!joinghost,limit=2]
#概念：先給鬼加分 選擇给沒分的人便鬼 非鬼的加分 循環...
#要注意只給鬼加分 感染者不加
#固定
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=1}] if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run team join human @a[team=!spe,team=!ghost]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=1,rglplusmode=2}] if entity @e[tag=rglplus,tag=random1,scores={rglplusround=2..}] run team join human @a[tag=!firstpathogen,team=!spe]

team join ghost @a[tag=joinghost]
tag @a[tag=joinghost] remove joinghost


#execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..7}] run tellraw @a ["",{"text":"  ↓   此回合分隊情況   ↓  ","bold":true},"\n",{"text":"孩子方成員：","bold":true,"color":"blue"},{"selector":"@a[team=human]","color":"blue"},"\n",{"text":"鬼方成員：","bold":true,"color":"red"},{"selector":"@a[team=ghost]","color":"red"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..7}] run tellraw @a ["",{"text":"紅綠燈 : ","color":"white"},{"text":"壞孩子小心, ","color":"white"},{"selector":"@a[team=ghost]","color":"yellow"},{"text":"要來追你們了","color":"white"}]
