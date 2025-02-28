execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run schedule clear rgl:start/red/reder

scoreboard players add @s usered 1
#execute at @s if entity @p[tag=green,tag=!red,team=bad] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@p[tag=green,tag=!red,team=bad]","bold":"true","color":"red"},{"text":"使用紅燈暫停自己","color":"red"},{"text":",且讓所有壞小孩發光3秒","color":"red"}]
team join badred @p[tag=spyred,tag=!spyreds,team=bad]
execute at @s if entity @p[tag=spyred,tag=!spyreds,team=badred,deathdetect=0] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@p[tag=spyred,tag=!spyreds,team=badred]","bold":"true","color":"red"},{"text":"被臥底","color":"red"},{"selector":"@s","bold":"true"},{"text":"強制使用紅燈暫停自己","color":"red"}]

#
execute at @s as @p[tag=spyred,tag=!spyreds,team=badred] if predicate rgl:vehicle_car at @s run summon zombie ~ ~1 ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {Count:1, id:red_banner}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rgl","rglnamere","rglname"]}
execute at @s as @p[tag=spyred,tag=!spyreds,team=badred] unless predicate rgl:vehicle_car at @s run summon zombie ~ ~ ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {Count:1, id:red_banner}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rgl","rglnamere","rglname"]}
execute as @e[tag=rglnamere,team=] run team join badred @s

execute at @s run clear @p[tag=spyred,tag=!spyreds,team=badred]
execute at @s run attribute @p[tag=spyred,tag=!spyreds,team=badred] minecraft:generic.attack_damage base set 0
execute at @s run tag @p[tag=spyred,tag=!spyreds,team=badred] add red
execute at @s run tag @p[tag=spyred,tag=!spyreds,tag=red,team=badred] remove green
execute at @s run tag @p[tag=spyred,tag=!spyreds,team=badred] add spyreds

execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run function rgl:start/red/reder
function rgl:other/getlaster
