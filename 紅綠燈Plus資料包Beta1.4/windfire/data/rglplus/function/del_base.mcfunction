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
function rglplus:del_base/scheduleclear
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
function rglplus:del_base/summondel
function rglplus:del_base/scoredel
function rglplus:del_base/tagdel

function rglplus:del_base/signdel
function rglplus:del_base/teamdel
function rglplus:del_base/lobbydel
function rglplus:del_base/scheduleclear
kill @e[tag=rgl,tag=lobbyegg]

tellraw @a ["",{"text":"RGL 基礎資源包刪除成功","color":"red","bold":true}]
