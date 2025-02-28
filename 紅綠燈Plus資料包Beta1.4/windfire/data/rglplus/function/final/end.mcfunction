execute if entity @e[tag=rglplus,tag=core,scores={rglplusround=1}] run function rglplus:final/total
title @a times 5 45 5
#1 時間 bad贏
execute if entity @e[tag=rglplus,tag=core,scores={playgame=101}] run title @a title [{"text":"壞孩子們贏得勝利","color":"green"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=101}] run tellraw @a ["",{"text":"\n遊戲時間到，壞孩子們贏得勝利","bold":true,"color":"white"}]
#2 good贏
execute if entity @e[tag=rglplus,tag=core,scores={playgame=102}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=102}] run tellraw @a ["",{"text":"\n所有人被解決了，鬼獲得勝利","bold":true,"color":"white"}]
#3
execute if entity @e[tag=rglplus,tag=core,scores={playgame=103}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=103}] run tellraw @a ["",{"text":"\n所有人動彈不得，鬼獲得勝利","bold":true,"color":"white"}]
#4
execute if entity @e[tag=rglplus,tag=core,scores={playgame=104}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=104}] run tellraw @a ["",{"text":"\n壞孩子耗盡所有復活數，本回合鬼獲得勝利","bold":true,"color":"white"}]
#5/6、 7/8
execute if entity @e[tag=rglplus,tag=core,scores={playgame=105}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=105}] run tellraw @a ["",{"text":"\n最後一人沒有達成壞孩子任務，遭受死亡，鬼獲得勝利","bold":true,"color":"white"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=106}] run title @a title [{"text":"鬼王/小鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=106}] run tellraw @a ["",{"text":"\n最後一人沒有達成壞孩子任務，遭受感染，鬼獲得勝利(除了最後被感染的","bold":true,"color":"white"}]

execute if entity @e[tag=rglplus,tag=core,scores={playgame=107}] run title @a title [{"text":"鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=107}] run tellraw @a ["",{"text":"\n壞孩子的任務沒有達成，全體被解決，鬼獲得勝利","bold":true,"color":"white"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=108}] run title @a title [{"text":"鬼王/小鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=108}] run tellraw @a ["",{"text":"\n壞孩子的任務沒有達成，全體被感染，鬼獲得勝利(除了最後被感染的","bold":true,"color":"white"}]
#9 鬼隊贏除了最後一個被感染的(紅隊沒被感染)
execute if entity @e[tag=rglplus,tag=core,scores={playgame=109}] run title @a title [{"text":"鬼王/小鬼獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=109}] run tellraw @a ["",{"text":"\n綠燈全被鬼感染，剩餘的人動彈不得，\n鬼獲得勝利(除了最後被感染的","bold":false,"color":"white"},{"selector":"@a[tag=laster,team=ghost]","bold":true},{"text":")","color":"white"}]
#10 鬼王贏(全被感染)
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110}] run title @a title [{"text":"鬼王獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110}] run title @a subtitle [{"selector":"@a[tag=firstpathogen,tag=!pathogen,team=ghost]","bold":false},{"text":"、","color":"yellow"},{"selector":"@a[tag=pathogen,team=ghost]","bold":false},{"text":"獲得勝利","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110}] unless entity @a[tag=firstpathogen,tag=!pathogen,team=ghost] run tellraw @a ["",{"text":"\n所有人被感染，","bold":true,"color":"white"},{"selector":"@a[tag=pathogen,team=ghost]","bold":false},{"text":"(初始和現任鬼王)獲得勝利","bold":true,"color":"white"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110}] if entity @a[tag=firstpathogen,tag=!pathogen,team=ghost] run tellraw @a ["",{"text":"\n所有人被感染，","bold":true,"color":"white"},{"selector":"@a[tag=firstpathogen,tag=!pathogen,team=ghost]","bold":false},{"text":"、","color":"yellow"},{"selector":"@a[tag=pathogen,team=ghost]","bold":false},{"text":"(初始和現任鬼王)獲得勝利","bold":true,"color":"white"}]

#21 鬼死光
execute if entity @e[tag=rglplus,tag=core,scores={playgame=121}] run title @a title [{"text":"壞孩子們贏得勝利","color":"green"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=121}] run tellraw @a ["",{"text":"\n壞孩子成功擊退所有的鬼，壞孩子們贏得勝利","bold":true,"color":"white"}]
#
function rglplus:final/count
function rglplus:final/restore
execute if entity @e[tag=rglplus,tag=core,scores={rglplusround=2..}] run function rglplus:final/roundtotal
#
execute as @a run item replace entity @s armor.head with warped_button[enchantments={levels:{binding_curse:1}},attribute_modifiers={modifiers:[{type:"max_health",amount:0,slot:head,operation:add_value,id:99-9-9-9-999}]},hide_additional_tooltip={}]
execute as @a at @s run summon minecraft:firework_rocket
execute as @a at @s run summon minecraft:firework_rocket
execute as @a at @s run summon minecraft:firework_rocket
kill @e[tag=rglplusname]
kill @e[type=item,predicate=rglplus:props/props]
kill @e[type=item,predicate=rglplus:color]
kill @e[type=minecraft:experience_orb]
kill @e[type=minecraft:trident]
tp @e[tag=rglplus,tag=touchtick,limit=1] @e[tag=rglplus,tag=core,limit=1]
tp @a @e[tag=rglplus,tag=core,limit=1]
execute as @a at @s run spawnpoint @a ~ ~ ~
#execute as @a[gamemode=spectator,team=!spe] run team join bad @s
execute as @a[team=humanred] run team join human @s
gamemode adventure @a[tag=!host]
gamemode creative @a[tag=host]
xp add @a -999999999
function rglplus:final/scheduleclear
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run function rglplus:lobby/lobbyset
effect clear @a
effect give @a minecraft:saturation infinite 0 true
effect give @a minecraft:regeneration infinite 0 true
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:resistance infinite 9 true
clear @a
execute as @a run attribute @s minecraft:scale base set 1
execute as @a run attribute @s minecraft:sneaking_speed base set 0.3
execute as @a run attribute @s minecraft:gravity base set 0.08
execute as @a run attribute @s minecraft:burning_time base set 1
execute as @a run attribute @s entity_interaction_range base set 3
tag @a[team=human] add green
kill @a[scores={displayhealth=21..}]
bossbar set rglplus:time visible false
bossbar set rglplus:people visible false
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list smallwinpoint
function rglplus:set/tagset
scoreboard players set @e[tag=rglplus,tag=core] playgame -1
scoreboard players set @e[tag=rglplus,tag=core] gametime 0
data merge entity @e[tag=rglplus,tag=tick,limit=1] {PortalCooldown:-1}
data merge entity @e[tag=rglplus,tag=touchtick,limit=1] {PortalCooldown:-1}
scoreboard players set @e[tag=rglplus,tag=tick] gametime 5
bossbar set rglplus:time name ["",{"text":"開始倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=rglplus,tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
