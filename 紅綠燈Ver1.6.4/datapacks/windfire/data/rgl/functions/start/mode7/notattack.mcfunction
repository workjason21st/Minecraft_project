execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"無法攻擊紅燈或者在身分互換後7秒內直接回擊","bold":"true","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=7}] run advancement revoke @s only rgl:isluck
