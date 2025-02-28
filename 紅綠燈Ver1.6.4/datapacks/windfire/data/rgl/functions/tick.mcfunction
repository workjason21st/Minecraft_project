#計時
execute if entity @e[tag=core,scores={gameend=0..}] as @e[tag=tick,nbt={PortalCooldown:0}] run data merge entity @s {PortalCooldown:20}
execute if entity @e[tag=core,scores={gameend=0..}] as @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players remove @s gametime 1
execute if entity @e[tag=core,scores={gameend=2}] as @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players remove @e[tag=core,limit=1] gametime 1
#倒數跟扣分鐘數
#execute if entity @e[tag=core,scores={gameend=1,rglmode=4},tag=!mode4] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players remove @e[tag=core] toenddisplay 1
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players remove @e[tag=core] toenddisplay 1
execute if entity @e[tag=core,scores={gameend=2}] as @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-1}] run scoreboard players remove @s rgltime 1
execute if entity @e[tag=core,scores={gameend=2}] as @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-1}] run scoreboard players set @s gametime 59
#M6
execute if entity @e[tag=core,scores={gameend=1..2,rglmode=6}] if entity @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players add @e[tag=random6] gametime 1
execute if entity @e[tag=core,scores={gameend=1..2,rglmode=6}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if score @e[tag=core,limit=1] rglgive <= @e[tag=random6,limit=1] gametime run function rgl:other/givegreen6
#M9
execute if entity @e[tag=core,scores={gameend=2,rglmode=9}] if entity @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players remove @e[tag=random9] rglnewghost 1
execute if entity @e[tag=core,scores={gameend=2,rglmode=9}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if score @e[tag=random9,limit=1] rglnewghost matches 0 as @a[team=good,tag=pathogen] run function rgl:other2/ghostchange
execute if entity @e[tag=core,scores={gameend=2,rglmode=9}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if score @e[tag=random9,limit=1] rglnewghost matches 0 run function rgl:other2/ghostchangesay
#發光
##秒鐘
execute if entity @e[tag=core,scores={gameend=2,rglglow=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=tick,scores={rgltime=0}] run scoreboard players add @e[tag=random3] gametime 1
execute if entity @e[tag=core,scores={gameend=2,rglglow=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=tick,scores={rgltime=0}] if entity @e[tag=random3,scores={gametime=30}] run function rgl:other/glow
execute if entity @e[tag=core,scores={gameend=2,rglglow=13..16}] if entity @e[tag=tick,nbt={PortalCooldown:20}] unless entity @e[tag=tick,scores={rgltime=0,gametime=0}] run scoreboard players add @e[tag=random3] gametime 1
execute if entity @e[tag=core,scores={gameend=2,rglglow=13..16}] if entity @e[tag=tick,nbt={PortalCooldown:20}] unless entity @e[tag=tick,scores={rgltime=0,gametime=0}] if entity @e[tag=random3,scores={gametime=30}] run function rgl:other/glow
##分鐘
execute if entity @e[tag=core,scores={gameend=2,rglglow=4..12}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] unless entity @e[tag=tick,scores={rgltime=0}] run function rgl:other/glow
#時間遞減條
execute if entity @e[tag=core,scores={gameend=0..1}] as @e[tag=tick,nbt={PortalCooldown:20}] store result bossbar rgl:time value run scoreboard players get @e[tag=core,limit=1] gametime
#上方剩餘時間
execute if entity @e[tag=core,scores={gameend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20}] run bossbar set rgl:time name ["",{"text":"開始倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
execute if entity @e[tag=core,scores={gameend=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] run bossbar set rgl:time name ["",{"text":"釋放鬼倒數： ","color":"light_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
#上方剩餘時間
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=10..}] run bossbar set rgl:time name ["",{"text":"剩餘時間： ","color":"light_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"rgltime"},"bold":true,"color":"gold"},{"text":" ： ","color":"yellow"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..9}] run bossbar set rgl:time name ["",{"text":"剩餘時間： ","color":"light_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"rgltime"},"bold":true,"color":"gold"},{"text":" ： ","color":"yellow"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"gold"}]
#touch
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @a[tag=touch,team=bad] run bossbar set rgl:touch name ["",{"text":"接近鬼","color":"dark_purple"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rgltouchdis"},"bold":true,"color":"dark_purple"},{"text":"格內 剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=touchtick,limit=1]","objective":"rgltime"},"bold":true,"color":"blue"}]
execute if entity @e[tag=core,scores={gameend=2,rglspecial=0}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=touchtick,limit=1,scores={rgltime=0..7}] if entity @a[tag=touch,team=bad] run function rgl:other/touchwho
execute if entity @e[tag=core,scores={gameend=2,rglspecial=2..3}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=touchtick,limit=1,scores={rgltime=0..7}] if entity @a[tag=touch,team=bad] run function rgl:other/touchwho
execute if entity @e[tag=core,scores={gameend=2,rglspecial=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=touchtick,limit=1,scores={rgltime=0..7}] if entity @a[tag=touch,team=bad] run bossbar set rgl:touch name ["",{"text":"接近鬼","color":"dark_purple"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rgltouchdis"},"bold":true,"color":"dark_purple"},{"text":"格內 剩餘秒數： ","color":"dark_purple"},{"score":{"name":"@e[tag=touchtick,limit=1]","objective":"rgltime"},"bold":true,"color":"blue"},{"text":"   未完成是全部綠燈孩子死亡","color":"red"}]
execute if entity @e[tag=core,scores={gameend=2}] if entity @e[tag=tick,nbt={PortalCooldown:20}] unless entity @a[tag=touch,team=bad] run bossbar set rgl:touch name ["",{"text":"接近鬼剩餘秒數：","color":"blue"},{"score":{"name":"@e[tag=touchtick,limit=1]","objective":"rgltime"},"color":"blue"},{"text":" (此回合成功)","bold":true,"color":"blue"}]
