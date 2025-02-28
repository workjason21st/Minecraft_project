#開啟:時間計時、第一階段、分數、死亡給裝、殺人逞罰、種樹、關閉書本、時間提醒、隊伍關閉、模式切換、開啟道具、開啟效果、給進度
function windfire:lucky/repeat/timer/summon
setblock 1019 15 1042 minecraft:redstone_block
setblock 1027 15 1055 minecraft:redstone_block
setblock 1006 15 1045 minecraft:redstone_block
setblock 1007 15 1031 minecraft:redstone_block
setblock 1012 8 1005 minecraft:redstone_block
setblock 1013 15 1053 air
#核心基岩
setblock 987 180 946 minecraft:bedrock
setblock 1025 180 1054 minecraft:bedrock
#
fill 1006 16 1017 1003 15 1017 redstone_block
setblock 1021 15 1048 redstone_block
fill 1006 1 1052 1006 1 1042 redstone_block 0 replace coal_block
fill 1027 1 1054 1027 1 1042 redstone_block 0 replace coal_block
gamerule gameLoopFunction windfire:lucky/repeat
function windfire:lucky/scoreset
scoreboard players tag @a[tag=!gotobattle] add gotobattle
setblock 1003 15 1045 minecraft:redstone_block

title @a[tag=gotobattle] times 25 140 35
scoreboard teams join stander @a[team=team]
tp @a[tag=gotobattle,team=yellow] 1011.0 184 1054
tp @a[tag=gotobattle,team=blue] 1002.0 184 946
tp @a[tag=gotobattle,team=stander] 1016 190 1000
spawnpoint @a[tag=gotobattle,team=yellow] 1011.0 184 1054
spawnpoint @a[tag=gotobattle,team=blue] 1002.0 184 946
gamemode 2 @a[tag=gotobattle,team=!stander]
gamemode 3 @a[tag=gotobattle,team=stander]
advancement revoke @a[tag=gotobattle] from lucky:startgo
advancement grant @a[tag=gotobattle] only lucky:startgo

#entitydata @e[type=armor_stand,tag=slave,z=957,dz=3,team=!blue] {Team:"blue"}
#entitydata @e[type=armor_stand,tag=slave,z=1041,dz=3,team=!yellow] {Team:"yellow"}
#標題時間、冒險模式、時間暫停、火焰蔓延、生物生成、天氣變化、生長速度、下雨關閉、困難模式、防爆、清理背包、清除效果、給予回血、移除等級、
#重生點重設、離重生點0、合成配方鎖定
gamerule commandBlockOutput false
defaultgamemode 2
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule randomTickSpeed 20
gamerule mobGriefing false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
weather clear 99999
difficulty hard
clear @a[tag=gotobattle] 
execute @a[team=yellow] ~ ~ ~ function windfire:lucky/death/yellow/give-clothing
execute @a[team=blue] ~ ~ ~ function windfire:lucky/death/blue/give-clothing
effect @a[tag=gotobattle] clear
effect @a[tag=gotobattle] minecraft:regeneration 1 127 true
effect @a[tag=gotobattle] minecraft:saturation 1 127 true
effect @a[tag=gotobattle] minecraft:night_vision 999999 0 true
xp -999999L @a[tag=gotobattle]
setworldspawn 1017 4 1077
setblock 1029 1 1043 minecraft:redstone_block
#setworldspawn 1017 4 1082

gamerule spawnRadius 0
gamerule doLimitedCrafting true
execute @e[type=villager,tag=display] ~ ~ ~ tp @s ~ -777 ~
#合成配方清除
recipe take @a[tag=gotobattle,m=!3] *
#武器工具裝備
recipe give @a[tag=gotobattle,m=!3] minecraft:stone_axe
recipe give @a[tag=gotobattle,m=!3] minecraft:stone_hoe
recipe give @a[tag=gotobattle,m=!3] minecraft:stone_shovel
recipe give @a[tag=gotobattle,m=!3] minecraft:stone_sword

