#execute as @s[scores={random00=2}] run scoreboard players set 綠寶石 bingolist 10
#execute as @s[scores={random00=4}] run scoreboard players set 黑曜石 bingolist 10
#execute as @s[scores={random00=5}] run scoreboard players set 哭泣的黑曜石 bingolist 10
#execute as @s[scores={random00=7}] run scoreboard players set 空白地圖 bingolist 10
#execute as @s[scores={random00=11}] run scoreboard players set 蛋糕 bingolist 10
#execute as @s[scores={random00=12}] run scoreboard players set 黃金製馬鎧 bingolist 10

execute as @s[scores={random00=1}] run scoreboard players set 附魔金蘋果 bingolist 10
execute as @s[scores={random00=2}] run scoreboard players set 黏性活塞 bingolist 10
execute as @s[scores={random00=3}] run scoreboard players set 附魔台 bingolist 10
execute as @s[scores={random00=4}] run scoreboard players set 不死圖騰 bingolist 10
execute as @s[scores={random00=5}] run scoreboard players set 海靈核心 bingolist 10
execute as @s[scores={random00=6}] run scoreboard players set 鱗甲 bingolist 10

execute as @s[scores={random00=7}] run scoreboard players set 鑽石製馬鎧 bingolist 10
execute as @s[scores={random00=8}] run scoreboard players set 鑽石頭盔 bingolist 10
execute as @s[scores={random00=9}] run scoreboard players set 鑽石胸甲 bingolist 10
execute as @s[scores={random00=10}] run scoreboard players set 鑽石護腿 bingolist 10
execute as @s[scores={random00=11}] run scoreboard players set 鑽石靴子 bingolist 10
execute as @s[scores={random00=12}] run scoreboard players set 粉雪桶 bingolist 10
execute as @s[scores={random00=13}] run scoreboard players set 蜂蜜塊 bingolist 10
#地獄
execute as @s[scores={random00=14,openworld=1}] run scoreboard players set 重生錨 bingolist 10
execute as @s[scores={random00=15,openworld=1}] run scoreboard players set 獄髓碎片 bingolist 10
execute as @s[scores={random00=16,openworld=1}] run scoreboard players set 磁石 bingolist 10
#終
execute as @s[scores={random00=17,openworld=2}] run scoreboard players set 鞘翅 bingolist 10
execute as @s[scores={random00=18,openworld=2}] run scoreboard players set 界伏盒 bingolist 10
execute as @s[scores={random00=19,openworld=2}] run scoreboard players set 龍首 bingolist 10

#execute if entity @s[tag=lockkouki,scores={random00=16,bingotarget=10}] run scoreboard players set @s random00 -2
execute as @s[scores={random00=1..13,openworld=0}] run scoreboard players operation @e[tag=random10] random00 = @s random00
execute as @s[scores={random00=1..13,openworld=0}] run scoreboard players add @s bingotarget 1

execute as @s[scores={random00=1..16,openworld=1}] run scoreboard players operation @e[tag=random10] random00 = @s random00
execute as @s[scores={random00=1..16,openworld=1}] run scoreboard players add @s bingotarget 1
execute as @s[scores={random00=1..19,openworld=2}] run scoreboard players operation @e[tag=random10] random00 = @s random00
execute as @s[scores={random00=1..19,openworld=2}] run scoreboard players add @s bingotarget 1

execute as @s[scores={random00=0..99}] run scoreboard players set @s random00 -2
execute as @e[tag=random10] if score @s random00 matches 1 run data merge entity @s {CustomName:"{\"text\":\"附魔金蘋果\"}"}
execute as @e[tag=random10] if score @s random00 matches 2 run data merge entity @s {CustomName:"{\"text\":\"黏性活塞\"}"}
execute as @e[tag=random10] if score @s random00 matches 3 run data merge entity @s {CustomName:"{\"text\":\"附魔台\"}"}
execute as @e[tag=random10] if score @s random00 matches 4 run data merge entity @s {CustomName:"{\"text\":\"不死圖騰\"}"}
execute as @e[tag=random10] if score @s random00 matches 5 run data merge entity @s {CustomName:"{\"text\":\"海靈核心\"}"}
execute as @e[tag=random10] if score @s random00 matches 6 run data merge entity @s {CustomName:"{\"text\":\"鱗甲\"}"}
execute as @e[tag=random10] if score @s random00 matches 7 run data merge entity @s {CustomName:"{\"text\":\"鑽石製馬鎧\"}"}
execute as @e[tag=random10] if score @s random00 matches 8 run data merge entity @s {CustomName:"{\"text\":\"鑽石頭盔\"}"}
execute as @e[tag=random10] if score @s random00 matches 9 run data merge entity @s {CustomName:"{\"text\":\"鑽石胸甲\"}"}
execute as @e[tag=random10] if score @s random00 matches 10 run data merge entity @s {CustomName:"{\"text\":\"鑽石護腿\"}"}
execute as @e[tag=random10] if score @s random00 matches 11 run data merge entity @s {CustomName:"{\"text\":\"鑽石靴子\"}"}
execute as @e[tag=random10] if score @s random00 matches 12 run data merge entity @s {CustomName:"{\"text\":\"粉雪桶\"}"}
execute as @e[tag=random10] if score @s random00 matches 13 run data merge entity @s {CustomName:"{\"text\":\"蜂蜜塊\"}"}
execute as @e[tag=random10] if score @s random00 matches 14 run data merge entity @s {CustomName:"{\"text\":\"重生錨\"}"}
execute as @e[tag=random10] if score @s random00 matches 15 run data merge entity @s {CustomName:"{\"text\":\"獄髓碎片\"}"}
execute as @e[tag=random10] if score @s random00 matches 16 run data merge entity @s {CustomName:"{\"text\":\"磁石\"}"}
execute as @e[tag=random10] if score @s random00 matches 17 run data merge entity @s {CustomName:"{\"text\":\"鞘翅\"}"}
execute as @e[tag=random10] if score @s random00 matches 18 run data merge entity @s {CustomName:"{\"text\":\"界伏盒\"}"}
execute as @e[tag=random10] if score @s random00 matches 19 run data merge entity @s {CustomName:"{\"text\":\"龍首\"}"}
