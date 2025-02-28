execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=1}] as @s run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true},{"text":"被同隊的壞孩子害慘了","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=3..4}] as @s run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true},{"text":"被同隊的壞孩子害慘了","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=2}] as @s run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true},{"text":"被同隊的壞孩子害而成為新的病原","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2}] run advancement revoke @s only rglplus:death/badbyfriend
