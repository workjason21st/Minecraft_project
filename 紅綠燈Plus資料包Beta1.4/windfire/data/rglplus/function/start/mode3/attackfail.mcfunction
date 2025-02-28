execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] unless entity @e[tag=rglplus,tag=core,scores={rglplusweapon=6}] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"沒有拿著武器無法攻擊","bold":true,"color":"white"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] run advancement revoke @s only rglplus:fail
