scoreboard players set 最遠 rglplus_sqrt 0
tag @a remove killtouch
tag @a remove killtouchs
execute as @a[team=human,tag=touch,tag=green] run scoreboard players operation 最遠 rglplus_sqrt > @a[team=human,tag=touch,tag=green] rglplus_sqrt
execute as @a[team=human,tag=touch,tag=green] if score @s rglplus_sqrt = 最遠 rglplus_sqrt run tag @s add killtouch
execute as @a[team=human,tag=killtouch,tag=green,limit=1,sort=random] if score @s rglplus_sqrt = 最遠 rglplus_sqrt run tag @s add killtouchs

#bossbar set rgl:touch name ["",{"text":"接近鬼","color":"dark_purple"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rgltouchdis"},"bold":true,"color":"dark_purple"},{"text":"格內 剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=touchtick,limit=1]","objective":"rgltime"},"bold":true,"color":"blue"},{"text":"   最遠的是","color":"red"},{"selector":"@p[tag=killtouchs,team=human,limit=1]","bold":true}]

execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run tag @s remove killtouchs
execute as @a[team=human,tag=killtouch] run tag @s remove killtouch
