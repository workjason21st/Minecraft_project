#
title @a times 4 20 4
execute if entity @e[tag=core,scores={toendtime=-1}] unless entity @e[tag=core,scores={rglglow=2}] unless entity @e[tag=core,scores={rglglow=7..9}] unless entity @e[tag=core,scores={rglglow=14}] unless entity @e[tag=core,scores={rglglow=16}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘１分鐘 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1}] unless entity @e[tag=core,scores={rglglow=2}] unless entity @e[tag=core,scores={rglglow=7..9}] unless entity @e[tag=core,scores={rglglow=14}] unless entity @e[tag=core,scores={rglglow=16}] run title @a title ["",{"text":"▶剩餘１分鐘◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=2}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘１分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=2}] run title @a title ["",{"text":"▶剩餘１分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=2}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=7..9}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘１分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=7..9}] run title @a title ["",{"text":"▶剩餘１分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=7..9}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=14}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘１分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=14}] run title @a title ["",{"text":"▶剩餘１分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=14}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=16}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘１分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=16}] run title @a title ["",{"text":"▶剩餘１分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-1,rglglow=16}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true
execute if entity @e[tag=core,scores={toendtime=-1}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=core,scores={toendtime=-1}] run scoreboard players set @e[tag=core,limit=1] toendtime 1

execute if entity @e[tag=core,scores={toendtime=-2}] unless entity @e[tag=core,scores={rglglow=3}] unless entity @e[tag=core,scores={rglglow=10..12}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘２分鐘 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-2}] unless entity @e[tag=core,scores={rglglow=3}] unless entity @e[tag=core,scores={rglglow=10..12}] run title @a title ["",{"text":"▶剩餘２分鐘◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-2,rglglow=3}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘２分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-2,rglglow=3}] run title @a title ["",{"text":"▶剩餘２分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-2,rglglow=3}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true
execute if entity @e[tag=core,scores={toendtime=-2,rglglow=10..12}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘２分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-2,rglglow=10..12}] run title @a title ["",{"text":"▶剩餘２分鐘全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-2,rglglow=10..12}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true
execute if entity @e[tag=core,scores={toendtime=-2}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=core,scores={toendtime=-2}] run scoreboard players add @e[tag=core,limit=1] toenddisplay 1
execute if entity @e[tag=core,scores={toendtime=-2}] run scoreboard players set @e[tag=core,limit=1] toendtime -1
#3
#execute if entity @e[tag=core,scores={toendtime=-5,toenddisplay=1,rglglow=3}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘３分鐘全員發光 ▶","bold":true,"color":"light_purple"}]
#execute if entity @e[tag=core,scores={toendtime=-5,toenddisplay=1,rglglow=3}] run title @a title ["",{"text":"▶剩餘３分鐘全員發光◀","bold":true,"color":"dark_purple"}]
#execute if entity @e[tag=core,scores={toendtime=-5,toenddisplay=1,rglglow=3}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true

execute if entity @e[tag=core,scores={toendtime=-5}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘５分鐘 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-5}] run title @a title ["",{"text":"▶剩餘５分鐘◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-5}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=core,scores={toendtime=-5}] run scoreboard players add @e[tag=core,limit=1] toenddisplay 3
execute if entity @e[tag=core,scores={toendtime=-5}] run scoreboard players set @e[tag=core,limit=1] toendtime -2

execute if entity @e[tag=core,scores={toendtime=-10}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘１０分鐘 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-10}] run title @a title ["",{"text":"▶剩餘１０分鐘◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-10}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=core,scores={toendtime=-10}] run scoreboard players add @e[tag=core,limit=1] toenddisplay 5
execute if entity @e[tag=core,scores={toendtime=-10}] run scoreboard players set @e[tag=core,limit=1] toendtime -5

execute if entity @e[tag=core,scores={toendtime=-20}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘２０分鐘 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={toendtime=-20}] run title @a title ["",{"text":"▶剩餘２０分鐘◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={toendtime=-20}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=core,scores={toendtime=-20}] run scoreboard players add @e[tag=core,limit=1] toenddisplay 10
execute if entity @e[tag=core,scores={toendtime=-20}] run scoreboard players set @e[tag=core,limit=1] toendtime -10
