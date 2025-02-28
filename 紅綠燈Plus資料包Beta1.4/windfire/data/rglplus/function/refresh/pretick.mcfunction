#時間遞減條
#execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..}] as @e[tag=rglplus,tag=tick,nbt={PortalCooldown:0}] run data merge entity @s {PortalCooldown:20}
execute if score 7-0-7-0-000700000007 playgame matches 0.. as 7-0-0-0-000700000007 run scoreboard players remove @s gametime 1
execute if score 7-0-7-0-000700000007 playgame matches 0..1 as 7-0-0-0-000700000007 store result bossbar rglplus:time value run scoreboard players get 7-0-0-0-000700000007 gametime
execute if score 7-0-7-0-000700000007 playgame matches 0..2 as 7-0-0-0-000700000007 run function rglplus:refresh/bossbar

#
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 3 as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.5 0.1
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 2 as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.7 0.1
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 1 as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.9 0.1
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1 0.1

execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 10 run title @a title [{"text":"１０","color":"red"}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 5 run title @a title [{"text":"５","color":"red"}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 3 run title @a title [{"text":"▉","color":"red","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 2 run title @a title [{"text":"▉","color":"gold","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 1 run title @a title [{"text":"▉","color":"green","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 run title @a title [{"text":"Let's Play","color":"green","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 run tellraw @a ["\n",{"text":"▶▶▶▶Let's Play","bold":true,"color":"dark_purple","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 run effect give @a[gamemode=adventure,tag=green,team=human] minecraft:hunger 1 127 true
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 as @a[team=ghost] run function rglplus:role/ghost/giveweapon
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 as @a[team=ghost] run function rglplus:role/ghosteffect
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 run effect give @a[team=ghost] minecraft:regeneration 2 5 true
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1,rglplusqteghost=3..4}] if score 7-0-0-0-000700000007 gametime matches 0 run function rglplus:role/ghost/ghostrandom
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1,rglplusmode=2,rglplusqteghost=3..4}] if score 7-0-0-0-000700000007 gametime matches 0 run function rglplus:role/ghost/infect
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 run scoreboard players set 7-0-7-0-000700000007 playgame 2

execute if score 7-0-7-0-000700000007 playgame matches 2 if score 7-0-0-0-000700000007 gametime matches 0 run function rglplus:preprocess/touchstartset
execute if score 7-0-7-0-000700000007 playgame matches 2 if score 7-0-0-0-000700000007 gametime matches 0 run function rglplus:refresh/glow
execute if score 7-0-7-0-000700000007 playgame matches 2 if score 7-0-0-0-000700000007 gametime matches 0 run schedule function rglplus:refresh/schedule 1s
execute if score 7-0-7-0-000700000007 playgame matches 2 if score 7-0-0-0-000700000007 gametime matches 0 run scoreboard players operation 7-0-0-0-000700000007 gametime = 7-0-7-0-000200000000 gametime
##############
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 9 as @a at @s run playsound minecraft:item.crossbow.loading_start master @a ~ ~ ~ 1 0.5 0.1
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 8 as @a at @s run playsound minecraft:item.crossbow.loading_start master @a ~ ~ ~ 1 0.7 0.1
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 7 as @a at @s run playsound minecraft:item.crossbow.loading_start master @a ~ ~ ~ 1 0.9 0.1
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 5 run tellraw @a [{"text":"▶▶倒數５秒鐘遊戲開始","color":"gold"}]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 3 as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 0.5 0.1
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 2 as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 0.7 0.1
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 1 as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 0.9 0.1
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 as @a at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 1 0.1

execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 4 run title @a title [{"text":"４","color":"gold"}]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 3 run title @a title [{"text":"３","color":"gold"}]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 2 run title @a title [{"text":"２","color":"gold"}]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 1 run title @a title [{"text":"１","color":"gold","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run title @a title [{"text":"START","color":"light_purple","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run tellraw @a ["\n",{"text":"START","color":"light_purple","bold":true}]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 as @e[limit=1,type=area_effect_cloud,tag=cartick] run data merge entity @s {PortalCooldown:600}

execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run effect clear @a[team=!ghost]
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run function rglplus:role/greener
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run function rglplus:role/greeneffect
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 as @a[team=human] run function rglplus:role/basiseffect
#反擊武器
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0,rglpluskidsword=1..}] unless score 7-0-7-0-000700000007 rglplusmode matches 3 if score 7-0-0-0-000700000007 gametime matches 0 as @a[team=human] run function rglplus:start/game/sword/childstick
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0,rglplusmode=3}] if score 7-0-0-0-000700000007 gametime matches 0 run effect give @a[team=human] minecraft:regeneration infinite 0 true
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run bossbar set rglplus:time max 20
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run bossbar set rglplus:time value 20
execute if score 7-0-7-0-000700000007 playgame matches 0 if score 7-0-0-0-000700000007 gametime matches 0 run scoreboard players set 7-0-7-0-000700000007 playgame 1
#20秒放出
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 run scoreboard players set 7-0-0-0-000700000007 gametime 20
execute if score 7-0-7-0-000700000007 playgame matches 1 if score 7-0-0-0-000700000007 gametime matches 0 run tellraw @a [{"text":"倒數２０秒鐘▶▶鬼開始移動","color":"red"}]

#上方剩餘時間
execute if score 7-0-7-0-000700000007 playgame matches 0 if entity 7-0-0-0-000700000007 run bossbar set rglplus:time name ["",{"text":"開始倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=rglplus,tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
execute if score 7-0-7-0-000700000007 playgame matches 1 if entity 7-0-0-0-000700000007 run bossbar set rglplus:time name ["",{"text":"釋放鬼倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=rglplus,tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]

execute if score 7-0-7-0-000700000007 playgame matches 0..1 run schedule function rglplus:refresh/pretick 1s
