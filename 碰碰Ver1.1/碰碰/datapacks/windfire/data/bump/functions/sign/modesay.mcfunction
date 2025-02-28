
execute as @e[tag=mainAI,scores={bumpmode=0}] run tellraw @a ["",{"text":"\n\n就是一般模式 ： ","bold":true,"color":"gold"},{"text":"\n無論是玩家或熾足獸都會受傷而死"},{"text":"\n只要存活到最後的隊伍就獲勝"}]
execute as @e[tag=mainAI,scores={bumpmode=1}] run tellraw @a ["",{"text":"\n\n名字是競技模式 ： ","bold":true,"color":"gold"},{"text":"\n在這個模式中熾足獸不會死亡"},{"text":"\n只能傷害玩家來取勝"},{"text":"\n一樣是存活到最後的隊伍獲勝"}]
execute as @e[tag=mainAI,scores={bumpmode=2}] run tellraw @a ["",{"text":"\n\n還敢打小熾ㄚ模式 ： ","bold":true,"color":"gold"},{"text":"\n玩家在熾足獸上不會受到傷害"},{"text":"\n必須先殺掉其熾足獸才能擊倒玩家"},{"text":"\n堅持存活到最後的隊伍就獲勝"}]
#execute as @e[tag=mainAI,scores={bumpmode=3}] run tellraw @a ["",{"text":"\n\n我全都要模式 ： ","bold":true,"color":"light_purple"},{"text":"\n取得所有的分數來達到３７分"},{"text":"\n最快蒐集完成的隊伍獲勝"},{"text":"\n\n若在60分鐘後沒達成則提前結束"},{"text":"\n(分數高的隊伍勝利)"}]

