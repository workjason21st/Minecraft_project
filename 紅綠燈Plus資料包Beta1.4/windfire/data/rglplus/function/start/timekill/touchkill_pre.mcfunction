scoreboard players set 最遠 rglplus_sqrt 0
tag @a remove killtouch
tag @a remove killtouchs
execute as @a[team=human,tag=touch,tag=green] run scoreboard players operation 最遠 rglplus_sqrt > @a[team=human,tag=touch,tag=green] rglplus_sqrt
execute as @a[team=human,tag=touch,tag=green] if score @s rglplus_sqrt = 最遠 rglplus_sqrt run tag @s add killtouch
execute as @a[team=human,tag=killtouch,tag=green,limit=1,sort=random] if score @s rglplus_sqrt = 最遠 rglplus_sqrt run tag @s add killtouchs
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run scoreboard players set ⇓離鬼最遠的玩家⇓ rglpluslist -99
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run scoreboard players set @s rglpluslist -999
execute as @a[team=human,tag=!killtouchs,tag=green] run scoreboard players reset @s rglpluslist

execute if entity @e[tag=rglplus,tag=touchtick,scores={rglplustouchtime=0}] run function rglplus:refresh/touch
