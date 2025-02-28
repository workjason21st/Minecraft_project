scoreboard players set 最遠 sqrt 0
tag @a remove killtouch
tag @a remove killtouchs
execute as @a[team=bad,tag=touch,tag=green] run scoreboard players operation 最遠 sqrt > @a[team=bad,tag=touch,tag=green] sqrt
execute as @a[team=bad,tag=touch,tag=green] if score @s sqrt = 最遠 sqrt run tag @s add killtouch
execute as @a[team=bad,tag=killtouch,tag=green,limit=1,sort=random] if score @s sqrt = 最遠 sqrt run tag @s add killtouchs
execute as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"white"},{"text":"離鬼最遠的玩家","color":"red"},{"selector":"@s","bold":"true"},{"text":"成為鬼了","color":"red"}]
execute as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run clear @s #rgl:redlime
execute as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run function rgl:other/givesword
execute as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run tag @s remove red
execute as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run tag @s remove green
execute as @a[team=bad,tag=killtouchs,limit=1,sort=random] run team join good @s
execute as @a[team=good,tag=killtouchs,limit=1,sort=random] run tag @s remove killtouchs
execute as @a[team=good,tag=killtouch] run tag @s remove killtouch
