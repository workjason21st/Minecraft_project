scoreboard teams join stander @a[team=team]
advancement revoke @s[tag=!gotobattle] from lucky:startgo
advancement grant @s[tag=!gotobattle] only lucky:startgo
tp @s[tag=!gotobattle,team=yellow] 1011.0 184 1054
tp @s[tag=!gotobattle,team=blue] 1002.0 184 946
tp @s[tag=!gotobattle,team=stander] 1016 190 1000
spawnpoint @s[tag=!gotobattle,team=yellow] 1011.0 184 1054
spawnpoint @s[tag=!gotobattle,team=blue] 1002.0 184 946
gamemode 2 @s[tag=!gotobattle,team=!stander]
gamemode 3 @s[tag=!gotobattle,team=stander]
clear @s[tag=!gotobattle]
execute @s[tag=!gotobattle] ~ ~ ~ function windfire:lucky/death/yellow/give-clothing
execute @s[tag=!gotobattle] ~ ~ ~ function windfire:lucky/death/blue/give-clothing
effect @s[tag=!gotobattle] clear
effect @s[tag=!gotobattle] minecraft:regeneration 1 127 true
effect @s[tag=!gotobattle] minecraft:saturation 1 127 true
effect @s[tag=!gotobattle] minecraft:night_vision 999999 0 true
xp -999999L @s[tag=!gotobattle]

scoreboard players tag @s[tag=!gotobattle] remove loader
scoreboard players tag @s[tag=!gotobattle] remove tp.m
scoreboard players tag @s[tag=!gotobattle] remove noore_remind
scoreboard players tag @s[tag=!gotobattle] remove noore_reminds
scoreboard players tag @s[tag=!gotobattle] remove iron_remind
scoreboard players tag @s[tag=!gotobattle] remove iron_reminds
scoreboard players tag @s[tag=!gotobattle] remove iron_remindss
scoreboard players tag @s[tag=!gotobattle] remove gold_remind
scoreboard players tag @s[tag=!gotobattle] remove gold_reminds
scoreboard players tag @s[tag=!gotobattle] remove gold_remindss
scoreboard players tag @s[tag=!gotobattle] remove lapis_remind
scoreboard players tag @s[tag=!gotobattle] remove lapis_reminds
scoreboard players tag @s[tag=!gotobattle] remove lapis_remindss
scoreboard players tag @s[tag=!gotobattle] remove diamond_remind
scoreboard players tag @s[tag=!gotobattle] remove diamond_reminds
scoreboard players tag @s[tag=!gotobattle] remove diamond_remindss
scoreboard players set @s[tag=!gotobattle] luckymining 0
scoreboard players set @s[tag=!gotobattle] load 0
scoreboard players set @s[tag=!gotobattle] end_point 0
scoreboard players set @s[tag=!gotobattle] killcount 0
scoreboard players set @s[tag=!gotobattle] killCount 0
scoreboard players set @s[tag=!gotobattle] KillCount 0
scoreboard players set @s[tag=!gotobattle] top_kill 0
scoreboard players set @s[tag=!gotobattle] top_death 0
scoreboard players set @s[tag=!gotobattle] top_walk 0
scoreboard players set @s[tag=!gotobattle] kill 0
scoreboard players set @s[tag=!gotobattle] death 0
scoreboard players set @s[tag=!gotobattle] walk 0
scoreboard players set @s[tag=!gotobattle] deathCount 0
scoreboard players set @s[tag=!gotobattle] tp.b 0
scoreboard players set @s[tag=!gotobattle] tp.b2 0
scoreboard players set @s[tag=!gotobattle] tp.m 0
scoreboard players set @s[tag=!gotobattle] tnt 0
scoreboard players set @s[tag=!gotobattle] surprise1 0
scoreboard players set @s[tag=!gotobattle] throwsnowball 0
scoreboard players set @s[tag=!gotobattle] rabbit99 0
scoreboard players set @s[tag=!gotobattle] mining_stone 0
scoreboard players set @s[tag=!gotobattle] mining_stones 0
scoreboard players set @s[tag=!gotobattle] mining_iron 0
scoreboard players set @s[tag=!gotobattle] mining_gold 0
scoreboard players set @s[tag=!gotobattle] mining_diamond 0
scoreboard players set @s[tag=!gotobattle] mining_lapis 0
scoreboard players set @s[tag=!gotobattle] mining_redstone 0
scoreboard players set @s[tag=!gotobattle] mining_cobble 0
scoreboard players set @s[tag=!gotobattle] kouki_death -1
scoreboard players set @s[tag=!gotobattle] stonesuit 0
scoreboard players set @s[tag=!gotobattle] bambootime -1
scoreboard players set @s[tag=!gotobattle] splash_potion 0

