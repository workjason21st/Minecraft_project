#rglplus:red green light PLUS
gamerule fallDamage true
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false

gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule disablePlayerMovementCheck true
gamerule disableRaids true
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule forgiveDeadPlayers false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule playersSleepingPercentage 101
gamerule randomTickSpeed 0
gamerule spawnRadius 0
gamerule sendCommandFeedback false

gamerule spectatorsGenerateChunks true
function rglplus:final/scheduleclear
difficulty hard
effect clear @a
effect give @a minecraft:saturation infinite 0 true
effect give @a minecraft:regeneration infinite 0 true
effect give @a minecraft:night_vision infinite 0 true
execute as @a run attribute @s minecraft:scale base set 1
execute as @a run attribute @s minecraft:sneaking_speed base set 0.3
clear @a
xp set @a 0 levels
#recipe give @a *
defaultgamemode adventure
gamemode adventure @a

function rglplus:set/summonset
function rglplus:set/scoreset
function rglplus:set/tagset
function rglplus:set/teamset

function rglplus:set/bookset
kill @e[tag=rglplus,tag=lobbyegg]
execute as @s at @s run forceload add ~ ~ ~ ~
execute as @s at @s run setworldspawn ~ ~1 ~
execute as @s at @s run spawnpoint @a ~ ~1 ~

function rglplus:book/intro
tellraw @a ["",{"text":"RGL 擴充資源包載入成功","color":"gold","bold":true}]
