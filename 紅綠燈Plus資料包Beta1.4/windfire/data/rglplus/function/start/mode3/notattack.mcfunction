execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"無法攻擊紅燈或者在身分互換後7秒內直接回擊","bold":true,"color":"white"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3,rglplusweapon=7}] as @a[tag=damaged] at @s run setblock ~ ~ ~ minecraft:water[level=1]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] run advancement revoke @s only rglplus:isluck
