title @a times 4 20 4
clear @a
xp set @a 0 levels
xp set @a 0 points
effect clear @a
effect give @a minecraft:slowness 100 127 true
effect give @a minecraft:jump_boost 100 200 true
effect give @a minecraft:mining_fatigue 100 99 true
effect give @a minecraft:saturation 100 99 true
effect give @a minecraft:regeneration 100 99 true
effect give @a minecraft:resistance 100 99 true
execute if entity @e[tag=core,scores={rgldaynight=1}] run effect give @a minecraft:night_vision 999999 0 true

difficulty hard
gamerule randomTickSpeed 0
kill @e[type=minecraft:experience_orb]
kill @e[tag=ticks]
kill @e[tag=lobby0]
execute as @e[tag=core] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {PortalCooldown:20,Duration:2147483647,Tags:["rgl","tick","ticks"],CustomName:"{\"text\":\"計時器\"}",NoGravity:1,Invisible:1,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
execute as @e[tag=core] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {PortalCooldown:0,Duration:2147483647,Tags:["rgl","touchtick","ticks"],CustomName:"{\"text\":\"計時器T\"}",NoGravity:1,Invisible:1,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
gamemode adventure @a
function rgl:start/playerset
function rgl:start/mapset
function rgl:other/get
execute if entity @e[tag=core,scores={rglmode=9}] run item replace entity @a[team=!good,gamemode=adventure] armor.head with crimson_button{Enchantments:[{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.max_health",Amount:0,Slot:head,Name:"generic.max_health",UUID:[I;-2004318072,1145324612,1145311762,303174162]}],display:{Name:'[{"text":"增血裝置","italic":false,"color":"white"}]'},HideFlags:2}
execute if entity @e[tag=core,scores={rglmode=4}] run function rgl:other/mode4
execute if entity @e[tag=core,scores={rglmode=4}] run tellraw @a[tag=spy] ["",{"text":"\n\n這些是臥底: ","color":"dark_purple","bold":"true"},{"selector":"@a[tag=spy]","color":"none"},{"text":" , 小心別被發現了<<","color":"dark_purple","bold":"true"}]
execute as @a[tag=spy] run item replace entity @s armor.head with minecraft:stone_button{display:{Name:'[{"text":"臥底按鈕勳章","italic":false,"color":"gold","bold":true}]'},Enchantments:[{id:binding_curse,lvl:1}]}
effect give @a[team=good] minecraft:blindness 23 99 false
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a[team=bad] run attribute @s minecraft:generic.knockback_resistance base set 9

execute if entity @e[tag=core,scores={rgltime=21..30}] run scoreboard players set @e[tag=core,limit=1] toendtime -20
execute if entity @e[tag=core,scores={rgltime=11..20}] run scoreboard players set @e[tag=core,limit=1] toendtime -10
execute if entity @e[tag=core,scores={rgltime=6..10}] run scoreboard players set @e[tag=core,limit=1] toendtime -5
execute if entity @e[tag=core,scores={rgltime=3..5}] run scoreboard players set @e[tag=core,limit=1] toendtime -2
execute if entity @e[tag=core,scores={rgltime=2}] run scoreboard players set @e[tag=core,limit=1] toendtime -1
execute if entity @e[tag=core,scores={rgltime=2..30}] run scoreboard players operation @e[tag=core,limit=1] toenddisplay = @e[tag=core,limit=1] rgltime
execute if entity @e[tag=core,scores={rgltime=2..30}] run scoreboard players operation @e[tag=core,limit=1] toenddisplay += @e[tag=core,limit=1] toendtime
