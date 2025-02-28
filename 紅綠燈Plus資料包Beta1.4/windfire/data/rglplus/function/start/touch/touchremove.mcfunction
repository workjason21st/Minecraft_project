execute if entity @a[team=human,tag=touch,scores={deathdetect=0}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true,"color":"white"},{"text":"成功靠近鬼，解救了這回合的死亡","color":"white"}]
scoreboard players reset ⇓離鬼最遠的玩家⇓ rglpluslist
scoreboard players reset @a rglpluslist
tag @a[tag=touch] remove touch
