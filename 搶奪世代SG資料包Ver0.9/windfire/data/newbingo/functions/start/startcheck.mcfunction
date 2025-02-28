execute if entity @e[tag=random0,scores={bingotime=0}] run time set 0
execute if entity @e[tag=random0,scores={bingotime=1}] run time set noon
execute if entity @e[tag=random0,scores={bingotime=2}] run time set midnight
execute if entity @e[tag=random0,scores={bingotime=3}] run time set night
execute if entity @e[tag=random0,scores={bingotime=0}] run gamerule doDaylightCycle true
execute if entity @e[tag=random0,scores={bingotime=1..3}] run gamerule doDaylightCycle false
execute if entity @e[tag=random0,scores={bingoweather=0}] run weather clear 200
execute if entity @e[tag=random0,scores={bingoweather=1}] run weather clear 999999
execute if entity @e[tag=random0,scores={bingoweather=2}] run weather thunder 999999
execute if entity @e[tag=random0,scores={bingoweather=3}] run weather rain 999999
execute if entity @e[tag=random0,scores={bingoweather=0}] run gamerule doWeatherCycle true
execute if entity @e[tag=random0,scores={bingoweather=1..3}] run gamerule doWeatherCycle false
execute store result score @e[tag=random0,limit=1] bingoplayer if entity @a[team=! ]
scoreboard players add @e[tag=random0,limit=1] bingoplayer 1
scoreboard players operation @e[tag=random0,limit=1] bingoplayer /= 2 sgconstant

difficulty peaceful
gamemode survival @a
kill @e[tag=ticks]
kill @e[tag=lobby0]
execute as @e[tag=random0] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {PortalCooldown:21,Duration:2147483647,Tags:["newbingo","tick","ticks"],CustomName:"{\"text\":\"計時器\"}",NoGravity:1,Invisible:1,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
execute if entity @e[tag=lockmoon] as @e[tag=random0] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {PortalCooldown:21,Duration:2147483647,Tags:["newbingo","moontick","ticks"],CustomName:"{\"text\":\"月計時器\"}",NoGravity:1,Invisible:1,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
scoreboard players set @e[tag=tick] gametime -35
scoreboard players set @e[tag=moontick] gametime 275
forceload remove all
execute as @e[tag=random0] at @s run forceload add ~ ~ ~ ~
clear @a
xp set @a 0
effect give @a minecraft:jump_boost 99 199 true
effect give @a minecraft:slowness 99 99 true
effect give @a minecraft:saturation 99 0 true
effect give @a minecraft:invisibility 99 0 true
effect give @a minecraft:mining_fatigue 99 127 true
effect give @a minecraft:regeneration 99 127 true
effect give @a minecraft:resistance 99 10 true
#隨機位置及固定
tellraw @a [{"text":"遊戲載入中▶▶請稍候","color":"white"}]
execute as @e[tag=random0,scores={bingospawn=0}] at @s run spreadplayers ~ ~ 1000 1000 under 150 true @a[team=! ]
execute as @e[tag=random0,scores={bingospawn=1}] at @s run spreadplayers ~ ~ 500 500 under 150 true @a[team=! ]
execute as @e[tag=random0,scores={bingospawn=2}] at @s run spreadplayers ~ ~ 250 250 under 150 true @a[team=! ]
execute as @e[tag=random0,scores={bingospawn=3}] at @s run spreadplayers ~ ~ 150 150 under 150 true @a[team=! ]
execute as @e[tag=random0,scores={bingospawn=4}] at @s run spreadplayers ~ ~ 30 150 under 150 true @a[team=! ]
execute as @e[tag=random0,scores={bingospawn=5}] at @s run spreadplayers ~ ~ 1500 1500 under 150 true @a[team=! ]
tp @e[tag=teamyellow,limit=1] @a[team=yellow,limit=1]
tp @e[tag=teamred,limit=1] @a[team=red,limit=1]
tp @e[tag=teamgreen,limit=1] @a[team=green,limit=1]
tp @e[tag=teamaqua,limit=1] @a[team=aqua,limit=1]
#
execute as @e[tag=random0] at @s run function newbingo:sign/pointchange
execute as @e[tag=random0] at @s run function newbingo:set/tagset
execute as @e[tag=random0] at @s run function newbingo:start/playerset
tag @a add middlesigner
scoreboard players set @a noresttime 120000
#偵測人數
scoreboard players set @e[tag=random0] theend 0
execute as @a[team=] at @s run tp @s @e[tag=teampoint,limit=1,sort=random]
team modify yellow prefix ""
team modify red prefix ""
team modify green prefix ""
team modify aqua prefix ""
scoreboard objectives setdisplay sidebar bingolist
recipe give @a minecraft:crafting_table
recipe give @a minecraft:furnace
recipe give @a minecraft:stick
recipe give @a minecraft:oak_planks
recipe give @a minecraft:spruce_planks
recipe give @a minecraft:birch_planks
recipe give @a minecraft:jungle_planks
recipe give @a minecraft:acacia_planks
recipe give @a minecraft:dark_oak_planks
execute as @e[tag=teampoint] at @s run forceload add ~-2 ~-2 ~2 ~2
