function bump:start/died
execute as @a run scoreboard players operation @s striderm = @s stridercm
execute as @a run scoreboard players operation @s striderm /= @e[tag=mainAI,limit=1] stridercm

execute as @a run scoreboard players operation @s top_kill = @s kill
execute as @a run scoreboard players operation @s top_killstrider = @s killstrider
execute as @a run scoreboard players operation @s top_used = @s used
execute as @a run scoreboard players operation @s top_striderm = @s striderm

scoreboard players operation 擊殺最多人數 top_kill > @a top_kill
scoreboard players operation @a top_kill -= 擊殺最多人數 top_kill
scoreboard players operation 擊殺最多熾足獸 top_killstrider > @a top_killstrider
scoreboard players operation @a top_killstrider -= 擊殺最多熾足獸 top_killstrider
scoreboard players operation 使用最多次扭曲蕈菇釣竿 top_used > @a top_used
scoreboard players operation @a top_used -= 使用最多次扭曲蕈菇釣竿 top_used
scoreboard players operation 騎乘熾足獸最遠距離 top_striderm > @a top_striderm
scoreboard players operation @a top_striderm -= 騎乘熾足獸最遠距離 top_striderm

tellraw @a ["",{"text":"\n地圖製作者:風火-感謝你的遊玩\n--------------------END--------------------"},{"text":"\n聽到都會怕: ","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":"斬殺最多玩家(OP點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar kill"}},{"selector":"@a[scores={top_kill=0..}]"},{"text":"\n濫殺無辜: ","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":"斬殺最多熾足獸(OP點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar killstrider"}},{"selector":"@a[scores={top_killstrider=0..}]"},{"text":"\n遛動物之王: ","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":"騎乘熾足獸最遠距離(OP點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar striderm"}},{"selector":"@a[scores={top_striderm=0..}]"},{"text":"\n懂用: ","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":"使用最多次扭曲蕈菇釣竿(OP點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar used"}},{"selector":"@a[scores={top_used=0..}]"}]
execute if entity @e[tag=mainAI,limit=1,scores={win=1}] if entity @e[tag=teamyellowwin] run tellraw @a ["",{"text":"\n黃隊","bold":true,"color":"yellow"},{"text":" 存活到最後","bold":true,"color":"white"},{"text":"贏得勝利\n","bold":true,"color":"white"}]
execute if entity @e[tag=mainAI,limit=1,scores={win=1}] if entity @e[tag=teamredwin] run tellraw @a ["",{"text":"\n紅隊","bold":true,"color":"red"},{"text":" 存活到最後","bold":true,"color":"white"},{"text":"贏得勝利\n","bold":true,"color":"white"}]
execute if entity @e[tag=mainAI,limit=1,scores={win=1}] if entity @e[tag=teamgreenwin] run tellraw @a ["",{"text":"\n綠隊","bold":true,"color":"green"},{"text":" 存活到最後","bold":true,"color":"white"},{"text":"贏得勝利\n","bold":true,"color":"white"}]
execute if entity @e[tag=mainAI,limit=1,scores={win=1}] if entity @e[tag=teamaquawin] run tellraw @a ["",{"text":"\n藍隊","bold":true,"color":"dark_aqua"},{"text":" 存活到最後","bold":true,"color":"white"},{"text":"贏得勝利\n","bold":true,"color":"white"}]

execute if entity @e[tag=mainAI,limit=1,scores={win=1}] if entity @e[tag=solewin] run tellraw @a ["",{"text":"\n","bold":true,"color":"gold"},{"selector":"@a[gamemode=adventure]","bold":true,"color":"gold"},{"text":" 存活到最後","bold":true,"color":"white"},{"text":"獨自贏得勝利\n","bold":true,"color":"white"}]
execute if entity @e[tag=mainAI,limit=1,scores={win=1}] if entity @e[tag=aiwin] run tellraw @a ["",{"text":"\n","bold":true,"color":"gold"},{"text":"電腦們","bold":true,"color":"gray"},{"text":" 存活到最後","bold":true,"color":"white"},{"text":"贏得勝利\n","bold":true,"color":"white"}]

execute if entity @e[tag=mainAI,limit=1,scores={win=0}] run tellraw @a ["",{"text":"\n沒有任何人","bold":true,"color":"gold"},{"text":"存活到最後","bold":true,"color":"white"},{"text":"\n戰爭的結果就是沒有贏家\n","bold":true,"color":"white"}]

effect clear @a
effect give @a minecraft:saturation 999999 0 true
effect give @a minecraft:regeneration 999999 127 true
clear @a
xp set @a 0
tp @a 112 32 112
gamemode adventure @a
spawnpoint @a 112 32 112
kill @e[type=item]
kill @e[type=trident]
kill @e[type=strider,tag=!displaystrider]
kill @e[tag=teamwin]
kill @e[tag=solewin]
function bump:set/tagset
execute as @a at @s run summon minecraft:firework_rocket
execute as @a at @s run summon minecraft:firework_rocket
scoreboard players set @e[tag=mainAI] endgame -1
scoreboard players set @e[tag=mainAI] startgame 0
scoreboard objectives setdisplay sidebar kill
tp @e[tag=displaystrider] 107 30 115