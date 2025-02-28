
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=1}] as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"離鬼最遠的玩家","color":"aqua"},{"selector":"@s","bold":true},{"text":"死亡","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=4}] as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"離鬼最遠的玩家","color":"aqua"},{"selector":"@s","bold":true},{"text":"死亡","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"由於沒有成功靠近鬼,","color":"aqua"},{"text":"離鬼最遠的玩家","color":"aqua"},{"selector":"@s","bold":true},{"text":"也變成病毒了","color":"aqua"}]

execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run effect give @s minecraft:instant_damage 1 99 true
execute as @a[team=human,tag=killtouchs,tag=green,limit=1,sort=random] run scoreboard players reset ⇓離鬼最遠的玩家⇓ rglpluslist
tp @a[tag=killtouchs,gamemode=spectator] @r[gamemode=adventure]
execute as @a[team=human,tag=killtouchs,tag=green] run scoreboard players reset @s rglpluslist
execute as @a[team=human,tag=killtouchs] run tag @s remove killtouchs
execute as @a[team=human,tag=killtouch] run tag @s remove killtouch

execute unless entity @a[team=human,gamemode=adventure] run scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusmode=1}] playgame 105
execute unless entity @a[team=human,gamemode=adventure] run scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusmode=3..4}] playgame 105
execute unless entity @a[team=human,gamemode=adventure] run scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusmode=2}] playgame 106
