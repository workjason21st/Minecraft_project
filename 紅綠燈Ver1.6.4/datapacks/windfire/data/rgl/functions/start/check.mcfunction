
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=3}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.5 0.1
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=2}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.7 0.1
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=1}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.9 0.1
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1 0.1

execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=10}] run title @a title [{"text":"１０","color":"red"}]
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=5}] run title @a title [{"text":"５","color":"red"}]
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=3}] run title @a title [{"text":"▉","color":"red","bold":"true"}]
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=2}] run title @a title [{"text":"▉","color":"gold","bold":"true"}]
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=1}] run title @a title [{"text":"▉","color":"green","bold":"true"}]
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run title @a title [{"text":"GOGO","color":"green","bold":"true"}]
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run tellraw @a ["",{"text":"\nGOGO▶▶▶▶","color":"dark_purple","bold":"true"}]

execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run xp add @a -9999999
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a[team=good] run function rgl:other/ghosteffect
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run effect give @a[team=good] minecraft:resistance 4 99 true
#execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1,rglmode=7}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run effect give @a[team=good] minecraft:weakness 999999 10 true

execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a[team=good] run function rgl:other/givesword
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1,rglghost=3,rglmode=1..8}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run function rgl:start/effect/ghost
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1,rglghost=3,rglmode=9}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run function rgl:start/effect/ghost9
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] store result bossbar rgl:time max run scoreboard players get @e[tag=core,limit=1] gametime
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] store result bossbar rgl:time value run scoreboard players get @e[tag=core,limit=1] gametime
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run function rgl:start/touchstartset
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run bossbar set rgl:touch visible true
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players set @e[tag=tick] gametime 59
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=59}] run scoreboard players set @e[tag=core] gameend 2

##############
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=5}] run tellraw @a [{"text":"▶▶倒數５秒鐘遊戲開始","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=3}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 0.5 0.5 0.1
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=2}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 0.5 0.7 0.1
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=1}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 0.5 0.9 0.1
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 0.5 1 0.1

execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=4}] run title @a title [{"text":"４","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=3}] run title @a title [{"text":"３","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=2}] run title @a title [{"text":"２","color":"gold"}]
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=1}] run title @a title [{"text":"１","color":"gold","bold":"true"}]
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run title @a title [{"text":"START","color":"light_purple","bold":"true"}]
execute if entity @e[tag=core,scores={gameend=0,rglmode=4}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run title @a[tag=spy] subtitle ["",{"text":"小心！你是臥底","color":"dark_purple"}]
execute if entity @e[tag=core,scores={gameend=0}] unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run tellraw @a ["",{"text":"\nSTART","color":"light_purple","bold":"true"}]
execute if entity @e[tag=core,scores={gameend=0,rglmode=4}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run tellraw @a ["",{"text":"\nSTART\n(倒數一分鐘臥底現形)","color":"light_purple","bold":"true"}]
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @e[tag=cartick] run data merge entity @s {PortalCooldown:600}

execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run schedule function rgl:schedule 1s
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run effect clear @a[team=!good]
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run function rgl:start/green/greener
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run function rgl:start/green/greeneffect
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a[team=bad] run function rgl:other/basiseffect
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a[team=spe] run effect give @s minecraft:night_vision 999999 0 true
execute if entity @e[tag=core,scores={gameend=0,rglspecial=3}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a[team=bad] run function rgl:other2/childstick
execute if entity @e[tag=core,scores={gameend=0,rglmode=7}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run effect give @a[team=bad] minecraft:regeneration 999999 0 true
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run bossbar set rgl:time max 20
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run bossbar set rgl:time value 20
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players set @e[tag=core] gameend 1
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players set @e[tag=tick] gametime 20
execute unless entity @e[tag=core,scores={rglmode=4}] if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=20}] run tellraw @a [{"text":"倒數２０秒鐘▶▶鬼開始移動","color":"red"}]
#5
execute if entity @e[tag=core,scores={gameend=0,rglmode=4}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] store result bossbar rgl:time max run scoreboard players get @e[tag=core,limit=1] gametime
execute if entity @e[tag=core,scores={gameend=0,rglmode=4}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] store result bossbar rgl:time value run scoreboard players get @e[tag=core,limit=1] gametime
execute if entity @e[tag=core,scores={gameend=0,rglmode=4}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players set @e[tag=core] gameend 2
