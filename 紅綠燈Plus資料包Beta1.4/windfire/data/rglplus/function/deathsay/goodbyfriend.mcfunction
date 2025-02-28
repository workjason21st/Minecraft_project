execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2}] as @s run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":"被同隊的鬼給嚇跑了","color":"dark_aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2}] run advancement revoke @s only rglplus:death/goodbyfriend
