#-60s
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=1,gametime=60}] run tellraw @a ["","\n",{"text":"◀ 遊戲時間剩餘１分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=6,gametime=60}] run tellraw @a ["","\n",{"text":"◀ 遊戲時間剩餘１分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=1,gametime=60}] run title @a title [{"text":"▶剩餘１分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=6,gametime=60}] run title @a title [{"text":"▶剩餘１分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=1,gametime=60}] run effect give @a[gamemode=!spectator] minecraft:glowing infinite 2 true
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=6,gametime=60}] run effect give @a[gamemode=!spectator] minecraft:glowing infinite 2 true
#-30s
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=2..3,gametime=30}] run tellraw @a ["","\n",{"text":"◀ 遊戲時間剩餘３０秒全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=7,gametime=30}] run tellraw @a ["","\n",{"text":"◀ 遊戲時間剩餘３０秒全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=2..3,gametime=30}] run title @a title [{"text":"▶剩餘３０秒全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=7,gametime=30}] run title @a title [{"text":"▶剩餘３０秒全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=2..3,gametime=30}] run effect give @a[gamemode=!spectator] minecraft:glowing infinite 2 true
execute if entity @e[tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=7,gametime=30}] run effect give @a[gamemode=!spectator] minecraft:glowing infinite 2 true

#
execute as @e[tag=rglplus,tag=core,scores={rglplusglow=1,gametime=60}] run tag @s add rglplus_countdown
execute as @e[tag=rglplus,tag=core,scores={rglplusglow=6,gametime=60}] run tag @s add rglplus_countdown
execute as @e[tag=rglplus,tag=core,scores={rglplusglow=2..3,gametime=30}] run tag @s add rglplus_countdown
execute as @e[tag=rglplus,tag=core,scores={rglplusglow=7,gametime=30}] run tag @s add rglplus_countdown
