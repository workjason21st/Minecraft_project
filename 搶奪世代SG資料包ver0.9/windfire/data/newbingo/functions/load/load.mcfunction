#結束讀取
execute if entity @a[tag=loaders] run tp @a[tag=loader] @e[tag=random10,limit=1]
execute if entity @a[tag=loaders] as @e[tag=random10] at @s run setblock ~ 128 ~ air
execute if entity @a[tag=loaders] run tp @e[tag=loader,type=!player] @e[tag=random0,limit=1]
execute if entity @a[tag=loaders] run tp @a[tag=loader] @e[tag=random0,limit=1]
execute if entity @a[tag=loaders] run gamemode adventure @a[tag=loaders]
execute if entity @a[tag=loaders] run effect clear @a[tag=loader] slowness
execute if entity @a[tag=loaders] run effect clear @a[tag=loader] mining_fatigue
execute if entity @a[tag=loaders] run effect clear @a[tag=loader] jump_boost
execute if entity @a[tag=loaders] run effect clear @a[tag=loader] minecraft:levitation
execute if entity @a[tag=loaders] run forceload remove all
execute if entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~ ~ ~ ~
#execute if entity @a[tag=loaders] run bossbar set newbingo:load value 0
execute if entity @a[tag=loaders] run scoreboard players set @e[tag=random0] load 1
execute if entity @a[tag=loaders] run bossbar set newbingo:load visible false
execute if entity @a[tag=loaders] run tellraw @a ["",{"text":"\n讀取地圖範圍：","color":"light_purple"},{"text":"地圖已經讀取完畢","bold":true,"color":"gold"}]

#讀取前
#execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] run tellraw @a ["",{"text":"\n讀取地圖範圍：","color":"light_purple"},{"text":"正在讀取地圖，請稍後20~30分鐘","bold":true,"color":"white"}]
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] run tellraw @a ["",{"text":"\n讀取地圖範圍：","color":"light_purple"},{"text":"正在讀取地圖，請稍後5~10分鐘(不一定要讀取完)","bold":true,"color":"white"}]
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] run tellraw @a ["",{"text":"\n讀取地圖範圍：","color":"light_purple"},{"text":"正在讀取地圖，請稍後3~5分鐘","bold":true,"color":"white"}]
execute if entity @e[tag=random0,scores={load=-3}] unless entity @a[tag=loaders] run tellraw @a ["",{"text":"\n讀取地圖範圍：","color":"light_purple"},{"text":"正在讀取地圖，請稍後1~2分鐘","bold":true,"color":"white"}]
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] run tellraw @a ["",{"text":"\n讀取地圖範圍：","color":"light_purple"},{"text":"正在讀取地圖，請稍後幾秒鐘","bold":true,"color":"white"}]
execute unless entity @a[tag=loaders] run tellraw @a ["",{"text":"若要停止讀取地圖點我","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function newbingo:load/stop"}}]
execute unless entity @a[tag=loaders] run bossbar set newbingo:load value 0
execute unless entity @a[tag=loaders] run bossbar set newbingo:load players @a
execute unless entity @a[tag=loaders] run bossbar set newbingo:load visible true
execute unless entity @a[tag=loaders] run scoreboard players set @e[tag=random10] load 0
execute unless entity @a[tag=loaders] run scoreboard players add @e[tag=random9] load 0
#execute unless entity @a[tag=loaders] as @e[tag=teampoint] run data merge entity @s {NoGravity:1}
#execute unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=teampoint] @s
execute unless entity @a[tag=loaders] run forceload remove all
execute unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~ ~ ~ ~
execute unless entity @a[tag=loaders] as @e[tag=random8] at @s run forceload add ~ ~ ~ ~
#execute unless entity @a[tag=loaders] as @e[tag=teampoint] run data merge entity @s {NoGravity:0}
#spreadplayers ~ ~ 最小間距 最大範圍需要*2
#
execute unless entity @a[tag=loaders] run tag @p add loader
execute unless entity @a[tag=loaders] run gamemode creative @a[tag=loader]
execute unless entity @a[tag=loaders] run effect give @a[tag=loader] slowness 999999 99 true
execute unless entity @a[tag=loaders] run effect give @a[tag=loader] mining_fatigue 999999 99 true
execute unless entity @a[tag=loaders] run effect give @a[tag=loader] jump_boost 999999 200 true
execute unless entity @a[tag=loaders] run effect give @a[tag=loader] levitation 999999 255 true
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] run bossbar set newbingo:load max 392
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] run bossbar set newbingo:load max 255
execute if entity @e[tag=random0,scores={load=-3}] unless entity @a[tag=loaders] run bossbar set newbingo:load max 63
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] run bossbar set newbingo:load max 31
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random10] ~-1000 129 ~-1500
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random9] ~-1000 129 ~1508
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @a[tag=loader] ~-1000 129 ~-1500
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random10] ~-500 129 ~-1000
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random9] ~-500 129 ~1008
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @a[tag=loader] ~-500 129 ~-1000

execute if entity @e[tag=random0,scores={load=-3}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random10] ~ 129 ~-500
execute if entity @e[tag=random0,scores={load=-3}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random9] ~ 129 ~508
execute if entity @e[tag=random0,scores={load=-3}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @a[tag=loader] ~ 129 ~-500
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random10] ~ 129 ~-250
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @e[tag=random9] ~ 129 ~258
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run tp @a[tag=loader] ~ 129 ~-250
execute unless entity @a[tag=loaders] as @e[tag=random10] at @s run setblock ~ 128 ~ barrier
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~-1000 ~1508 ~-1000 ~1508
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~1000 ~1508 ~1000 ~1508
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~ ~1508 ~ ~1508
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~500 ~1008 ~500 ~1008
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~-500 ~1008 ~-500 ~1008
execute if entity @e[tag=random0,scores={load=-3}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~ ~508 ~ ~508
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~ ~258 ~ ~258
##
execute if entity @a[tag=loaders] run tag @a[tag=loaders] remove loader
execute if entity @a[tag=loaders] run tag @a[tag=loaders] remove loaders
