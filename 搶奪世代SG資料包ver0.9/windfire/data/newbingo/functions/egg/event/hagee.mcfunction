effect give @s minecraft:absorption 15 2 false
execute as @e[tag=random0] run tellraw @a ["",{"text":"\n【開啟彩蛋的甜頭】","color":"white","bold":"true"},{"selector":"@a[scores={eathagee=1..}]","bold":"true"},{"text":"喝了西瓜汁大吸特吸","color":"green"},{"text":"(得到15秒吸收III效果)","color":"white"}]
scoreboard players set @s eathagee 0
