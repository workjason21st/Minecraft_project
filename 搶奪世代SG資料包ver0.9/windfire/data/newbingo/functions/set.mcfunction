#SG:Snatch Generation

execute as @e[tag=random0] at @s run fill ~12 225 ~12 ~-12 255 ~-12 minecraft:air
time set day
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule sendCommandFeedback false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule forgiveDeadPlayers false
gamerule keepInventory false
gamerule naturalRegeneration true
gamerule randomTickSpeed 4

gamerule logAdminCommands false

difficulty hard
effect give @a minecraft:saturation 999999 0 true
effect give @a minecraft:regeneration 999999 127 true
effect give @a minecraft:instant_damage
clear @a
effect clear @a
xp set @a 0
recipe give @a *
defaultgamemode adventure
gamemode adventure @a
tp @a ~ 228 ~ -135 0

function newbingo:set/summonset

function newbingo:set/build

function newbingo:set/scoreset
function newbingo:set/tagset

function newbingo:set/signset

function newbingo:team/teamset
function newbingo:sign/pointchange
function newbingo:sign/other/friend
function newbingo:sign/other/egg
function newbingo:sign/random

kill @e[type=item]
execute as @e[tag=random0] at @s run worldborder center ~ ~
execute as @e[tag=random0] at @s run setworldspawn ~ 228 ~ -90
execute as @e[tag=random0] at @s run spawnpoint @a ~ 228 ~ -90
execute as @e[tag=random0] at @s in the_nether run worldborder center ~ ~
execute in overworld run worldborder set 3001
execute in overworld run worldborder warning distance 0
execute in overworld run worldborder damage amount 0
execute in the_nether run worldborder set 751
execute in the_nether run worldborder warning distance 0
execute in the_nether run worldborder damage amount 0
forceload remove all
forceload add ~ ~ ~ ~
tellraw @a ["",{"text":"搶奪世代SG 資源包載入成功","color":"gold","bold":true}]
