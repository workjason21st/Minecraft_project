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
#execute if entity @e[tag=core,scores={rglplusdaynight=1}] run effect give @a minecraft:night_vision 999999 0 true

difficulty hard
gamerule randomTickSpeed 0
kill @e[type=minecraft:experience_orb]
kill @e[tag=rglplus,tag=lobby0]
gamemode adventure @a
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4}] run scoreboard players set @a rglplusghost 0
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghost=2..4}] run scoreboard players set @e[tag=rglplus,tag=random1] rglplusghost 1
scoreboard players set 目前遊玩回合 rglpluslist 1
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