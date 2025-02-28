#地圖傳送 #回合還沒加過分
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmap=3}] run scoreboard players operation @e[tag=rglplus,tag=core,limit=1] rglplusplaymap = @e[tag=rglplus,tag=spawn,type=text_display,limit=1,sort=random] rglplusplaymap
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmap=2}] if entity @e[tag=random1,tag=rglplus,scores={rglplusround=2..}] run scoreboard players add @e[tag=rglplus,tag=core,limit=1] rglplusplaymap 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmap=2}] if entity @e[tag=random1,tag=rglplus,scores={rglplusround=2..}] if score @e[tag=rglplus,tag=core,limit=1] rglplusplaymap > @e[tag=rglplus,tag=random1,limit=1] rglplusplaymap run scoreboard players set @e[tag=rglplus,tag=core,limit=1] rglplusplaymap 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmap=2..3}] if score @e[tag=rglplus,tag=core,limit=1] rglplusplaymap matches 0 run scoreboard players set @e[tag=rglplus,tag=core,limit=1] rglplusplaymap 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmap=1..3}] as @e[tag=rglplus,tag=spawn,type=text_display] if score @s rglplusplaymap = @e[tag=rglplus,tag=core,limit=1] rglplusplaymap run tp @a @s
execute as @a at @s run spawnpoint @s ~ ~0.3 ~
execute as @r at @s run tp @e[tag=rglplus,tag=touchtick,limit=1] @s

execute if entity @e[tag=rglplus,tag=core,scores={rglplusmap=2..3}] run tellraw @a ["","\n",{"text":"此回合系統選擇","color":"white"},{"text":"第","color":"gold"},{"score":{"name":"@e[tag=rglplus,tag=core]","objective":"rglplusplaymap"},"color":"gold"},{"text":"張地圖","color":"gold"},{"text":"作為遊玩場地","color":"white"}]
