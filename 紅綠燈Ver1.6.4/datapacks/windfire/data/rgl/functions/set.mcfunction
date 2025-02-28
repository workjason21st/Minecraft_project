#RGL:red green light
gamerule fallDamage true
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false

gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
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
function rgl:start/scheduleclear
difficulty hard
effect clear @a
effect give @a minecraft:saturation 999999 0 true
effect give @a minecraft:regeneration 999999 0 true
#effect give @a minecraft:night_vision 999999 0 true
clear @a
xp set @a 0
#recipe give @a *
defaultgamemode adventure
gamemode adventure @a
function rgl:set/summonset
function rgl:set/scoreset
function rgl:set/tagset

function rgl:set/signset
function rgl:team/teamset
function rgl:lobby/lobbyset
kill @e[tag=lobbyegg]
#forceload remove all
forceload add 106 106

setworldspawn 106 51 106
spawnpoint @a 106 51 106
tp @a 106 51 106
tellraw @a ["",{"text":"RGL 資源包載入成功","color":"gold","bold":true}]
