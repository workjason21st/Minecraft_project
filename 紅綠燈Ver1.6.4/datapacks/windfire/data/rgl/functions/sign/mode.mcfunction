execute if entity @e[tag=core] run setblock 112 52 108 air
execute if entity @e[tag=core,scores={rglmode=1}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"基礎模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 2"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=2}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"懲罰模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 3"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=3}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"混合模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 4"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=4}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"臥底模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 5"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=5}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"重生模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 6"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=6}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"累積模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 7"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=7}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"水鬼模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 8"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=8}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"自由模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 9"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}
execute if entity @e[tag=core,scores={rglmode=9}] run setblock 112 52 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊戲模式: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglmode"},"color":"black","bold":"false"}]',Text2:'{"text":"病毒模式","color":"green","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglmode 1"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/mode"}}'}


execute if entity @e[tag=core,scores={rglmode=1}] run tellraw @a ["",{"text":"\n\n\n\n基礎紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用","color":"white"},{"text":"有限次數的紅燈","bold":"true","color":"red"},{"text":"停下跟綠燈救人,\n壞孩子們存活指定時長就勝利。","color":"white"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家會死。","color":"green"},{"text":"\n\n但若是壞孩子全都為紅燈狀態,\n或是被鬼全部殺光, 鬼為贏家","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=2}] run tellraw @a ["",{"text":"\n\n\n\n懲罰紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用紅燈停下跟綠燈救人,","color":"white"},{"text":"\n但是在紅燈時超過一段時間會死亡,\n若是秒數剩下7秒，鬼在附近可以自救","color":"green"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家會死。\n壞孩子們存活指定時長就勝利,\n但若是壞孩子全都為紅燈狀態,\n或是被鬼全部殺光, 鬼為贏家","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=3}] run tellraw @a ["",{"text":"\n\n\n\n混合紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用","color":"white"},{"text":"有限次數的紅燈","bold":"true","color":"red"},{"text":"停下跟綠燈救人,","color":"white"},{"text":"\n但是在紅燈時超過一段時間會死亡,\n若是秒數剩下7秒，鬼在附近可以自救","color":"green"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家會死。\n壞孩子們存活指定時長就勝利,\n但若是壞孩子全都為紅燈狀態,\n或是被鬼全部殺光, 鬼為贏家","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=4}] run tellraw @a ["",{"text":"\n\n\n\n臥底紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用","color":"white"},{"text":"有限次數的紅燈","bold":"true","color":"red"},{"text":"停下跟綠燈救人,","color":"white"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家會死。\n壞孩子們存活指定時長就勝利,\n但若是壞孩子全都為紅燈狀態,\n或是被鬼全部殺光, 鬼為贏家","color":"white"},{"text":"\n\n此模式下前一分鐘沒有鬼,\n但是臥底已經隨機產生\n(臥底的數量根據開始時鬼的數量)","color":"red"},{"text":"\n而且當公布臥底時,\n離每個臥底最近的孩子會受臥底陷害,\n因此那些最近的孩子會被強制紅燈","color":"green"}]
execute if entity @e[tag=core,scores={rglmode=5}] run tellraw @a ["",{"text":"\n\n\n\n重生紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用","color":"white"},{"text":"有限次數的紅燈","bold":"true","color":"red"},{"text":"停下跟綠燈救人,","color":"white"},{"text":"\n而壞孩子們死亡能在總死亡數以內無限重生。","color":"green"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家會死。","color":"white"},{"text":"\n\n壞孩子們存活指定時長就勝利。","color":"white"},{"text":"\n但若是壞孩子死亡超過指定次數,\n或是壞孩子全都為紅燈狀態, 鬼為贏家","color":"red"}]
execute if entity @e[tag=core,scores={rglmode=6}] run tellraw @a ["",{"text":"\n\n\n\n累積紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用","color":"white"},{"text":"紅燈停下跟","color":"white"},{"text":"每幾秒鐘給的綠燈","bold":"true","color":"green"},{"text":"救人,","color":"white"},{"text":"\n而壞孩子們死亡能在總死亡數以內無限重生。","color":"red"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家會死。","color":"white"},{"text":"\n\n壞孩子們總共持有指定數量的綠燈，","color":"green"},{"text":"\n或是壞孩子們存活指定時長就勝利。\n但若是壞孩子死亡超過指定次數,\n或是壞孩子全都為紅燈狀態, 鬼為贏家","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=7}] run tellraw @a ["",{"text":"\n\n\n\n水鬼紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用紅燈停下跟綠燈救人,","color":"white"},{"text":"\n還有壞孩子們不會被砍死, ","color":"green"},{"text":"\n但是壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家","color":"white"},{"text":"仍然會死亡。","color":"green"},{"text":"\n\n鬼拿著武器攻擊壞孩子就會成為壞孩子, \n而被攻擊的孩子會變成新的鬼。\n時間到，最後陣營是壞孩子就勝利, ","color":"red"},{"text":"\n但若是壞孩子全都為紅燈狀態, 鬼為贏家。","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=8}] run tellraw @a ["",{"text":"\n\n\n\n自由紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用","color":"white"},{"text":"有限次數的紅燈","bold":"true","color":"red"},{"text":"停下跟綠燈救人,","color":"white"},{"text":"\n還可以使用綠燈拯救自己,\n但是綠燈有次數以及使用冷卻的限制。","bold":"true","color":"green"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼,\n不然距離鬼最遠的玩家會死。\n壞孩子們存活指定時長就勝利,\n但若是壞孩子全都為紅燈狀態,\n或是被鬼全部殺光, 鬼為贏家","color":"white"}]
execute if entity @e[tag=core,scores={rglmode=9}] run tellraw @a ["",{"text":"\n\n\n\n病毒紅綠燈 ： ","bold":true,"color":"yellow"},{"text":"\n壞孩子能使用紅燈停下跟綠燈救人,\n推薦開場時1人當鬼王,不要玩小圖","color":"white"},{"text":"\n此模式下被鬼殺死會成為病小鬼, \n病小鬼沒有攻擊武器,但是每幾秒鐘鬼會隨機挑選新鬼王(人不知道)","color":"red"},{"text":"\n而且病小鬼每多1個,人類方就會增加2顆心","color":"green"},{"text":"\n\n而且壞孩子方在時限內至少一人需要靠近鬼(不限鬼王),\n不然距離鬼最遠的玩家會死。\n壞孩子們存活指定時長就勝利,\n若是壞孩子全都為紅燈狀態,鬼獲勝","color":"white"},{"text":"\n但是全部人被鬼感染, 初始鬼王跟現任鬼王為贏家","color":"red"}]

execute if entity @e[tag=core,scores={rglmode=1}] run scoreboard players set @e[tag=core] rglused 7
execute if entity @e[tag=core,scores={rglmode=2}] run scoreboard players set @e[tag=core] rglused 999
execute if entity @e[tag=core,scores={rglmode=2}] run scoreboard players set @e[tag=core] rglkill 25
execute if entity @e[tag=core,scores={rglmode=2}] run scoreboard players set @e[tag=core] rglself 15

execute if entity @e[tag=core,scores={rglmode=3}] run scoreboard players set @e[tag=core] rglused 5
execute if entity @e[tag=core,scores={rglmode=3}] run scoreboard players set @e[tag=core] rglkill 30
execute if entity @e[tag=core,scores={rglmode=3}] run scoreboard players set @e[tag=core] rglself 15

execute if entity @e[tag=core,scores={rglmode=4}] run scoreboard players set @e[tag=core] rglused 4
execute if entity @e[tag=core,scores={rglmode=5}] run scoreboard players set @e[tag=core] rglused 3
execute if entity @e[tag=core,scores={rglmode=5}] run scoreboard players set @e[tag=core] rglhealth 11

execute if entity @e[tag=core,scores={rglmode=6}] run scoreboard players set @e[tag=core] rglgive 20
execute if entity @e[tag=core,scores={rglmode=6}] run scoreboard players set @e[tag=core] rglhealth 11
execute if entity @e[tag=core,scores={rglmode=6}] run scoreboard players set @e[tag=core] rglcount 10
execute if entity @e[tag=core,scores={rglmode=6..7}] run scoreboard players set @e[tag=core] rglused 999

execute if entity @e[tag=core,scores={rglmode=8}] run scoreboard players set @e[tag=core] rglused 4
execute if entity @e[tag=core,scores={rglmode=8}] run scoreboard players set @e[tag=core] rglgreen 8
execute if entity @e[tag=core,scores={rglmode=8}] run scoreboard players set @e[tag=core] rglfree 25

execute if entity @e[tag=core,scores={rglmode=9}] run scoreboard players set @e[tag=core] rglused 999
execute if entity @e[tag=core,scores={rglmode=9}] run scoreboard players set @e[tag=core] rglnewghost 25
#execute if entity @e[tag=core,scores={rglmode=9}] run scoreboard players set @e[tag=core] rgladdheart 2

#execute if entity @e[tag=core,scores={rglmode=7}] run scoreboard players set @e[tag=core] rglinvulnerable 0
#execute if entity @e[tag=core,scores={rglmode=8}] run scoreboard players set @e[tag=core] rglinvulnerable 1

function rgl:sign/detail/kill
function rgl:sign/detail/self
function rgl:sign/detail/used
function rgl:sign/other/rebirth
#execute if entity @e[tag=core,scores={rglmode=7..8}] run function rgl:sign/other/invulnerable
execute if entity @e[tag=core,scores={rglmode=6}] run function rgl:sign/detail/give
execute if entity @e[tag=core,scores={rglmode=6}] run function rgl:sign/detail/count
execute if entity @e[tag=core,scores={rglmode=5..6}] run function rgl:sign/detail/health
execute if entity @e[tag=core,scores={rglmode=8}] run function rgl:sign/detail/free
execute if entity @e[tag=core,scores={rglmode=8}] run function rgl:sign/detail/green
execute if entity @e[tag=core,scores={rglmode=9}] run function rgl:sign/detail/newghost
#execute if entity @e[tag=core,scores={rglspecial=3}] run function rgl:sign/detail/setstick
#execute if entity @e[tag=core,scores={rglspecial=3}] run function rgl:sign/detail/stickatt
#execute if entity @e[tag=core,scores={rglmode=9}] run function rgl:sign/detail/addheart
