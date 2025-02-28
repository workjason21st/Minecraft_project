execute store result score @e[tag=core,limit=1] laster if entity @a[team=!good,gamemode=adventure]
execute store result score @e[tag=core,limit=1] greener if entity @a[team=bad,gamemode=adventure,tag=green]
execute store result score @e[tag=core,limit=1] reder if entity @a[team=badred,gamemode=adventure,tag=red]
execute store result score @e[tag=core,limit=1] ghost if entity @a[team=good,gamemode=adventure]
scoreboard players operation 剩餘的孩子們 rgllist = @e[tag=core,limit=1] laster
scoreboard players operation 在綠燈狀態的孩子 rgllist = @e[tag=core,limit=1] greener
scoreboard players operation 在紅燈狀態的孩子 rgllist = @e[tag=core,limit=1] reder
execute if entity @e[tag=core,scores={rglspecial=3}] run scoreboard players operation 在場上鬼的數量 rgllist = @e[tag=core,limit=1] ghost
execute if entity @e[tag=core,scores={rglmode=9}] run scoreboard players operation 在場上鬼的數量 rgllist = @e[tag=core,limit=1] ghost
