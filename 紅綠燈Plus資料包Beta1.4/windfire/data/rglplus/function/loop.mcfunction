#登入
execute if score 7-0-7-0-000700000007 playgame matches ..-1 if entity @a[tag=!rglplus_register] run function rglplus:loop/register
execute if score 7-0-0-0-000700000007 gametime matches 0.. if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2}] if entity @a[predicate=rglplus:character/nosper] run function rglplus:loop/sper
#舊版
execute if dimension minecraft:overworld if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0,scores={playgame=..-1}] run function rglplus:lobby/main
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0,scores={playgame=1..2,rglplusplaymap=1}] as @a at @s if block ~ ~-1 ~ minecraft:respawn_anchor run function rglplus:map/tp
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0,scores={playgame=1..2,rglplusplaymap=3}] if entity @e[type=area_effect_cloud,predicate=rglplus:cooldown400] run function rglplus:map/horse
#書本
execute if score 7-0-7-0-000700000007 playgame matches ..-1 run function rglplus:loop/book

#時間 => schedule
#execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..1}] if entity @e[tag=rglplus,tag=tick,nbt={PortalCooldown:0}] run function rglplus:refresh/pretick
#execute if entity @e[type=armor_stand,tag=rglplus,tag=core,scores={playgame=2}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,scores={gametime=0}] if entity @a[team=ghost] as @a[gamemode=adventure,team=human,tag=touch,tag=green] if score @s[scores={rglplus_sqrt=0..}] rglplus_sqrt <= @e[type=armor_stand,tag=rglplus,tag=core,limit=1] rglplustouchdis run function rglplus:start/touch/touchremove
#deathdetect => adv.
#execute if score 7-0-7-0-000700000007 playgame matches ..-1 if entity @a[scores={deathdetect=1..,displayhealth=20}] run function rglplus:lobby/death
#execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[scores={deathdetect=1..,displayhealth=20}] run function rglplus:start/death
#-----------
#red green ghost
execute if score 7-0-7-0-000700000007 playgame matches 0..2 if entity @e[type=item,predicate=rglplus:color] run function rglplus:start/game/throwerget
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusredwall=1,rglplusalleffect=0}] as @a[gamemode=!spectator,tag=green,team=human,scores={deathdetect=0,rglplusredcount=1..,rglplusredwall=2},predicate=!rglplus:wallcool] at @s anchored eyes unless block ^ ^ ^0.45 #rglplus:rglplusairglass run function rglplus:role/red/redwall
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusredwall=1,rglplusalleffect=1}] if score 7-0-7-0-000100000000 rglplusredcount matches 1.. as @a[gamemode=!spectator,tag=green,team=human,scores={deathdetect=0,rglplusredwall=2},predicate=!rglplus:wallcool] at @s anchored eyes unless block ^ ^ ^0.45 #rglplus:rglplusairglass run function rglplus:role/red/redwall
#
#props
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusghostprop=1}] if entity @e[type=item,predicate=rglplus:props/props] run function rglplus:props/getthrower
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglpluskidsword=1..}] if entity @e[type=item,predicate=rglplus:props/props] run function rglplus:props/getthrower

#show_dis
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusshowdis=1..3}] as @a[gamemode=adventure,team=ghost,scores={rglplus_sqrt=-1..500}] at @s run function rglplus:start/dis/ghostshow
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusshowdis=1..3}] as @a[gamemode=adventure,team=ghost,scores={rglplus_sqrt=501..}] at @s run function rglplus:start/dis/ghostshowplus
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[gamemode=adventure,team=humanred,tag=red] run function rglplus:start/dis/reddis
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[gamemode=adventure,team=human,tag=green,scores={rglplus_sqrt=0..}] run function rglplus:start/dis/greendis
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[gamemode=spectator] run function rglplus:start/dis/speshow

#other
execute if score 7-0-7-0-000700000007 playgame matches 1..2 as @e[type=item,predicate=rglplus:sword] run data modify entity @s Owner set from entity @s Thrower
execute if score 7-0-7-0-000700000007 playgame matches 1..2 as @e[type=item,predicate=rglplus:sword] run data merge entity @s {PickupDelay:0s}
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=6}] as @e[type=trident,nbt={inGround:0b,pickup:1b}] run data merge entity @s {PierceLevel:2,pickup:0,life:1000}
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=10}] as @e[type=#minecraft:arrows,nbt={inGround:0b,pickup:1b}] run data merge entity @s {PierceLevel:2,pickup:0,life:1000}
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=8..9,rglplusclearxporb=3}] as @e[type=minecraft:experience_orb,nbt={OnGround:0b}] run kill @s
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=8}] if entity @a[team=human,level=1..,predicate=!rglplus:detect/isexp] run function rglplus:start/game/sword/exp
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=9}] as @a[team=human,level=5..] run function rglplus:start/game/sword/expplus
#-----------
#
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,toendtime=..0}] if score @e[type=armor_stand,tag=rglplus,tag=core,limit=1] toenddisplay matches 0 run function rglplus:end/warn
#FINAL單回合結束/100 多回合結束/200
#N種 時間到schedule 全部被打死(沒紅燈)death 全部都紅燈(沒綠燈)inspect
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,gametime=..0}] run scoreboard players set 7-0-7-0-000700000007 playgame 101
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=1..3}] unless entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 102
#execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 103
#全部被感染(沒紅燈) inspect
#接觸任務失敗 touch
#鬼感染所有/部分被感染(剩紅燈) inspect
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=2,greener=1}] if entity @a[team=humanred,gamemode=adventure] unless entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=2,greener=2..}] if entity @a[team=humanred,gamemode=adventure] if entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=2,greener=0}] if entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] unless entity @a[team=humanred,tag=laster,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 109
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusmode=2}] unless entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 110

#鬼死光 death
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=1..}] unless entity @a[team=ghost,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 121

#出現結局
execute if score 7-0-7-0-000700000007 playgame matches 100..200 if score 7-0-7-0-000700000007 rglplusround <= 7-0-7-0-000100000000 rglplusround run function rglplus:final/end
execute if score 7-0-7-0-000700000007 playgame matches 100..200 if score 7-0-7-0-000700000007 rglplusround > 7-0-7-0-000100000000 rglplusround run function rglplus:final/roundend
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusround=1,playgame=100..200}] run function rglplus:final/end
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusround=2..,playgame=100..200}] if score 7-0-7-0-000700000007 rglplusround > @e[tag=rglplus,tag=random1,limit=1] rglplusround run function rglplus:final/roundend
#execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusround=2..,playgame=100..200}] if score 7-0-7-0-000700000007 rglplusround <= @e[tag=rglplus,tag=random1,limit=1] rglplusround run function rglplus:final/end
