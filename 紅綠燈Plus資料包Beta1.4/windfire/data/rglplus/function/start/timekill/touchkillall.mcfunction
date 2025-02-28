execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=1}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"所有綠燈狀態壞孩子死亡","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3..4}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"所有綠燈狀態壞孩子死亡","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"所有綠燈狀態壞孩子變成病毒了","color":"aqua"}]
tag @a[team=human,tag=green,gamemode=adventure] add laster
effect give @a[team=human,tag=green,gamemode=adventure] minecraft:instant_damage 1 99 true
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusmode=1}] playgame 107
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusmode=3..4}] playgame 107
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusmode=2}] playgame 108
