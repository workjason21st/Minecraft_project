#需每秒進行的
#計時tick-> rglplustime:gametime
#execute as @e[tag=tick,nbt={PortalCooldown:0}] run data merge entity @s {PortalCooldown:20}
execute as 7-0-0-0-000700000007 run scoreboard players remove @s gametime 1
execute if score 7-0-0-0-000700000007 gametime matches -1 run scoreboard players remove 7-0-0-0-000700000007 rglplustime 1
execute if score 7-0-0-0-000700000007 gametime matches -1 run scoreboard players set 7-0-0-0-000700000007 gametime 59

#touch
scoreboard players remove 7-0-1-0-000700000007 rglplustouchtime 1
execute unless score 7-0-7-0-000700000007 rglplusmode matches 3 if score 7-0-1-0-000700000007 rglplustouchtime matches 0..10 as @r[gamemode=adventure,team=ghost] run function rglplus:start/timekill/touchkill_pre
execute if entity @a[tag=touch,team=human] run scoreboard players operation 接近鬼剩餘秒數 rglpluslist = 7-0-1-0-000700000007 rglplustouchtime
execute unless entity @a[tag=touch,team=human] run scoreboard players reset 接近鬼剩餘秒數 rglpluslist
execute unless entity @a[tag=touch,team=human] run scoreboard players operation 接近鬼剩餘秒數(已完成) rglpluslist = 7-0-1-0-000700000007 rglplustouchtime
#greentime
execute if score 7-0-7-0-000700000007 rglplusbyself matches 1 run scoreboard players remove @a[gamemode=!spectator,scores={rglplusbyself=1..60}] rglplusbyself 1

#刷新
execute run scoreboard players remove 7-0-7-0-000700000007 gametime 1
function rglplus:refresh/bossbar
#紅燈死亡#下方死亡倒數
execute if score 7-0-7-0-000100000000 rglplusredtime matches 0..60 if entity @a[team=!ghost,tag=red] run scoreboard players remove @a[gamemode=!spectator,team=!ghost,tag=red] rglplusredtime 1
execute if score 7-0-7-0-000100000000 rglplusredtime matches 0 if entity @e[limit=1,tag=rglplus,tag=core,scores={rglplusredtime=1..60,rglplusalleffect=0}] if entity @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}] run function rglplus:start/timekill/killred
execute if score 7-0-7-0-000100000000 rglplusredtime matches 0 if entity @e[limit=1,tag=rglplus,tag=core,scores={rglplusredtime=1..60,rglplusalleffect=1}] if entity @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}] run function rglplus:start/timekill/killredall
execute if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches 0..5 if entity @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}] run function rglplus:start/timekill/damagered
#道具有效秒數
execute as @a[tag=tolongtime] if score @s propstime matches 1.. run scoreboard players remove @s propstime 1
execute as @a[tag=tolongtime] if score @s propstime matches 0 run function rglplus:props/expired
#拯救訊息秒數
execute if score 7-0-7-0-000700000007 rglplusrescue matches 1.. as @a[team=human] if score @s rglplusrescue matches 1.. run scoreboard players remove @s rglplusrescue 1 


#
#M2換鬼
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 run scoreboard players remove 7-0-0-0-000700000007 rglplusghost 1
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-0-0-000700000007 rglplusghost matches 0 as @a[team=ghost,tag=pathogen] run function rglplus:start/timer/ghostchange
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-0-0-000700000007 rglplusghost matches 0 run function rglplus:start/timer/ghostchangesay

#發光
##倒數
execute if entity @e[limit=1,tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=1..6,gametime=60}] run function rglplus:start/timer/glow_countdown
execute if entity @e[limit=1,tag=rglplus,tag=core,tag=!rglplus_countdown,scores={rglplusglow=2..7,gametime=30}] run function rglplus:start/timer/glow_countdown

#Other
execute if score 7-0-7-0-000700000007 rglplusweapon matches 8..9 if score 7-0-7-0-000700000007 rglplusclearxporb matches 1..2 as @e[type=minecraft:experience_orb] store result score @s rglplusclearxporb run data get entity @s Age
execute if score 7-0-7-0-000700000007 rglplusweapon matches 8..9 if score 7-0-7-0-000700000007 rglplusclearxporb matches 1 as @e[type=minecraft:experience_orb] if score @s rglplusclearxporb matches 100.. run kill @s
execute if score 7-0-7-0-000700000007 rglplusweapon matches 8..9 if score 7-0-7-0-000700000007 rglplusclearxporb matches 2 as @e[type=minecraft:experience_orb] if score @s rglplusclearxporb matches 200.. run kill @s



execute if score 7-0-7-0-000700000007 gametime matches ..0 run scoreboard players set 7-0-7-0-000700000007 playgame 101
#re
execute if score 7-0-7-0-000700000007 gametime matches 1.. run schedule function rglplus:refresh/schedule 1s