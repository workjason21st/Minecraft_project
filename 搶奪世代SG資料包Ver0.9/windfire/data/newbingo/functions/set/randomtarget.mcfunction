#recipe take @a *
scoreboard objectives remove bingolist
scoreboard objectives add bingolist dummy "目標物列表"
scoreboard objectives setdisplay sidebar bingolist
#execute as @e[tag=random0,scores={bingomode=1..4}] run scoreboard players operation 獲勝分數 bingolist = @e[tag=random0,limit=1] mode1point
#execute as @e[tag=random0,scores={bingomode=1..4}] run scoreboard players operation 遊戲中止時間 bingolist = @e[tag=random0,limit=1] mode2time
execute as @e[tag=random0,scores={bingomode=3}] run scoreboard players reset 獲勝分數 bingolist
scoreboard players set 隨機決定 bingolist -1
scoreboard players set @e[tag=random0] bingotarget 1
