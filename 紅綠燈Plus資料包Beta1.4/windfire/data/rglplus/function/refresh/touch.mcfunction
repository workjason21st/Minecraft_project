#KILL AND RESET
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusalleffect=0}] unless score 7-0-7-0-000700000007 rglplusmode matches 3 unless entity @e[tag=rglplus,tag=tick,scores={gametime=0,rglplustime=0}] if entity @a[gamemode=adventure,team=human,tag=touch] if score 7-0-1-0-000700000007 rglplustouchtime matches 0 as @r[gamemode=adventure,team=ghost] run function rglplus:start/timekill/touchkill
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusalleffect=0}] if score 7-0-7-0-000700000007 rglplusmode matches 3 unless entity @e[tag=rglplus,tag=tick,scores={gametime=0,rglplustime=0}] if entity @a[gamemode=adventure,team=human,tag=touch] if score 7-0-1-0-000700000007 rglplustouchtime matches 0 as @r[gamemode=adventure,team=ghost] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"當前為生存模式,","color":"aqua"},{"text":"不受沒有靠近鬼的影響","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusalleffect=1}] unless entity @e[tag=rglplus,tag=tick,scores={gametime=0,rglplustime=0}] if entity @a[gamemode=adventure,team=human,tag=touch] if score 7-0-1-0-000700000007 rglplustouchtime matches 0 as @r[gamemode=adventure,team=ghost] run function rglplus:start/timekill/touchkillall

scoreboard players reset 接近鬼剩餘秒數(已完成) rglpluslist
scoreboard players operation 接近鬼剩餘秒數 rglpluslist = 7-0-7-0-000700000007 rglplustouchtime
scoreboard players operation 7-0-1-0-000700000007 rglplustouchtime = 7-0-7-0-000700000007 rglplustouchtime
execute as 7-0-1-0-000700000007 store result entity @s PortalCooldown int 1 run scoreboard players get 7-0-7-0-000300000000 rglplustouchtime
tag @a[team=human,tag=!touch] add touch
