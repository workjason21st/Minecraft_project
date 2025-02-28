execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run schedule clear rgl:start/red/reder

scoreboard players add @s[tag=green,tag=!red,team=bad] usered 1
scoreboard players remove @s[tag=green,tag=!red,team=bad] rglused 1
team join badred @s[tag=green,tag=!red,team=bad]
execute if entity @s[tag=green,tag=!red,team=badred] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s[tag=green,tag=!red,team=badred]","bold":"true","color":"red"},{"text":"碰觸到牆壁暫停自己","color":"red"}]
execute if entity @s[tag=green,tag=!red,team=badred] run effect give @a[gamemode=adventure,team=badred] minecraft:glowing 1 0 true
scoreboard players operation @s[tag=green,tag=!red,team=badred] rglkill = @e[tag=core,limit=1] rglkill
execute if entity @e[tag=core,scores={rglsword=8}] run xp add @s[tag=green,tag=!red,team=badred] -999999

#
execute as @s[tag=green,tag=!red,team=badred] if predicate rgl:vehicle_car at @s run summon zombie ~ ~1 ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {Count:1, id:red_banner}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rgl","rglnamere","rglname"]}
execute as @s[tag=green,tag=!red,team=badred] unless predicate rgl:vehicle_car at @s run summon zombie ~ ~ ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {Count:1, id:red_banner}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rgl","rglnamere","rglname"]}
execute as @e[tag=rglnamere,team=] run team join badred @s

execute if entity @e[tag=core,scores={rglkeepwhite=0}] as @s[tag=green,tag=!red,team=badred] run function rgl:start/white/redtowhite
attribute @s[tag=green,tag=!red,team=badred] minecraft:generic.attack_damage base set 0
tag @s[tag=green,tag=!red,team=badred] add red
tag @s[tag=green,tag=red,team=badred] remove green

execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run function rgl:start/red/reder
function rgl:other/getlaster
