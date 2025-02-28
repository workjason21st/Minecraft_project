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
#增加記分板
scoreboard objectives add mining_creeper stat.mineBlock.minecraft.stone 爆炸偵測
scoreboard objectives add mining_lava stat.mineBlock.minecraft.stone 岩漿偵測
scoreboard objectives add luckypoint dummy 幸運指數
scoreboard objectives add winpoint dummy 獲勝分數
scoreboard objectives add zombiecount dummy 殭屍數量
scoreboard objectives add treasuredeath deathCount 寶藏區死亡
scoreboard objectives add mineral% dummy 礦物機率
scoreboard objectives add iron% dummy 鐵礦機率
scoreboard objectives add gold% dummy 金礦機率
scoreboard objectives add lapis% dummy 青金石礦機率
scoreboard objectives add diamond% dummy 鑽石紅石礦機率
scoreboard objectives add luckymining dummy 幸運挖礦
scoreboard objectives add load dummy 載入進度
scoreboard objectives add end_point dummy 結算分數
scoreboard objectives add top_walk dummy 走路最多步
scoreboard objectives add top_kill dummy 最高殺人數
scoreboard objectives add top_death dummy 最高死亡數
scoreboard objectives add inthewater air 水中呼吸量
scoreboard objectives add setup trigger 初始設定
scoreboard objectives add walk stat.walkOneCm 走路步數
scoreboard objectives add killcount playerKillCount 殺人逞罰a
scoreboard objectives add killCount playerKillCount 殺人逞罰b
scoreboard objectives add KillCount playerKillCount 殺人逞罰c
scoreboard objectives add kill playerKillCount 殺人數
scoreboard objectives add death deathCount 死亡次數
scoreboard objectives add deathCount deathCount 死亡逞罰
scoreboard objectives add tp.b dummy 回城
scoreboard objectives add tp.b2 dummy 強制回城
scoreboard objectives add tp.m dummy 去寶藏區
scoreboard objectives add tnt dummy 爆炸轉換
scoreboard objectives add surprise1 dummy 討論會議
scoreboard objectives add throwsnowball stat.useItem.minecraft.snowball 緩速雪球
scoreboard objectives add rabbit99 stat.useItem.minecraft.egg 殺人兔蛋
scoreboard objectives add mining_stones stat.mineBlock.minecraft.stone 挖掘偵測
scoreboard objectives add mining_iron stat.mineBlock.minecraft.iron_ore 挖掘鐵礦量
scoreboard objectives add mining_gold stat.mineBlock.minecraft.gold_ore 挖掘金礦量
scoreboard objectives add mining_diamond stat.mineBlock.minecraft.diamond_ore 挖掘鑽礦量
scoreboard objectives add mining_lapis stat.mineBlock.minecraft.lapis_ore 挖掘青晶石
scoreboard objectives add mining_redstone stat.mineBlock.minecraft.redstone_ore 挖掘紅石量
scoreboard objectives add mining_cobble stat.mineBlock.minecraft.cobblestone 挖鵝卵石
scoreboard objectives add case_time dummy 事件時間
scoreboard objectives add monster_time dummy 殭屍時間
scoreboard objectives add kouki_death deathCount 金褲死亡
scoreboard objectives add stonesuit stat.useItem.minecraft.spawn_egg 石頭套裝
scoreboard objectives add bambootime dummy 竹子詛咒時間

scoreboard objectives add lava dummy 挖到岩漿數量
scoreboard objectives add creeper dummy 吵醒苦力怕次數
scoreboard objectives add mining_stone stat.mineBlock.minecraft.stone 挖掘石頭量
scoreboard objectives add mining_dirt stat.mineBlock.minecraft.dirt 挖掘泥土量
scoreboard objectives add mining_lamp stat.mineBlock.minecraft.redstone_lamp 挖掘核心數

scoreboard objectives add dropclean stat.drop.minecraft.fire_charge 使用清理工具
scoreboard objectives add drophole stat.drop.minecraft.firework_charge 使用挖洞工具
scoreboard objectives add droppillar stat.drop.minecraft.blaze_rod 使用一柱擎天
scoreboard objectives add use_snowball stat.useItem.minecraft.snowball 使用緩速雪球
scoreboard objectives add use_egg stat.useItem.minecraft.egg 使用兔蛋數
scoreboard objectives add dropstar stat.drop.minecraft.nether_star 丟出幸運星數

scoreboard objectives add trade stat.tradedWithVillager 跟村民交易次數
scoreboard objectives add enchant stat.itemEnchanted 附魔次數
scoreboard objectives add eatbeef stat.useItem.minecraft.cooked_beef 吃牛排數量
scoreboard objectives add eatgoldapple stat.useItem.minecraft.golden_apple 吃金蘋果數量

#設定為預設值
scoreboard players set 時間 list 0
scoreboard players set 黃隊分數 list 0
scoreboard players set 藍隊分數 list 0
scoreboard players set 黃隊占領 list 0
scoreboard players set 藍隊占領 list 0
scoreboard players set 各種時間 case_time -1222
scoreboard players set 各種時間 monster_time -294

scoreboard players set @a mining_stone 0
scoreboard players set @a mining_dirt 0
scoreboard players set @a mining_lamp 0
scoreboard players set @a dropclean 0
scoreboard players set @a drophole 0
scoreboard players set @a droppillar 0
scoreboard players set @a use_snowball 0
scoreboard players set @a use_egg 0
scoreboard players set @a dropstar 0
scoreboard players set @a trade 0
scoreboard players set @a enchant 0
scoreboard players set @a eatbeef 0
scoreboard players set @a eatgoldapple 0

#scoreboard players set 機率 mineral% 5
#scoreboard players set 機率 iron% 5
#scoreboard players set 機率 gold% 7
#scoreboard players set 機率 lapis% 9
#scoreboard players set 機率 diamond% 11
scoreboard players set @a creeper 0
scoreboard players set @a lava 0
scoreboard players set @a mining_creeper 0
scoreboard players set @a mining_lava 0
scoreboard players set @a luckypoint 80
scoreboard players set 原始指數 luckypoint 80
scoreboard players set @a treasuredeath 0
scoreboard players set @a luckymining 0
scoreboard players set @a load 0
scoreboard players set @a end_point 0
scoreboard players set @a killcount 0
scoreboard players set @a killCount 0
scoreboard players set @a KillCount 0
scoreboard players set @a top_kill 0
scoreboard players set @a top_death 0
scoreboard players set @a top_walk 0
scoreboard players set @a kill 0
scoreboard players set @a death 0
scoreboard players set @a walk 0
scoreboard players set @a deathCount 0
scoreboard players set @a tp.b 0
scoreboard players set @a tp.b2 0
scoreboard players set @a tp.m 0
scoreboard players set @a tnt 0
scoreboard players set @a surprise1 0
scoreboard players set @a throwsnowball 0
scoreboard players set @a rabbit99 0
scoreboard players set @a mining_stones 0
scoreboard players set @a mining_iron 0
scoreboard players set @a mining_gold 0
scoreboard players set @a mining_diamond 0
scoreboard players set @a mining_lapis 0
scoreboard players set @a mining_redstone 0
scoreboard players set @a mining_cobble 0
scoreboard players set @a kouki_death -1
scoreboard players set @a stonesuit 0
scoreboard players set @a bambootime -1

scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list KillCount
##
scoreboard objectives remove splash_potion
scoreboard objectives add splash_potion stat.useItem.minecraft.splash_potion
scoreboard players set @a splash_potion 0
#scoreboard objectives add count dummy
#