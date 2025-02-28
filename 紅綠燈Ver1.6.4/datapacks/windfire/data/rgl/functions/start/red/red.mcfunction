execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run schedule clear rgl:start/red/reder

execute as @a[gamemode=!spectator,tag=green,tag=!tored,tag=!red,team=bad,scores={deathdetect=0}] at @s if entity @e[type=item,predicate=rgl:red,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:red,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:red,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:red,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:red,limit=1,sort=nearest] throwid3 run tag @s add tored
execute as @a[tag=green,tag=tored,tag=!red,team=bad] at @s as @e[type=item,predicate=rgl:red,limit=1,sort=nearest] run kill @s

scoreboard players add @a[tag=green,tag=tored,tag=!red,team=bad] usered 1
scoreboard players remove @a[tag=green,tag=tored,tag=!red,team=bad] rglused 1
team join badred @a[tag=green,tag=tored,tag=!red,team=bad]
execute if entity @a[tag=green,tag=tored,tag=!red,team=badred] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=green,tag=tored,tag=!red,team=badred]","bold":"true","color":"red"},{"text":"使用紅燈暫停自己","color":"red"}]
execute if entity @a[tag=green,tag=tored,tag=!red,team=badred] run effect give @a[gamemode=adventure,team=bad] minecraft:glowing 1 0 true
scoreboard players operation @a[tag=green,tag=tored,tag=!red,team=badred] rglkill = @e[tag=core,limit=1] rglkill
execute if entity @e[tag=core,scores={rglsword=8}] run xp add @a[tag=green,tag=tored,tag=!red,team=badred] -999999

#
execute as @a[tag=green,tag=tored,tag=!red,team=badred] if predicate rgl:vehicle_car at @s run summon zombie ~ ~1 ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {Count:1, id:red_banner}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rgl","rglnamere","rglname"]}
execute as @a[tag=green,tag=tored,tag=!red,team=badred] unless predicate rgl:vehicle_car at @s run summon zombie ~ ~ ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {Count:1, id:red_banner}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rgl","rglnamere","rglname"]}
#execute as @e[tag=rglnamere,team=] at @s store result score @s throwid0 run data get entity @p[gamemode=!spectator,tag=green,tag=tored,tag=!red,team=badred] UUID[0]
#execute as @e[tag=rglnamere,team=] at @s store result score @s throwid1 run data get entity @p[gamemode=!spectator,tag=green,tag=tored,tag=!red,team=badred] UUID[1]
#execute as @e[tag=rglnamere,team=] at @s store result score @s throwid2 run data get entity @p[gamemode=!spectator,tag=green,tag=tored,tag=!red,team=badred] UUID[2]
#execute as @e[tag=rglnamere,team=] at @s store result score @s throwid3 run data get entity @p[gamemode=!spectator,tag=green,tag=tored,tag=!red,team=badred] UUID[3]
execute as @e[tag=rglnamere,team=] run team join badred @s

scoreboard players set @a[tag=green,tag=tored,tag=!red,team=badred] rglspecial 1
execute as @a[tag=green,tag=tored,tag=!red,team=badred] run attribute @s minecraft:generic.attack_damage base set 0
tag @a[tag=green,tag=tored,tag=!red,team=badred] add red
tag @a[tag=green,tag=tored,tag=red,team=badred] remove green
tag @a[tag=tored,tag=red,team=badred] remove tored

execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run function rgl:start/red/reder
function rgl:other/getlaster