#合成配方清除
recipe take @s[tag=!gotobattle,m=!3] *
#武器工具裝備
recipe give @s[tag=!gotobattle,m=!3] minecraft:stone_axe
recipe give @s[tag=!gotobattle,m=!3] minecraft:stone_hoe
recipe give @s[tag=!gotobattle,m=!3] minecraft:stone_shovel
recipe give @s[tag=!gotobattle,m=!3] minecraft:stone_sword

recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_axe
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_hoe
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_shovel
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_sword
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_boots
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_leggings
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_chestplate
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_helmet

recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_axe
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_hoe
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_shovel
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_sword
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_boots
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_leggings
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_chestplate
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_helmet

recipe give @s[tag=!gotobattle,m=!3] minecraft:shield
recipe give @s[tag=!gotobattle,m=!3] minecraft:fishing_rod
recipe give @s[tag=!gotobattle,m=!3] minecraft:bow
recipe give @s[tag=!gotobattle,m=!3] minecraft:arrow
#
recipe give @s[tag=!gotobattle,m=!3] minecraft:oak_planks
recipe give @s[tag=!gotobattle,m=!3] minecraft:oak_stairs
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_block
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_ingot_from_block
recipe give @s[tag=!gotobattle,m=!3] minecraft:gold_block
recipe give @s[tag=!gotobattle,m=!3] minecraft:gold_ingot_from_block
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond_block
recipe give @s[tag=!gotobattle,m=!3] minecraft:diamond
recipe give @s[tag=!gotobattle,m=!3] minecraft:emerald
recipe give @s[tag=!gotobattle,m=!3] minecraft:clay

recipe give @s[tag=!gotobattle,m=!3] minecraft:stick
recipe give @s[tag=!gotobattle,m=!3] minecraft:ladder
recipe give @s[tag=!gotobattle,m=!3] minecraft:fence
recipe give @s[tag=!gotobattle,m=!3] minecraft:fence_gate
recipe give @s[tag=!gotobattle,m=!3] minecraft:boat
recipe give @s[tag=!gotobattle,m=!3] minecraft:sign
recipe give @s[tag=!gotobattle,m=!3] minecraft:chest
recipe give @s[tag=!gotobattle,m=!3] minecraft:bucket
recipe give @s[tag=!gotobattle,m=!3] minecraft:golden_apple
#
recipe give @s[tag=!gotobattle,m=!3] minecraft:tripwire_hook
recipe give @s[tag=!gotobattle,m=!3] minecraft:wooden_button
recipe give @s[tag=!gotobattle,m=!3] minecraft:wooden_door
recipe give @s[tag=!gotobattle,m=!3] minecraft:trapdoor
recipe give @s[tag=!gotobattle,m=!3] minecraft:wooden_pressure_plate
recipe give @s[tag=!gotobattle,m=!3] minecraft:stone_button
recipe give @s[tag=!gotobattle,m=!3] minecraft:stone_pressure_plate
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_door
recipe give @s[tag=!gotobattle,m=!3] minecraft:iron_trapdoor
recipe give @s[tag=!gotobattle,m=!3] minecraft:redstone_torch
recipe give @s[tag=!gotobattle,m=!3] minecraft:redstone_block
recipe give @s[tag=!gotobattle,m=!3] minecraft:redstone
recipe give @s[tag=!gotobattle,m=!3] minecraft:repeater
recipe give @s[tag=!gotobattle,m=!3] minecraft:comparator
recipe give @s[tag=!gotobattle,m=!3] minecraft:dispenser
recipe give @s[tag=!gotobattle,m=!3] minecraft:piston
recipe give @s[tag=!gotobattle,m=!3] minecraft:hopper
#
recipe give @s[tag=!gotobattle,m=!3] minecraft:golden_rail
recipe give @s[tag=!gotobattle,m=!3] minecraft:detector_rail
recipe give @s[tag=!gotobattle,m=!3] minecraft:rail
recipe give @s[tag=!gotobattle,m=!3] minecraft:minecart
recipe give @s[tag=!gotobattle,m=!3] minecraft:hopper_minecart
recipe give @s[tag=!gotobattle,m=!3] minecraft:tnt_minecart

scoreboard players tag @a[tag=!gotobattle] add gotobattle