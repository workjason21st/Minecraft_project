#1/1m
execute if entity @e[tag=core,scores={rglglow=4..5}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=5}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=7}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run tag @r[tag=green,tag=!glower] add glower
#1/2m
execute if entity @e[tag=core,scores={rglglow=6}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players add @e[tag=random2] gametime 1
execute if entity @e[tag=core,scores={rglglow=6}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=2}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=6}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=2}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=8..12}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run scoreboard players add @e[tag=random2] gametime 1
execute if entity @e[tag=core,scores={rglglow=8..11}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=2}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=9..11}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=2}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=11}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=2}] run tag @r[tag=green,tag=!glower] add glower

execute if entity @e[tag=core,scores={rglglow=12}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=3}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=12}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=3}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=12}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=3}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=12}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=3}] run tag @r[tag=green,tag=!glower] add glower
#13~16
#1~2/30s
execute if entity @e[tag=core,scores={rglglow=13..16}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random3,scores={gametime=30}] run tag @r[tag=green,tag=!glower] add glower
execute if entity @e[tag=core,scores={rglglow=15..16}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random3,scores={gametime=30}] run tag @r[tag=green,tag=!glower] add glower

execute if entity @e[tag=core,scores={rglglow=1..12}] as @a[tag=green,tag=glower] run effect give @s minecraft:glowing 15 1
execute if entity @e[tag=core,scores={rglglow=13..16}] as @a[tag=green,tag=glower] run effect give @s minecraft:glowing 10 1
execute if entity @e[tag=core,scores={rglglow=4..5}] if entity @a[tag=green,tag=glower] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過1分鐘, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光15秒","color":"white"}]
execute if entity @e[tag=core,scores={rglglow=7}] if entity @a[tag=green,tag=glower] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過1分鐘, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光15秒","color":"white"}]
execute if entity @e[tag=core,scores={rglglow=6}] if entity @a[tag=green,tag=glower] if entity @e[tag=random2,scores={gametime=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過2分鐘, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光15秒","color":"white"}]
execute if entity @e[tag=core,scores={rglglow=8..11}] if entity @a[tag=green,tag=glower] if entity @e[tag=random2,scores={gametime=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過2分鐘, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光15秒","color":"white"}]
execute if entity @e[tag=core,scores={rglglow=12}] if entity @a[tag=green,tag=glower] if entity @e[tag=random2,scores={gametime=3}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過3分鐘, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光15秒","color":"white"}]
execute if entity @e[tag=core,scores={rglglow=13..16}] if entity @a[tag=green,tag=glower] if entity @e[tag=random3,scores={gametime=30}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"又經過30秒鐘, ","color":"white"},{"selector":"@a[tag=green,tag=glower]","color":"white"},{"text":"發光10秒","color":"white"}]
execute as @a[tag=green,tag=glower] run tag @s remove glower
###
execute if entity @e[tag=core,scores={rglglow=6}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=2}] run scoreboard players set @e[tag=random2] gametime 0
execute if entity @e[tag=core,scores={rglglow=8..11}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=2}] run scoreboard players set @e[tag=random2] gametime 0
execute if entity @e[tag=core,scores={rglglow=12}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random2,scores={gametime=3}] run scoreboard players set @e[tag=random2] gametime 0

execute if entity @e[tag=core,scores={rglglow=13..16}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random3,scores={gametime=30}] run scoreboard players set @e[tag=random3] gametime 0

#######1
execute if entity @e[tag=core,scores={rglglow=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random3,scores={gametime=30}] run tellraw @a ["",{"text":"◀ 遊戲時間剩餘３０秒全員發光 ▶","bold":true,"color":"light_purple"}]
execute if entity @e[tag=core,scores={rglglow=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random3,scores={gametime=30}] run title @a title ["",{"text":"▶剩餘３０秒全員發光◀","bold":true,"color":"dark_purple"}]
execute if entity @e[tag=core,scores={rglglow=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random3,scores={gametime=30}] run effect give @a[gamemode=!spectator] minecraft:glowing 999999 2 true
execute if entity @e[tag=core,scores={rglglow=1}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random3,scores={gametime=30}] run scoreboard players set @e[tag=random3] gametime 0
