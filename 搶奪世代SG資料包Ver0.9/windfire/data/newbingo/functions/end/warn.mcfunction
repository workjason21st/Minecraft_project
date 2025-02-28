#execute if entity @e[tag=random0,scores={mode2time=2..}] run scoreboard players operation @e[tag=random0,limit=1] toenddisplay += @e[tag=random0,limit=1] toendtime
execute if entity @e[tag=random0,scores={toendtime=-1}] run tellraw @a ["",{"text":"▶ 遊戲時間剩餘１分鐘 ◀","bold":true,"color":"light_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-1}] run title @a title ["",{"text":"◀剩餘１分鐘▶","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-1}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=random0,scores={toendtime=-1}] run scoreboard players set @e[tag=random0,limit=1] toendtime 1

execute if entity @e[tag=random0,scores={toendtime=-5}] run tellraw @a ["",{"text":"▶ 遊戲時間剩餘５分鐘 ◀","bold":true,"color":"light_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-5}] run title @a title ["",{"text":"◀剩餘５分鐘▶","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-5}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=random0,scores={toendtime=-5,mode2time=30..60}] run tellraw @a[gamemode=!spectator] ["",{"text":"點擊強制結束遊戲 ▶▶▶SKIP","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function newbingo:end/skip"},"hoverEvent":{"action":"show_text","contents":[{"text":"若是認為大勢已定，點擊我\n","color":"white"},{"text":"只要有過半數人同意就會強制判定輸贏","color":"red"}]}}]
execute if entity @e[tag=random0,scores={toendtime=-5}] run scoreboard players add @e[tag=random0,limit=1] toenddisplay 4
execute if entity @e[tag=random0,scores={toendtime=-5}] run scoreboard players set @e[tag=random0,limit=1] toendtime -1

execute if entity @e[tag=random0,scores={toendtime=-15}] run tellraw @a ["",{"text":"▶ 遊戲時間剩餘１５分鐘 ◀","bold":true,"color":"light_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-15}] run title @a title ["",{"text":"◀剩餘１５分鐘▶","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-15}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=random0,scores={toendtime=-15,mode2time=40..60}] run tellraw @a[gamemode=!spectator] ["",{"text":"點擊強制結束遊戲 ▶▶▶SKIP","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function newbingo:end/skip"},"hoverEvent":{"action":"show_text","contents":[{"text":"若是認為大勢已定，點擊我\n","color":"white"},{"text":"只要有過半數人同意就會強制判定輸贏","color":"red"}]}}]
execute if entity @e[tag=random0,scores={toendtime=-15}] run scoreboard players add @e[tag=random0,limit=1] toenddisplay 10
execute if entity @e[tag=random0,scores={toendtime=-15}] run scoreboard players set @e[tag=random0,limit=1] toendtime -5

execute if entity @e[tag=random0,scores={toendtime=-30}] run tellraw @a ["",{"text":"▶ 遊戲時間剩餘３０分鐘 ◀","bold":true,"color":"light_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-30}] run title @a title ["",{"text":"◀剩餘３０分鐘▶","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=random0,scores={toendtime=-30}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=random0,scores={toendtime=-30}] run scoreboard players add @e[tag=random0,limit=1] toenddisplay 15
execute if entity @e[tag=random0,scores={toendtime=-30}] run scoreboard players set @e[tag=random0,limit=1] toendtime -15
