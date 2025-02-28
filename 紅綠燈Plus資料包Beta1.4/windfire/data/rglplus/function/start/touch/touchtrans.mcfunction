scoreboard players set 最遠 rglplus_sqrt 0
tag @a remove killtouch
tag @a remove killtouchs
execute as @a[team=human,tag=touch,tag=green] run scoreboard players operation 最遠 rglplus_sqrt > @a[team=human,tag=touch,tag=green] rglplus_sqrt
execute as @a[team=human,tag=touch,tag=green] if score @s rglplus_sqrt = 最遠 rglplus_sqrt run tag @s add killtouch
execute as @a[team=human,tag=killtouch,tag=green,limit=1,sort=random] if score @s rglplus_sqrt = 最遠 rglplus_sqrt run tag @s add killtouchs
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"white"},{"text":"離鬼最遠的玩家","color":"red"},{"selector":"@s","bold":true},{"text":"成為鬼了","color":"red"}]
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run clear @s #rglplus:redlime
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run function rglplus:role/ghost/giveweapon
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run tag @s remove red
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run tag @s remove green
execute as @a[team=human,tag=killtouchs,limit=1,sort=random] run team join ghost @s
execute as @a[team=ghost,tag=killtouchs,limit=1,sort=random] run tag @s remove killtouchs
execute as @a[team=ghost,tag=killtouch] run tag @s remove killtouch
