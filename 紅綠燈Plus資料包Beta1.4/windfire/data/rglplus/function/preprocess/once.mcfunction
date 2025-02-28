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
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusdaynight=1}] run effect give @a minecraft:night_vision 999999 0 true

difficulty hard
gamerule randomTickSpeed 0
kill @e[type=minecraft:experience_orb]
kill @e[tag=rglplus,tag=lobby0]
gamemode adventure @a
scoreboard players set @e[tag=rglplus,tag=random1] rglplusround 1
function rglplus:preprocess/choosemap
function rglplus:preprocess/chooseweapon
function rglplus:preprocess/chooseteam
function rglplus:preprocess/replayer
function rglplus:preprocess/background
execute if entity @e[tag=rglplus,tag=rgl1.0,tag=core] run function rglplus:preprocess/mapset
function rglplus:refresh/list
function rglplus:refresh/bossbar
function rglplus:start/dis/dis

function rglplus:refresh/pretick

#execute if entity @e[tag=rglplus,tag=core,scores={rglplustime=21..30}] run scoreboard players set @e[tag=rglplus,tag=core,limit=1] toendtime -20
#execute if entity @e[tag=rglplus,tag=core,scores={rglplustime=11..20}] run scoreboard players set @e[tag=rglplus,tag=core,limit=1] toendtime -10
#execute if entity @e[tag=rglplus,tag=core,scores={rglplustime=6..10}] run scoreboard players set @e[tag=rglplus,tag=core,limit=1] toendtime -5
#execute if entity @e[tag=rglplus,tag=core,scores={rglplustime=3..5}] run scoreboard players set @e[tag=rglplus,tag=core,limit=1] toendtime -2
#execute if entity @e[tag=rglplus,tag=core,scores={rglplustime=2}] run scoreboard players set @e[tag=rglplus,tag=core,limit=1] toendtime -1
#execute if entity @e[tag=rglplus,tag=core,scores={rglplustime=2..30}] run scoreboard players operation @e[tag=rglplus,tag=core,limit=1] toenddisplay = @e[tag=rglplus,tag=core,limit=1] rgltime
#execute if entity @e[tag=rglplus,tag=core,scores={rglplustime=2..30}] run scoreboard players operation @e[tag=rglplus,tag=core,limit=1] toenddisplay += @e[tag=rglplus,tag=core,limit=1] toendtime
