#
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=2,gametime=66..,rglplusglow=1}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=2,gametime=33..,rglplusglow=2}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=2,gametime=33..,rglplusglow=3}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=2,gametime=10..,rglplusglow=4}] run tag @r[tag=green,tag=!glower,limit=3] add glower
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=2,gametime=10..,rglplusglow=5}] run tag @r[tag=green,tag=!glower] add glower

execute if score 7-0-7-0-000700000007 rglplusglow matches 1..2 as @a[tag=green,tag=glower] run effect give @s minecraft:glowing 15 1
execute if score 7-0-7-0-000700000007 rglplusglow matches 3 as @a[tag=green,tag=glower] run effect give @s minecraft:glowing 10 1
execute if score 7-0-7-0-000700000007 rglplusglow matches 4 as @a[tag=green,tag=glower] run effect give @s minecraft:glowing 7 1
execute if score 7-0-7-0-000700000007 rglplusglow matches 5 as @a[tag=green,tag=glower] run effect give @s minecraft:glowing 5 1
execute if score 7-0-7-0-000700000007 rglplusglow matches 1..2 if entity @a[tag=green,tag=glower] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過1分鐘, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光15秒","color":"white"}]
execute if score 7-0-7-0-000700000007 rglplusglow matches 3 if entity @a[tag=green,tag=glower] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過30秒, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光10秒","color":"white"}]
execute if score 7-0-7-0-000700000007 rglplusglow matches 4 if entity @a[tag=green,tag=glower] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過30秒, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光7秒","color":"white"}]
execute if score 7-0-7-0-000700000007 rglplusglow matches 5 if entity @a[tag=green,tag=glower] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過15秒, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光5秒","color":"white"}]
execute as @a[tag=green,tag=glower] run tag @s remove glower
###
execute if score 7-0-7-0-000700000007 rglplusglow matches 1..2 run schedule function rglplus:refresh/glow 60s
execute if score 7-0-7-0-000700000007 rglplusglow matches 3..4 run schedule function rglplus:refresh/glow 30s
execute if score 7-0-7-0-000700000007 rglplusglow matches 5 run schedule function rglplus:refresh/glow 15s
