
execute as @a run scoreboard players operation @s runM = @s runcm
execute as @a run scoreboard players operation @s runM /= @e[tag=random0,limit=1] runcm
execute as @a run scoreboard players operation @s boatM = @s boatcm
execute as @a run scoreboard players operation @s boatM /= @e[tag=random0,limit=1] boatcm

execute as @a run scoreboard players operation @s top_death = @s deathCount
execute as @a run scoreboard players operation @s top_totalKill = @s totalKillCount
execute as @a run scoreboard players operation @s top_runM = @s runM
execute as @a run scoreboard players operation @s top_boatM = @s boatM
execute as @a run scoreboard players operation @s top_bodyblock = @s bodyblock
execute as @a run scoreboard players operation @s top_shieldblock = @s shieldblock
execute as @a run scoreboard players operation @s top_mine_stone = @s mine_stone

scoreboard players operation 請不要輕易死亡好嗎? top_death > @a top_death
scoreboard players operation 生物見我都會怕 top_totalKill > @a top_totalKill
scoreboard players operation 我在跑馬拉松 top_runM > @a top_runM
scoreboard players operation 划龍舟第一名 top_boatM > @a top_boatM
scoreboard players operation 肉身最勇猛 top_bodyblock > @a top_bodyblock
scoreboard players operation 盾牌是你最好夥伴 top_shieldblock > @a top_shieldblock
scoreboard players operation 挖哇挖 top_mine_stone > @a top_mine_stone
scoreboard players operation @a top_death -= 請不要輕易死亡好嗎? top_death
scoreboard players operation @a top_totalKill -= 生物見我都會怕 top_totalKill
scoreboard players operation @a top_runM -= 我在跑馬拉松 top_runM
scoreboard players operation @a top_boatM -= 划龍舟第一名 top_boatM
scoreboard players operation @a top_bodyblock -= 肉身最勇猛 top_bodyblock
scoreboard players operation @a top_shieldblock -= 盾牌是你最好夥伴 top_shieldblock
scoreboard players operation @a top_mine_stone -= 挖哇挖 top_mine_stone

tellraw @a ["",{"text":"\n地圖製作者:風火-感謝您的遊玩\n--------------------END--------------------"},{"text":"\n請不要輕易死亡好嗎: ","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":"死亡數最多(點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar deathCount"}},{"selector":"@a[scores={top_death=0..}]"},{"text":"\n生物見我都會怕: ","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":"斬殺最多生物(點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar totalKillCount"}},{"selector":"@a[scores={top_totalKill=0..}]"},{"text":"\n我在跑馬拉松: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":"跑步距離最遠(點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar runM"}},{"selector":"@a[scores={top_runM=0..}]"},{"text":"\n划龍舟第一名: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":"划船距離最遠(點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar boatM"}},{"selector":"@a[scores={top_boatM=0..}]"},{"text":"\n肉身最勇猛: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":"身體承受最多傷害(點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar bodyblock"}},{"selector":"@a[scores={top_bodyblock=0..}]"},{"text":"\n盾牌是你最好夥伴: ","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":"盾牌抵擋最多傷害(點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar shieldblock"}},{"selector":"@a[scores={top_shieldblock=0..}]"},{"text":"\n挖哇挖: ","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":"挖最多石頭(點我查看更多)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar mine_stone"}},{"selector":"@a[scores={top_mine_stone=0..}]"}]
