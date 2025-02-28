scoreboard players set 最遠 sqrt 0
tag @a remove killtouch
tag @a remove killtouchs
execute as @a[team=bad,tag=touch,tag=green] run scoreboard players operation 最遠 sqrt > @a[team=bad,tag=touch,tag=green] sqrt
execute as @a[team=bad,tag=touch,tag=green] if score @s sqrt = 最遠 sqrt run tag @s add killtouch
execute as @a[team=bad,tag=killtouch,tag=green,limit=1,sort=random] if score @s sqrt = 最遠 sqrt run tag @s add killtouchs
execute if entity @e[tag=core,scores={rglmode=1..8}] as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"離鬼最遠的玩家","color":"aqua"},{"selector":"@s","bold":"true"},{"text":"死亡","color":"aqua"}]
execute if entity @e[tag=core,scores={rglmode=9}] as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"離鬼最遠的玩家","color":"aqua"},{"selector":"@s","bold":"true"},{"text":"也變成病毒了","color":"aqua"}]

execute as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run effect give @s minecraft:instant_damage 1 99 true
execute as @a[team=bad,tag=killtouchs,tag=green,limit=1,sort=random] run tag @s remove killtouchs
execute as @a[team=bad,tag=killtouch] run tag @s remove killtouch