recipe give @a[tag=gotobattle,m=!3] minecraft:iron_axe
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_hoe
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_shovel
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_sword
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_boots
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_leggings
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_chestplate
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_helmet

recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_axe
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_hoe
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_shovel
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_sword
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_boots
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_leggings
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_chestplate
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_helmet

recipe give @a[tag=gotobattle,m=!3] minecraft:shield
recipe give @a[tag=gotobattle,m=!3] minecraft:fishing_rod
recipe give @a[tag=gotobattle,m=!3] minecraft:bow
recipe give @a[tag=gotobattle,m=!3] minecraft:arrow
#
recipe give @a[tag=gotobattle,m=!3] minecraft:oak_planks
recipe give @a[tag=gotobattle,m=!3] minecraft:oak_stairs
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_block
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_ingot_from_block
recipe give @a[tag=gotobattle,m=!3] minecraft:gold_block
recipe give @a[tag=gotobattle,m=!3] minecraft:gold_ingot_from_block
recipe give @a[tag=gotobattle,m=!3] minecraft:lapis_block
recipe give @a[tag=gotobattle,m=!3] minecraft:lapis_lazuli
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond_block
recipe give @a[tag=gotobattle,m=!3] minecraft:diamond
recipe give @a[tag=gotobattle,m=!3] minecraft:emerald
recipe give @a[tag=gotobattle,m=!3] minecraft:clay

recipe give @a[tag=gotobattle,m=!3] minecraft:stick
recipe give @a[tag=gotobattle,m=!3] minecraft:ladder
recipe give @a[tag=gotobattle,m=!3] minecraft:fence
recipe give @a[tag=gotobattle,m=!3] minecraft:fence_gate
recipe give @a[tag=gotobattle,m=!3] minecraft:boat
recipe give @a[tag=gotobattle,m=!3] minecraft:sign
recipe give @a[tag=gotobattle,m=!3] minecraft:chest
recipe give @a[tag=gotobattle,m=!3] minecraft:bucket
recipe give @a[tag=gotobattle,m=!3] minecraft:golden_apple
#
recipe give @a[tag=gotobattle,m=!3] minecraft:tripwire_hook
recipe give @a[tag=gotobattle,m=!3] minecraft:wooden_button
recipe give @a[tag=gotobattle,m=!3] minecraft:wooden_door
recipe give @a[tag=gotobattle,m=!3] minecraft:trapdoor
recipe give @a[tag=gotobattle,m=!3] minecraft:wooden_pressure_plate
recipe give @a[tag=gotobattle,m=!3] minecraft:stone_button
recipe give @a[tag=gotobattle,m=!3] minecraft:stone_pressure_plate
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_door
recipe give @a[tag=gotobattle,m=!3] minecraft:iron_trapdoor
recipe give @a[tag=gotobattle,m=!3] minecraft:redstone_torch
recipe give @a[tag=gotobattle,m=!3] minecraft:redstone_block
recipe give @a[tag=gotobattle,m=!3] minecraft:redstone
recipe give @a[tag=gotobattle,m=!3] minecraft:repeater
recipe give @a[tag=gotobattle,m=!3] minecraft:comparator
recipe give @a[tag=gotobattle,m=!3] minecraft:dispenser
recipe give @a[tag=gotobattle,m=!3] minecraft:piston
recipe give @a[tag=gotobattle,m=!3] minecraft:hopper
#
recipe give @a[tag=gotobattle,m=!3] minecraft:golden_rail
recipe give @a[tag=gotobattle,m=!3] minecraft:detector_rail
recipe give @a[tag=gotobattle,m=!3] minecraft:rail
recipe give @a[tag=gotobattle,m=!3] minecraft:minecart
recipe give @a[tag=gotobattle,m=!3] minecraft:hopper_minecart
recipe give @a[tag=gotobattle,m=!3] minecraft:tnt_minecart

#
#blockdata 1030 2 940 {Text2:"{\"text\":\"Ver???版\"}"}
