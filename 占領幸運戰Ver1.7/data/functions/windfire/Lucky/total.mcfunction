#統計分數
#把A的分數設為是B的分數
execute @a ~ ~ ~ scoreboard players operation @p top_death = @p death
execute @a ~ ~ ~ scoreboard players operation @p top_kill = @p kill
execute @a ~ ~ ~ scoreboard players operation @p top_walk = @p walk
#如果B比A大，就把A的分數設為是B的分數
scoreboard players operation 死亡最高分 death > @a death
scoreboard players operation 殺人最高分 kill > @a kill
scoreboard players operation 走最多步數 walk > @a walk
#把A的分數減去B的分數
scoreboard players operation @a top_death -= 死亡最高分 death
scoreboard players operation @a top_kill -= 殺人最高分 kill
scoreboard players operation @a top_walk -= 走最多步數 walk

#顯示分數
effect @a minecraft:resistance 999999 255 true
spawnpoint @a 1006 227.9 1000
tp @a 1006 227.9 1000
gamemode 2 @a
fill 1030 6 1056 1002 0 945 minecraft:coal_block 0 replace minecraft:redstone_block
fill 1030 14 1056 1002 7 945 minecraft:coal_block 0 replace minecraft:redstone_block
fill 1030 20 1056 1002 15 945 minecraft:coal_block 0 replace minecraft:redstone_block
setblock 1017 15 1047 minecraft:air
setblock 1012 15 1053 minecraft:redstone_block

execute @a ~ ~ ~ tellraw @p ["",{"text":"----------------------------------------------------------------\n                         ","bold":true,"color":"white"},{"text":" 占領幸運戰\n","bold":true,"color":"red"},{"text":"本次成績","bold":true,"color":"white"},{"text":"\n","bold":true},{"text":"黃隊分數: ","bold":true,"color":"yellow"},{"score":{"name":"黃隊分數","objective":"list"},"bold":true,"color":"yellow"},{"text":"\n","bold":true},{"text":"藍隊分數:","bold":true,"color":"blue"},{"text":" ","bold":true,"color":"red"},{"score":{"name":"藍隊分數","objective":"list"},"bold":true,"color":"blue"},{"text":"\n","bold":true},{"text":"殺人次數: ","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"自己殺了幾個人","color":"light_purple"}]}}},{"score":{"name":"@p","objective":"kill"},"bold":true,"color":"light_purple"},{"text":"\n","bold":true},{"text":"死亡次數: ","bold":true,"color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"自己死了多少次","color":"green"}]}}},{"score":{"name":"@p","objective":"death"},"bold":true,"color":"green"},{"text":"\n","bold":true},{"text":"走路步數: ","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":" 自己走了多少格\n(從百分位開始計算)","color":"aqua"}]}}},{"score":{"name":"@p","objective":"walk"},"bold":true,"color":"aqua"},{"text":"\n","bold":true},{"text":"勝利隊伍: ","bold":true,"color":"red"},{"selector":"@e[type=Armor_Stand,tag=win]","bold":true,"color":"red"},{"text":" ","bold":true,"color":"red"},{"text":"\n","bold":true},{"text":"嗜血魔頭: ","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"本場殺最多人的人","color":"dark_purple"}]}}},{"selector":"@a[score_top_kill_min=0]","bold":true,"color":"dark_purple"},{"text":"\n","bold":true},{"text":"專業送頭: ","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"本場死最多次的人","color":"dark_green"}]}}},{"selector":"@a[score_top_death_min=0]","bold":true,"color":"dark_green"},{"text":"\n","bold":true},{"text":"走路不痛: ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"本場走最多格的人","color":"gold"}]}}},{"selector":"@a[score_top_walk_min=0]","bold":true,"color":"gold"},{"text":"\n","bold":true},{"text":"\n感謝您本次的遊玩 希望您很幸運的獲勝了","bold":true},{"text":"\n"},{"text":"----------------------------------------------------------------","bold":true,"color":"white"},{"text":"若需要查看更多,請切成創造模式\n","color":"red","bold":true}]


#給成就
advancement grant @a[score_top_kill_min=0] only lucky:king_kill
advancement grant @a[score_top_death_min=0] only lucky:king_death
advancement grant @a[score_top_walk_min=0] only lucky:king_walk

