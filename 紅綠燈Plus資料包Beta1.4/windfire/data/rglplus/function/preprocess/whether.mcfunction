#固定但沒鬼
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghost=1}] store result score @e[type=armor_stand,tag=rglplus,tag=core,limit=1] ghost if entity @a[team=ghost]
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghost=1,ghost=0}] run tag @e[type=armor_stand,tag=rglplus,tag=core] add rglplus_nostart
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghost=1,ghost=0}] run tellraw @a[gamemode=creative] ["",{"text":"✘","bold":true,"color":"red"},{"text":"遊戲無法開始","color":"red"},{"text":" (尚未設置由誰固定當鬼)","color":"dark_red"}]
#沒孩子
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghost=1}] store result score @e[type=armor_stand,tag=rglplus,tag=core,limit=1] laster if entity @a[team=!ghost,team=!spe]
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghost=1,laster=0}] run tag @e[type=armor_stand,tag=rglplus,tag=core] add rglplus_nostart
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghost=1,laster=0}] run tellraw @a[gamemode=creative] ["",{"text":"✘","bold":true,"color":"red"},{"text":"遊戲無法開始","color":"red"},{"text":" (小孩隊伍沒有任何玩家)","color":"dark_red"}]
#固定但地圖不存在
execute if score @e[type=armor_stand,tag=rglplus,tag=core,limit=1] rglplusplaymap > @e[tag=rglplus,tag=random1,limit=1] rglplusplaymap run tag @e[type=armor_stand,tag=rglplus,tag=core] add rglplus_nostart
execute if score @e[type=armor_stand,tag=rglplus,tag=core,limit=1] rglplusplaymap > @e[tag=rglplus,tag=random1,limit=1] rglplusplaymap run tellraw @a[gamemode=creative] ["",{"text":"✘","bold":true,"color":"red"},{"text":"遊戲無法開始","color":"red"},{"text":" (第","color":"dark_red"},{"score":{"name":"@e[type=armor_stand,tag=rglplus,tag=core]","objective":"rglplusplaymap"},"color":"dark_red"},{"text":"張地圖的重生點不存在)","color":"dark_red"}]
#生存模式禁用經驗瓶
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] run tag @e[type=armor_stand,tag=rglplus,tag=core] add rglplus_nostart
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] run tellraw @a[gamemode=creative] ["",{"text":"✘","bold":true,"color":"red"},{"text":"遊戲無法開始","color":"red"},{"text":" (生存模式禁止使用經驗瓶當武器)","color":"dark_red"}]
#鬼抓到人有道具禁用打火石
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghostprop=1,rglplusweapon=7}] run tag @e[type=armor_stand,tag=rglplus,tag=core] add rglplus_nostart
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglpluskidsword=1..,rglplusweapon=7}] run tag @e[type=armor_stand,tag=rglplus,tag=core] add rglplus_nostart
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglplusghostprop=1,rglplusweapon=7}] run tellraw @a[gamemode=creative] ["",{"text":"✘","bold":true,"color":"red"},{"text":"遊戲無法開始","color":"red"},"\n",{"text":" (鬼抓到人有獲得道具時禁止使用打火石當武器)","color":"dark_red"}]
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={rglpluskidsword=1..,rglplusweapon=7}] run tellraw @a[gamemode=creative] ["",{"text":"✘","bold":true,"color":"red"},{"text":"遊戲無法開始","color":"red"},"\n",{"text":" (反擊變體中禁止使用打火石當武器)","color":"dark_red"}]

#例外
execute if entity @a[gamemode=creative,tag=rglplus_test] run tag @e[type=armor_stand,tag=rglplus,tag=core,tag=rglplus_nostart] remove rglplus_nostart
#可以開始
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,tag=!rglplus_nostart,scores={playgame=-1}] run tellraw @a ["","\n",{"text":"遊戲正式開始 ","color":"gold"},"\n"]
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,tag=!rglplus_nostart,scores={playgame=-1,rglplusround=1}] run function rglplus:preprocess/once
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,tag=!rglplus_nostart,scores={playgame=-1,rglplusround=2..}] run function rglplus:preprocess/multi
#
execute if entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rglplus_nostart] run tag @a remove host
tag @e[type=armor_stand,tag=rglplus,tag=core,tag=rglplus_nostart] remove rglplus_nostart
