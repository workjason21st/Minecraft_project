execute if entity @e[tag=core,scores={rglmode=1..8}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"所有綠燈狀態壞孩子死亡","color":"aqua"}]
execute if entity @e[tag=core,scores={rglmode=9}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"所有綠燈狀態壞孩子變成病毒了","color":"aqua"}]
effect give @a[team=bad,tag=green,gamemode=adventure] minecraft:instant_damage 1 99 true
#scoreboard players set @e[tag=core] gameend 16
#function rgl:end/end
