#登入
execute if entity @e[tag=core,scores={gameend=-1}] as @a[tag=!signer] run function rgl:sign/signer
execute if entity @e[tag=core,scores={gameend=-1}] as @a[team=,tag=signer] run team join bad @s
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=core,scores={gameend=0..2}] as @a[tag=!middlesigner] run function rgl:sign/sper
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=core,scores={gameend=0..2}] as @a[tag=middlesigner,team=!good,gamemode=!spectator,tag=!red,tag=!green] run function rgl:sign/sper
#lobby0
execute if entity @e[tag=core,scores={gameend=-1}] run function rgl:lobby/main
#
execute if entity @e[tag=core,tag=randomteam] run function rgl:team/randomteam
#計時
execute if entity @e[tag=core,scores={gameend=0..2}] if entity @e[tag=ticks,nbt={PortalCooldown:0}] run function rgl:tick
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=touchtick,nbt={PortalCooldown:40}] run function rgl:other2/touchtick
execute if entity @e[tag=core,scores={gameend=2,rglmode=4},tag=!mode4] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..20}] run function rgl:start/mode4
execute if entity @e[tag=core,scores={gameend=0..1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..20}] run function rgl:start/check
#red green good
execute if entity @e[tag=core,scores={gameend=0..2}] if entity @e[type=item,predicate=rgl:color] run function rgl:other2/throwerget
execute if entity @e[tag=core,scores={gameend=0..2,rglspecial=2,rglmode=1..9}] as @a[gamemode=!spectator,tag=green,team=bad,scores={deathdetect=0,rglused=1..,rglspecial=2},predicate=!rgl:wallcool] anchored eyes at @s unless block ^ ^ ^0.45 #rgl:rglairglass run function rgl:start/red/redwall

#props
execute if entity @e[tag=core,scores={gameend=0..2,rglspecial=3}] if entity @e[type=item,predicate=rgl:props/props] run function rgl:props/getthrower
execute if entity @e[tag=core,scores={gameend=0..2,rgleffect=11}] if entity @e[type=item,predicate=rgl:props/props] run function rgl:props/getthrower
#dis
execute if entity @e[tag=core,scores={gameend=1..2}] if entity @e[tag=ticks,predicate=rgl:cooldown] run function rgl:start/dis/dis
#show_dis
execute if entity @e[tag=core,scores={gameend=2,rglgdis=1..3}] as @a[gamemode=adventure,team=good,scores={sqrt=-1..300}] at @s run function rgl:start/dis/ghostshow
execute if entity @e[tag=core,scores={gameend=2,rglgdis=1..3}] as @a[gamemode=adventure,team=good,scores={sqrt=301..}] at @s run function rgl:start/dis/ghostshowplus
execute if entity @e[tag=core,scores={gameend=1..2,rglspecial=0..3}] if entity @a[gamemode=adventure,team=badred,tag=red] run function rgl:start/dis/redndis
execute if entity @e[tag=core,scores={gameend=1..2,rglspecial=0..3}] if entity @a[gamemode=adventure,team=bad,tag=green,scores={sqrt=0..}] run function rgl:start/dis/greendis
execute if entity @e[tag=core,scores={gameend=1..2}] if entity @a[gamemode=spectator] run function rgl:start/dis/speshow

