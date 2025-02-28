function windfire:lucky/case/reduction%20shop
scoreboard teams leave @a
advancement revoke @a everything
recipe take @a *
xp -10000L @a
tp @a 1017 6.9 1082
gamemode 2 @a
clear @a

#移除標籤
scoreboard players tag @a remove loader
scoreboard players tag @a remove tp.m
scoreboard players tag @a remove noore_remind
scoreboard players tag @a remove noore_reminds
scoreboard players tag @a remove iron_remind
scoreboard players tag @a remove iron_reminds
scoreboard players tag @a remove iron_remindss
scoreboard players tag @a remove gold_remind
scoreboard players tag @a remove gold_reminds
scoreboard players tag @a remove gold_remindss
scoreboard players tag @a remove lapis_remind
scoreboard players tag @a remove lapis_reminds
scoreboard players tag @a remove lapis_remindss
scoreboard players tag @a remove diamond_remind
scoreboard players tag @a remove diamond_reminds
scoreboard players tag @a remove diamond_remindss
scoreboard players tag @a remove gotobattle

scoreboard players tag @a add noore_reminds
#移除記分板
scoreboard objectives remove mining_stone
scoreboard objectives remove mining_dirt
scoreboard objectives remove mining_lamp
scoreboard objectives remove dropclean
scoreboard objectives remove drophole
scoreboard objectives remove droppillar
scoreboard objectives remove use_snowball
scoreboard objectives remove use_egg
scoreboard objectives remove dropstar
scoreboard objectives remove trade
scoreboard objectives remove enchant
scoreboard objectives remove eatbeef
scoreboard objectives remove eatgoldapple
scoreboard objectives remove creeper
scoreboard objectives remove lava

scoreboard objectives remove mining_creeper
scoreboard objectives remove mining_lava
scoreboard objectives remove luckypoint
scoreboard objectives remove treasuredeath
scoreboard objectives remove luckymining
scoreboard objectives remove load
scoreboard objectives remove end_point
scoreboard objectives remove top_walk
scoreboard objectives remove top_kill
scoreboard objectives remove top_death
scoreboard objectives remove inthewater
scoreboard objectives remove setup
scoreboard objectives remove walk
scoreboard objectives remove killcount
scoreboard objectives remove killCount
scoreboard objectives remove KillCount
scoreboard objectives remove kill
scoreboard objectives remove death
scoreboard objectives remove deathCount
scoreboard objectives remove tp.b
scoreboard objectives remove tp.b2
scoreboard objectives remove tp.m
scoreboard objectives remove tnt
scoreboard objectives remove surprise1
scoreboard objectives remove throwsnowball
scoreboard objectives remove rabbit99
scoreboard objectives remove mining_stones
scoreboard objectives remove mining_dirt
scoreboard objectives remove mining_iron
scoreboard objectives remove mining_gold
scoreboard objectives remove mining_diamond
scoreboard objectives remove mining_lapis
scoreboard objectives remove mining_redstone
scoreboard objectives remove mining_cobble
scoreboard objectives remove case_time
scoreboard objectives remove monster_time
scoreboard objectives remove kouki_death
scoreboard objectives remove stonesuit
scoreboard objectives remove bambootime
#scoreboard objectives remove mineral%
#scoreboard objectives remove iron%
#scoreboard objectives remove gold%
#scoreboard objectives remove lapis%
#scoreboard objectives remove diamond%
#scoreboard objectives remove winpoint
#scoreboard objectives remove zombiecount

scoreboard objectives remove splash_potion
scoreboard objectives setdisplay sidebar list