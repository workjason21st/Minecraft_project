#需每秒進行的
#時間遞減條
execute if entity @e[tag=core,scores={gameend=2}] store result bossbar rgl:time value run scoreboard players get @e[tag=core,limit=1] gametime
#紅燈死亡#下方死亡倒數
execute if entity @e[tag=core,scores={gameend=2,rglmode=2..3}] if entity @a[team=!good,tag=red] run scoreboard players remove @a[team=!good,tag=red] rglkill 1
execute if entity @e[tag=core,scores={gameend=2,rglmode=2..3}] as @a[gamemode=adventure,tag=red,scores={rglkill=-10..0}] at @s run kill @e[type=minecraft:zombie,tag=rglname,limit=1,sort=nearest,distance=..1]
execute if entity @e[tag=core,scores={gameend=2,rglmode=2..3,rglspecial=0}] if entity @a[gamemode=adventure,tag=red,scores={rglkill=-10..0}] run function rgl:start/timeklill/killred
execute if entity @e[tag=core,scores={gameend=2,rglmode=2..3,rglspecial=1}] if entity @a[gamemode=adventure,tag=red,scores={rglkill=-10..0}] run function rgl:start/timeklill/killredall
execute if entity @e[tag=core,scores={gameend=2,rglmode=2..3,rglspecial=2..3}] if entity @a[gamemode=adventure,tag=red,scores={rglkill=-10..0}] run function rgl:start/timeklill/killred
#綠燈冷卻
execute if entity @e[tag=core,scores={gameend=2,rglmode=8}] if entity @a[team=!good,scores={rglfree=1..}] run scoreboard players remove @a[team=!good,scores={rglfree=1..}] rglfree 1
#touch
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick] store result score @e[tag=touchtick,limit=1] rgltime run data get entity @e[tag=touchtick,limit=1] PortalCooldown
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick] run scoreboard players operation @e[tag=touchtick,limit=1] rgltime /= @e[tag=random3,limit=1] rgltouchtime
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick] run scoreboard players remove @e[tag=touchtick,limit=1] rgltime 2
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick] store result bossbar rgl:touch value run scoreboard players get @e[tag=touchtick,limit=1] rgltime
#re
schedule function rgl:schedule 1s