#deathdetect/kill
execute if entity @e[tag=core,scores={gameend=1..2}] if entity @a[team=good,gamemode=adventure,scores={killdetect=1..}] run function rgl:props/kill
execute if entity @e[tag=core,scores={gameend=1..2}] if entity @a[scores={deathdetect=1..,displayhealth=20}] run function rgl:start/death
#touch
execute if entity @e[tag=core,scores={gameend=2..}] unless entity @e[tag=tick,scores={gametime=0,rgltime=0}] if entity @a[team=good] as @a[gamemode=adventure,team=bad,tag=touch,tag=green] if score @s[scores={sqrt=0..}] sqrt <= @e[tag=core,limit=1] rgltouchdis run function rgl:other/touchremove
#不同就TP
execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] as @a[gamemode=adventure,tag=red,tag=!green,team=badred] at @s unless entity @e[type=minecraft:zombie,tag=rglname,limit=1,sort=nearest,distance=0] run tp @s @e[type=minecraft:zombie,tag=rglname,limit=1,sort=nearest]
#other
execute if entity @e[tag=core,scores={gameend=1..2}] as @e[type=item,predicate=rgl:sword] run data modify entity @s Owner set from entity @s Thrower
execute if entity @e[tag=core,scores={gameend=1..2}] as @e[type=item,predicate=rgl:sword] run data merge entity @s {PickupDelay:0s}
execute if entity @e[tag=core,scores={gameend=1..2}] as @e[type=trident,nbt={inGround:0b,pickup:1b}] run data merge entity @s {pickup:0,life:1000}
execute if entity @e[tag=core,scores={gameend=1..2,rglsword=10}] if entity @a[team=bad,level=1..] run function rgl:other/exp
execute if entity @e[tag=core,scores={gameend=1..2,rglsword=11}] if entity @a[team=bad,level=6..] run function rgl:other/expplus
execute if entity @e[tag=core,scores={gameend=1..2,rglmap=1}] as @a at @s if block ~ ~-1 ~ minecraft:respawn_anchor run function rgl:map/tp
execute if entity @e[tag=core,scores={gameend=1..2,rglmap=3}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=cartick,predicate=rgl:cooldown400] run function rgl:map/horse

execute if entity @e[tag=core,scores={gameend=1..2}] as @a at @s if block ~ ~-1 ~ minecraft:bedrock if block ~ ~-2 ~ minecraft:glowstone if block ~ ~4 ~ minecraft:sea_lantern run tp @s @r[gamemode=adventure,team=bad]
##########################################################################################
#倒數提醒
execute if entity @e[tag=core,scores={gameend=1..2,toendtime=..0}] if score @e[tag=core,limit=1] toenddisplay matches 0 run function rgl:end/warn
#end N種 時間到 鬼死光 全部被打死(沒紅燈) 全部被感染(沒紅燈) 部分被感染(有紅燈) 全部都紅燈(沒綠燈) 死超過數量
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick,scores={gametime=0,rgltime=0}] run scoreboard players set @e[tag=core] gameend 11
execute if entity @e[tag=core,scores={gameend=2,rglspecial=3}] unless entity @a[tag=spy,team=bad,gamemode=adventure] unless entity @a[tag=spy,team=badred,gamemode=adventure] unless entity @a[team=good,gamemode=adventure] run scoreboard players set @e[tag=core] gameend 18
execute if entity @e[tag=core,scores={gameend=2,rglmode=1..8}] unless entity @a[team=badred,gamemode=adventure] unless entity @a[team=bad,gamemode=adventure] run scoreboard players set @e[tag=core] gameend 12
execute if entity @e[tag=core,scores={gameend=2,rglmode=9}] unless entity @a[team=badred,gamemode=adventure] unless entity @a[team=bad,gamemode=adventure] run scoreboard players set @e[tag=core] gameend 17
execute if entity @e[tag=core,scores={gameend=2,rglmode=9,greener=1}] if entity @a[team=badred,gamemode=adventure] unless entity @a[tag=laster,gamemode=adventure] run function rgl:other2/laster
execute if entity @e[tag=core,scores={gameend=2,rglmode=9,greener=2..}] if entity @a[team=badred,gamemode=adventure] if entity @a[tag=laster,gamemode=adventure] run function rgl:other2/laster
execute if entity @e[tag=core,scores={gameend=2,rglmode=9,greener=0}] if entity @a[team=badred,gamemode=adventure] unless entity @a[team=bad,gamemode=adventure] unless entity @a[team=badred,tag=laster,gamemode=adventure] run scoreboard players set @e[tag=core] gameend 19
execute if entity @e[tag=core,scores={gameend=2}] unless entity @a[team=bad,gamemode=adventure] run scoreboard players set @e[tag=core] gameend 13
#倍數量
execute as @e[tag=core,scores={gameend=2,rglmode=6}] if score @s rglcount <= @s greencount run scoreboard players set @e[tag=core] gameend 15
#16全體任務未成功
execute if entity @e[tag=core,scores={gameend=11..100}] run function rgl:end/end
