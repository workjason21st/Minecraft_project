execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"沒有拿著武器無法攻擊","bold":"true","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=7}] run advancement revoke @s only rgl:fail
