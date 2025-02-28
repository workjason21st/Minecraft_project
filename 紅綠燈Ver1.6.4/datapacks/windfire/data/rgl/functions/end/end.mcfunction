function rgl:end/total
execute if entity @e[tag=core,scores={rglmap=4}] run clone 467 54 18 492 62 28 400 58 52
title @a times 5 45 5
#1 時間 bad贏
execute if entity @e[tag=core,scores={gameend=11}] run title @a title [{"text":"壞孩子們贏得勝利","color":"green"}]
execute if entity @e[tag=core,scores={gameend=11}] run tellraw @a ["",{"text":"\n遊戲時間到，壞孩子們贏得勝利","bold":"true","color":"white"}]
#2 good贏
execute if entity @e[tag=core,scores={gameend=12}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=12}] run tellraw @a ["",{"text":"\n所有人被殺光，鬼獲得勝利","bold":"true","color":"white"}]
#3
execute if entity @e[tag=core,scores={gameend=13}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=13}] run tellraw @a ["",{"text":"\n所有人動彈不得，鬼獲得勝利","bold":"true","color":"white"}]
#4
execute if entity @e[tag=core,scores={gameend=14}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=14}] run tellraw @a ["",{"text":"\n壞孩子耗盡所有死亡數，鬼獲得勝利","bold":"true","color":"white"}]
#5
execute if entity @e[tag=core,scores={gameend=15}] run title @a title [{"text":"壞孩子們贏得勝利","color":"green"}]
execute if entity @e[tag=core,scores={gameend=15}] run tellraw @a ["",{"text":"\n壞孩子的綠燈累積達到指定數量，壞孩子們贏得勝利","bold":"true","color":"white"}]
#6
execute if entity @e[tag=core,scores={gameend=16}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=16}] run tellraw @a ["",{"text":"\n壞孩子的任務沒有達成，全體死亡，鬼獲得勝利","bold":"true","color":"white"}]
#7 鬼王贏(全被感染)
execute if entity @e[tag=core,scores={gameend=17}] run title @a title [{"text":"鬼王獲得勝利","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=17}] run title @a subtitle [{"selector":"@a[tag=firstpathogen,tag=!pathogen,team=good]","bold":"false"},{"text":"、","color":"yellow"},{"selector":"@a[tag=pathogen,team=good]","bold":"false"},{"text":"獲得勝利","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=17}] unless entity @a[tag=firstpathogen,tag=!pathogen,team=good] run tellraw @a ["",{"text":"\n所有人被感染，","bold":"true","color":"white"},{"selector":"@a[tag=pathogen,team=good]","bold":"false"},{"text":"(初始和現任鬼王)獲得勝利","bold":"true","color":"white"}]
execute if entity @e[tag=core,scores={gameend=17}] if entity @a[tag=firstpathogen,tag=!pathogen,team=good] run tellraw @a ["",{"text":"\n所有人被感染，","bold":"true","color":"white"},{"selector":"@a[tag=firstpathogen,tag=!pathogen,team=good]","bold":"false"},{"text":"、","color":"yellow"},{"selector":"@a[tag=pathogen,team=good]","bold":"false"},{"text":"(初始和現任鬼王)獲得勝利","bold":"true","color":"white"}]
#8 鬼死光
execute if entity @e[tag=core,scores={gameend=18}] run title @a title [{"text":"壞孩子們贏得勝利","color":"green"}]
execute if entity @e[tag=core,scores={gameend=18}] run tellraw @a ["",{"text":"\n壞孩子成功將所有的鬼反殺，壞孩子們贏得勝利","bold":"true","color":"white"}]
#9 鬼隊贏除了最後一個被感染的(紅隊沒被感染)
execute if entity @e[tag=core,scores={gameend=19}] run title @a title [{"text":"鬼王/小鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=19}] run tellraw @a ["",{"text":"\n綠燈全被鬼感染，剩餘的人動彈不得，\n鬼獲得勝利(除了最後被感染的","bold":"false","color":"white"},{"selector":"@a[tag=laster,team=good]","bold":"true"},{"text":")","color":"white"}]
#
execute if entity @e[tag=core,scores={gameend=11}] run scoreboard players add @a[team=bad] wincount 1
execute if entity @e[tag=core,scores={gameend=15}] run scoreboard players add @a[team=bad] wincount 1
execute if entity @e[tag=core,scores={gameend=18}] run scoreboard players add @a[team=bad] wincount 1
execute if entity @e[tag=core,scores={gameend=11}] run scoreboard players add @a[team=badred] wincount 1
execute if entity @e[tag=core,scores={gameend=15}] run scoreboard players add @a[team=badred] wincount 1
execute if entity @e[tag=core,scores={gameend=18}] run scoreboard players add @a[team=badred] wincount 1
execute if entity @e[tag=core,scores={gameend=12..14}] run scoreboard players add @a[team=good] wincount 1
execute if entity @e[tag=core,scores={gameend=16}] run scoreboard players add @a[team=good] wincount 1
execute if entity @e[tag=core,scores={gameend=17}] run scoreboard players add @a[tag=firstpathogen,tag=!pathogen,team=good] wincount 1
execute if entity @e[tag=core,scores={gameend=17}] run scoreboard players add @a[tag=pathogen,team=good] wincount 1
execute if entity @e[tag=core,scores={gameend=19}] run scoreboard players add @a[team=good] wincount 1
execute if entity @e[tag=core,scores={gameend=19}] run scoreboard players remove @a[team=good,tag=laster] wincount 1
#
execute as @a run item replace entity @s armor.head with warped_button{Enchantments:[{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.max_health",Amount:0,Slot:head,Name:"generic.max_health",UUID:[I;-1211112,18822,19175,-37644]}]}
execute as @a at @s run summon minecraft:firework_rocket
execute as @a at @s run summon minecraft:firework_rocket
execute as @a at @s run summon minecraft:firework_rocket
kill @e[tag=rglname]
execute as @e[tag=mapitem] at @s run tp ~ -70 ~
kill @e[tag=mapitem]
kill @e[type=item,predicate=rgl:props/props]
kill @e[type=item,predicate=rgl:color]
kill @e[type=minecraft:experience_orb]
kill @e[type=minecraft:trident]
spawnpoint @a 106 51 106
tp @a 106 51 106
#execute as @a[gamemode=spectator,team=!spe] run team join bad @s
execute as @a[team=badred] run team join bad @s
gamemode adventure @a
function rgl:start/scheduleclear
effect clear @a
effect give @a minecraft:saturation 999999 0 true
effect give @a minecraft:regeneration 999999 0 true
effect give @a minecraft:night_vision 999999 0 true
effect give @a minecraft:resistance 999999 9 true
clear @a
tag @a remove greener
tag @a remove red
tag @a remove tored
tag @a remove tolime
tag @a remove whitechange
tag @a[team=bad] add green
kill @a[scores={displayhealth=21..}]
bossbar set rgl:time visible false
bossbar set rgl:touch visible false
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list wincount
scoreboard players operation @e[tag=core,limit=1] rglcount = @e[tag=random6,limit=1] rglcount
function rgl:set/tagset
function rgl:lobby/lobbyset
scoreboard players set @e[tag=core] gameend -1
setblock 117 51 110 minecraft:dark_oak_wall_sign[facing=west]{GlowingText:1b,Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function rgl:start/before"}}',Text2:'{"text":"或是","color":"black"}',Text3:'{"text":"點我直接開始遊戲","color":"black","bold":"true"}'}
