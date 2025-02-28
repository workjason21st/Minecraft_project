#
#計時
execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=ticks,nbt={PortalCooldown:1}] run data merge entity @s {PortalCooldown:20}
execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players add @s gametime 1
execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=moontick,nbt={PortalCooldown:20}] run scoreboard players remove @s gametime 1
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players set @e[tag=randomlist,scores={gametime=2..}] gametime 0
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players add @e[tag=randomlist] gametime 1
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random6,scores={gametime=2}] run scoreboard objectives setdisplay list teampoint
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20}] if entity @e[tag=random5,scores={gametime=2}] run scoreboard objectives setdisplay list displayhealth

#execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-40..}] run scoreboard players operation 經過時間(秒) bingolist = @s gametime
#execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..}] run scoreboard players operation 經過時間(分) bingolist = @s gametime
#execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..}] run scoreboard players operation 經過時間(分) bingolist /= @e[tag=random0,limit=1] gametime
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..}] run scoreboard players operation @e[tag=random0,limit=1] gametime = @e[tag=tick,limit=1] gametime
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..}] run scoreboard players operation @e[tag=random0,limit=1] gametime /= @e[tag=random7,limit=1] gametime
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-40..0}] run title @a actionbar ["",{"text":"\u7d93\u904e\u79d2\u6578\uff1a","color":"dark_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"bold":true,"color":"light_purple"}]
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..}] run title @a actionbar ["",{"text":"\u7d93\u904e\u79d2\u6578\uff1a","color":"dark_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"color":"light_purple"},{"text":" \u0020\u7d93\u904e\u5206\u9418\uff1a","color":"yellow"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"gametime"},"bold":true,"color":"gold"},{"text":" ／ ","color":"white"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode2time"},"bold":true,"color":"yellow"}]
execute if entity @e[tag=lockmoon] if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..}] run title @a actionbar ["",{"text":"\u7d93\u904e\u79d2\u6578\uff1a","color":"dark_purple"},{"score":{"name":"@e[tag=tick,limit=1]","objective":"gametime"},"color":"light_purple"},{"text":" \u0020\u7d93\u904e\u5206\u9418\uff1a","color":"yellow"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"gametime"},"bold":true,"color":"gold"},{"text":" ／ ","color":"white"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"mode2time"},"bold":true,"color":"yellow"},{"text":"  隕月倒數:","color":"dark_gray"},{"score":{"name":"@e[tag=moontick,limit=1]","objective":"gametime"},"bold":true,"color":"dark_gray"}]
#
execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=moontick,nbt={PortalCooldown:20},scores={gametime=..5}] run function newbingo:egg/event/moon
#
execute if entity @e[tag=random0,scores={theend=0}] as @e[tag=tick,nbt={PortalCooldown:20}] run scoreboard players remove @a[scores={bingodeath=0..}] bingodeath 1
execute if entity @e[tag=random0,scores={theend=0,bingodeath=1..}] if entity @e[tag=tick,scores={gametime=0..}] if entity @a[scores={bingodeath=0..30}] run function newbingo:start/death/rebirth
