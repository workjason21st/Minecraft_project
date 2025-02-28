#
execute as @s[scores={book1=1}] run tag @s add host
execute as @s[scores={book1=1}] as @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=-1}] run function rglplus:preprocess/whether
#
execute as @s[scores={book1=5}] run tellraw @a ["","\n","\n","\n","\n","\n","\n","\n","\n","\n",{"text":"●●●●●●●●●●●●●●●●●●●●●","color":"dark_red","bold":true},"\n"]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"欄位QTE跳動方式：","color":"white"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"selector":"@e[tag=rglplus,tag=bookqteghost,type=marker]","color":"gold"},{"text":"  |  ","color":"white","bold":true},{"selector":"@e[tag=rglplus,tag=bookqtekid,type=marker]","color":"gold"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"發光設定：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookglow,type=marker]","color":"gold"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"鬼的BUFF：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookbuffghost,type=marker]","color":"gold"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"孩子的BUFF：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookbuffkid,type=marker]","color":"gold"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"守屍懲罰：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookguardred,type=marker]","color":"gold"}]

execute as @s[scores={book1=5}] if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 run tellraw @a ["","\n",{"text":"顯示距離設定：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookshowdis,type=marker]","color":"white","bold":true}]
execute as @s[scores={book1=5}] if score 7-0-7-0-000700000007 rglplusteamdamage matches 1..3 run tellraw @a ["",{"text":"友方傷害：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookteamdamage,type=marker]","color":"white","bold":true}]
execute as @s[scores={book1=5}] if score 7-0-7-0-000700000007 rglplusdaynight matches 1 run tellraw @a ["",{"text":"場景設定：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookdaynight,type=marker]","color":"white","bold":true}]
execute as @s[scores={book1=5}] if score 7-0-7-0-000700000007 rglplusfalldamage matches 1 run tellraw @a ["",{"text":"墜落傷害：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookfalldamage,type=marker]","color":"white","bold":true}]
execute as @s[scores={book1=5}] if score 7-0-7-0-000700000007 rglplusautoblood matches 1 run tellraw @a ["",{"text":"自然回血：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookautoblood,type=marker]","color":"white","bold":true}]

execute as @s[scores={book1=5}] run tellraw @a ["","\n",{"text":"○○○○○○○○○○○○○○○○○○","color":"yellow","bold":true},"\n"]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"燈數使用限制：","color":"white"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"綠燈","color":"green"},{"score":{"name":"@e[tag=rglplus,tag=bookgreencount,type=marker,limit=1]","objective":"rglplusgreencount"},"color":"green","bold":true},{"selector":"@e[tag=rglplus,tag=bookgreencount,type=marker]","color":"green","bold":true},{"text":"  |  ","color":"white","bold":true},{"text":"紅燈","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=bookredcount,type=marker,limit=1]","objective":"rglplusredcount"},"color":"red","bold":true},{"selector":"@e[tag=rglplus,tag=bookredcount,type=marker]","color":"red","bold":true}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"紅燈懲罰秒數：","color":"white"},{"score":{"name":"@e[tag=rglplus,tag=bookredtime,type=marker,limit=1]","objective":"rglplusredtime"},"color":"gold"},{"selector":"@e[tag=rglplus,tag=bookredtime,type=marker]","color":"gold"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"鬼成功抓人獎勵：","color":"white"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"獲得道具","color":"white"},{"selector":"@e[tag=rglplus,tag=bookghostprop,type=marker]","color":"gold"},{"text":"  |  ","color":"white"},{"text":"增加時長","color":"white"},{"selector":"@e[tag=rglplus,tag=bookaddtime,type=marker]","color":"gold"}]

execute as @s[scores={book1=5}] run tellraw @a ["","\n",{"text":"變體模式：","color":"white"}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"自由燈","color":"dark_purple"},{"selector":"@e[tag=rglplus,tag=bookbyself,type=marker]","color":"light_purple","bold":true},{"text":"  |  ","color":"white"},{"text":"牆壁鬼","color":"dark_purple"},{"selector":"@e[tag=rglplus,tag=bookredwall,type=marker]","color":"light_purple","bold":true}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"孩子反擊武器","color":"dark_purple"},{"selector":"@e[tag=rglplus,tag=bookkidsword,type=marker]","color":"light_purple","bold":true}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"紅綠燈全體效果","color":"dark_purple"},{"selector":"@e[tag=rglplus,tag=bookalleffect,type=marker]","color":"light_purple","bold":true}]

execute as @s[scores={book1=5}] run tellraw @a ["","\n",{"text":"●●●●●●●●●●●●●●●●●●●●●","color":"dark_green","bold":true},"\n"]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"本次遊玩","color":"white","bold":true},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusround"},"color":"gold"},{"text":"回合  | ","color":"white","bold":true},{"text":"每回合遊玩","color":"white","bold":true},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplustime"},"color":"gold"},{"text":"秒","color":"white","bold":true}]
execute as @s[scores={book1=5}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @a ["",{"text":"第一回合遊玩地圖：","color":"white"},{"text":"第","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"color":"gold"},{"text":"張地圖","color":"gold"}]
execute as @s[scores={book1=5}] if entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @a ["",{"text":"第一回合遊玩地圖：","color":"white"},{"selector":"7-0000-0007-0000-000200000000","color":"gold","bold":true}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"第一回合鬼的武器：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookweapon,type=marker]","color":"gold","bold":true}]
execute as @s[scores={book1=5}] run tellraw @a ["",{"text":"當前遊玩模式：","color":"white"},{"selector":"@e[tag=rglplus,tag=bookmode,type=marker]","color":"gold","bold":true}]
execute as @s[scores={book1=5}] if score 7-0-7-0-000700000007 rglplusmode matches 4 run tellraw @a ["",{"text":"復活次數限制：","color":"white"},{"score":{"name":"@e[tag=rglplus,tag=bookkidlife,type=marker,limit=1]","objective":"rglpluskidlife"},"color":"gold","bold":true},{"selector":"@e[tag=rglplus,tag=bookkidlife,type=marker]","color":"gold","bold":true}]

execute as @s[scores={book1=5}] unless entity @a[team=spe] run tellraw @a ["","\n",{"text":"孩子方成員：","color":"blue"},{"selector":"@a[team=human]","color":"blue","bold":true},"\n",{"text":"鬼方成員：","color":"red"},{"selector":"@a[team=ghost]","color":"red","bold":true}]
execute as @s[scores={book1=5}] if entity @a[team=spe] run tellraw @a ["",{"text":"孩子方成員：","color":"blue"},{"selector":"@a[team=human]","color":"blue","bold":true},"\n",{"text":"鬼方成員：","color":"red"},{"selector":"@a[team=ghost]","color":"red","bold":true},"\n",{"text":"觀察者：","color":"gray"},{"selector":"@a[team=spe]","color":"gray","bold":true}]

#
execute as @s[scores={book1=7}] run tellraw @s ["",{"text":"✔","bold":true},{"text":" 遊戲介紹書 ","color":"light_purple"},{"text":"已發放成功","color":"white"}]
execute as @s[scores={book1=7}] run function rglplus:book/intro
#book1 time
#10=120s ... ... 20=420s 21- 22+ 29
execute as @s[scores={book1=10}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 120
execute as @s[scores={book1=11}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 150
execute as @s[scores={book1=12}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 180
execute as @s[scores={book1=13}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 210
execute as @s[scores={book1=14}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 240
execute as @s[scores={book1=15}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 270
execute as @s[scores={book1=16}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 300
execute as @s[scores={book1=17}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 330
execute as @s[scores={book1=18}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 360
execute as @s[scores={book1=19}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 390
execute as @s[scores={book1=20}] run scoreboard players set 7-0-7-0-000700000007 rglplustime 420
execute as @s[scores={book1=21}] if score 7-0-7-0-000700000007 rglplustime matches ..420 run scoreboard players remove 7-0-7-0-000700000007 rglplustime 30
execute as @s[scores={book1=22}] if score 7-0-7-0-000700000007 rglplustime matches 120.. run scoreboard players add 7-0-7-0-000700000007 rglplustime 30
execute if score 7-0-7-0-000700000007 rglplustime matches 421.. run scoreboard players set 7-0-7-0-000700000007 rglplustime 120
execute if score 7-0-7-0-000700000007 rglplustime matches ..119 run scoreboard players set 7-0-7-0-000700000007 rglplustime 420
execute as @s[scores={book1=10..22}] run tellraw @a ["",{"text":"✔","bold":true},{"text":"每回遊玩時長更改為 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplustime"},"bold":true,"color":"gold"},{"text":" 秒","color":"gold"}]
execute as @s[scores={book1=29}] run tellraw @s ["",{"text":"---點擊時間更改遊戲時長---","bold":true},"\n",{"text":"2分鐘","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 10"}},{"text":"  ","color":"green"},{"text":"2分半","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 11"}},{"text":"  ","color":"green"},{"text":"3分鐘","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 12"}},{"text":"  ","color":"green"},{"text":"3分半","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 13"}},{"text":"\n","color":"green"},{"text":"4分鐘","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 14"}},{"text":"  ","color":"green"},{"text":"4分半","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 15"}},{"text":"  ","color":"green"},{"text":"5分鐘","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 16"}},{"text":"  ","color":"green"},{"text":"5分半","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 17"}},{"text":"\n","color":"green"},{"text":"6分鐘","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 18"}},{"text":"  ","color":"green"},{"text":"6分半","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 19"}},{"text":"  ","color":"green"},{"text":"7分鐘","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 20"}}]
#book1 round
#111=1r ... ... 120=10r 121- 122+ 129
execute as @s[scores={book1=111}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 1
execute as @s[scores={book1=112}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 2
execute as @s[scores={book1=113}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 3
execute as @s[scores={book1=114}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 4
execute as @s[scores={book1=115}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 5
execute as @s[scores={book1=116}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 6
execute as @s[scores={book1=117}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 7
execute as @s[scores={book1=118}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 8
execute as @s[scores={book1=119}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 9
execute as @s[scores={book1=120}] run scoreboard players set 7-0-7-0-000700000007 rglplusround 10
execute as @s[scores={book1=121}] run scoreboard players remove 7-0-7-0-000700000007 rglplusround 1
execute as @s[scores={book1=122}] run scoreboard players add 7-0-7-0-000700000007 rglplusround 1
execute if score 7-0-7-0-000700000007 rglplusround matches 11.. run scoreboard players set 7-0-7-0-000700000007 rglplusround 1
execute if score 7-0-7-0-000700000007 rglplusround matches ..0 run scoreboard players set 7-0-7-0-000700000007 rglplusround 10
execute as @s[scores={book1=111..122}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"本次遊玩回合數更改為 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusround"},"bold":true,"color":"gold"},{"text":" 次","color":"gold"}]
execute as @s[scores={book1=129}] run tellraw @s ["",{"text":"---點擊次數更改遊玩回合數---","bold":true},"\n",{"text":"1次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 111"}},{"text":"  ","color":"green"},{"text":"2次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 112"}},{"text":"  ","color":"green"},{"text":"3次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 113"}},{"text":"  ","color":"green"},{"text":"4次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 114"}},{"text":" ","color":"green"},{"text":"5次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 115"}},{"text":"\n","color":"green"},{"text":"6次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 116"}},{"text":"  ","color":"green"},{"text":"7次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 117"}},{"text":"  ","color":"green"},{"text":"8次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 118"}},{"text":"  ","color":"green"},{"text":"9次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 119"}},{"text":" ","color":"green"},{"text":"10次","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 120"}}]
#book1 map
#200=- 211=+  211=f 212=s 213=r
execute as @s[scores={book1=200}] run scoreboard players remove 7-0-7-0-000700000007 rglplusmap 1
execute as @s[scores={book1=201}] run scoreboard players add 7-0-7-0-000700000007 rglplusmap 1
execute if score 7-0-7-0-000700000007 rglplusmap matches 4.. run scoreboard players set 7-0-7-0-000700000007 rglplusmap 1
execute if score 7-0-7-0-000700000007 rglplusmap matches ..0 run scoreboard players set 7-0-7-0-000700000007 rglplusmap 3
execute as @s[scores={book1=200..201}] if score 7-0-7-0-000700000007 rglplusmap matches 1 run data merge entity 0-0-9-0-000100000001 {CustomName:"{\"text\":\"固定\"}"}
execute as @s[scores={book1=200..201}] if score 7-0-7-0-000700000007 rglplusmap matches 2 run data merge entity 0-0-9-0-000100000001 {CustomName:"{\"text\":\"依序\"}"}
execute as @s[scores={book1=200..201}] if score 7-0-7-0-000700000007 rglplusmap matches 3 run data merge entity 0-0-9-0-000100000001 {CustomName:"{\"text\":\"隨機\"}"}
execute as @s[scores={book1=200..201}] if score 7-0-7-0-000700000007 rglplusmap matches 1 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為固定遊玩地圖","color":"gold"}]
execute as @s[scores={book1=200..201}] if score 7-0-7-0-000700000007 rglplusmap matches 2 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為遊玩依序地圖","color":"gold"}]
execute as @s[scores={book1=200..201}] if score 7-0-7-0-000700000007 rglplusmap matches 3 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為隨機遊玩地圖","color":"gold"}]
#219
execute as @s[scores={book1=219}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"---點擊更改當前地圖---","bold":true},"\n",{"text":"第1張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 221"}},{"text":" ","color":"green"},{"text":"第2張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 222"}},{"text":" ","color":"green"},{"text":"第3張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 223"}},{"text":"\n","color":"green"},{"text":"第4張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 224"}},{"text":" ","color":"green"},{"text":"第5張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 225"}},{"text":" ","color":"green"},{"text":"第6張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 226"}},{"text":"\n","color":"green"},{"text":"第7張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 227"}},{"text":" ","color":"green"},{"text":"第8張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 228"}},{"text":" ","color":"green"},{"text":"第9張圖","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 229"}}]
execute as @s[scores={book1=219}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"---點擊更改當前地圖---","bold":true},"\n",{"text":"兒童公園","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 221"}},{"text":"  ","color":"green"},{"text":"韓國海港城","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 222"}},{"text":"  ","color":"green"},{"text":"法蘭克福","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 223"}},{"text":"\n","color":"green"},{"text":"沙漠小鎮","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 224"}},{"text":"  ","color":"green"},{"text":"洞穴基地","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 225"}},{"text":"  ","color":"green"},{"text":"英格蘭高中","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 226"}},{"text":"\n","color":"green"},{"text":"現代社區","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 227"}},{"text":"  ","color":"green"},{"text":"印加古城","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 228"}},{"text":" ","color":"green"}]
#221~229=select
execute as @s[scores={book1=221}] run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 1
execute as @s[scores={book1=222}] if entity 20000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 2
execute as @s[scores={book1=223}] if entity 30000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 3
execute as @s[scores={book1=224}] if entity 40000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 4
execute as @s[scores={book1=225}] if entity 50000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 5
execute as @s[scores={book1=226}] if entity 60000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 6
execute as @s[scores={book1=227}] if entity 70000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 7
execute as @s[scores={book1=228}] if entity 80000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 8
execute as @s[scores={book1=229}] if entity 90000007-0-7-0-000700000007 run scoreboard players set 7-0-7-0-000700000007 rglplusplaymap 9
execute as @s[scores={book1=221}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=222}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 20000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=223}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 30000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=224}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 40000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=225}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 50000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=226}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 60000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=227}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 70000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=228}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 80000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=229}] unless entity @e[type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] if entity 90000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為第 ","color":"gold"},{"score":{"name":"7-0000-0007-0000-000700000007","objective":"rglplusplaymap"},"bold":true,"color":"gold"},{"text":" 張地圖","color":"gold"}]
execute as @s[scores={book1=222}] unless entity 20000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]
execute as @s[scores={book1=223}] unless entity 30000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]
execute as @s[scores={book1=224}] unless entity 40000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]
execute as @s[scores={book1=225}] unless entity 50000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]
execute as @s[scores={book1=226}] unless entity 60000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]
execute as @s[scores={book1=227}] unless entity 70000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]
execute as @s[scores={book1=228}] unless entity 80000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]
execute as @s[scores={book1=229}] unless entity 90000007-0-7-0-000700000007 run tellraw @s ["",{"text":"✘","bold":true},{"text":"尚未設置此張地圖重生點,無法選擇","color":"red"}]

#
execute as @s[scores={book1=221}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"10000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
execute as @s[scores={book1=222}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"20000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
execute as @s[scores={book1=223}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"30000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
execute as @s[scores={book1=224}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"40000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
execute as @s[scores={book1=225}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"50000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
execute as @s[scores={book1=226}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"60000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
execute as @s[scores={book1=227}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"70000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
execute as @s[scores={book1=228}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前地圖更改為 ","color":"gold"},{"selector":"80000007-0-7-0-000700000007","bold":true,"color":"gold"},{"text":" 場地","color":"gold"}]
#
execute as @s[scores={book1=221}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"兒童公園\"}"}
execute as @s[scores={book1=222}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"韓國海港城\"}"}
execute as @s[scores={book1=223}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"法蘭克福\"}"}
execute as @s[scores={book1=224}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"沙漠小鎮\"}"}
execute as @s[scores={book1=225}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"洞穴基地\"}"}
execute as @s[scores={book1=226}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"英格蘭高中\"}"}
execute as @s[scores={book1=227}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"現代社區\"}"}
execute as @s[scores={book1=228}] if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,tag=rgl1.0] run data merge entity 00000007-0000-0007-0000-000200000000 {CustomName:"{\"text\":\"印加古城\"}"}

#book1 sword
#51 52
execute as @s[scores={book1=51}] run scoreboard players remove 7-0-7-0-000700000007 rglplussword 1
execute as @s[scores={book1=52}] run scoreboard players add 7-0-7-0-000700000007 rglplussword 1
execute if score 7-0-7-0-000700000007 rglplussword matches 4.. run scoreboard players set 7-0-7-0-000700000007 rglplussword 1
execute if score 7-0-7-0-000700000007 rglplussword matches ..0 run scoreboard players set 7-0-7-0-000700000007 rglplussword 3
execute as @s[scores={book1=51..52}] if score 7-0-7-0-000700000007 rglplussword matches 1 run data merge entity 0-0-9-0-000100000003 {CustomName:"{\"text\":\"固定\"}"}
execute as @s[scores={book1=51..52}] if score 7-0-7-0-000700000007 rglplussword matches 2 run data merge entity 0-0-9-0-000100000003 {CustomName:"{\"text\":\"依序\"}"}
execute as @s[scores={book1=51..52}] if score 7-0-7-0-000700000007 rglplussword matches 3 run data merge entity 0-0-9-0-000100000003 {CustomName:"{\"text\":\"隨機\"}"}
execute as @s[scores={book1=51..52}] if score 7-0-7-0-000700000007 rglplussword matches 1 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為鬼使用固定武器","color":"gold"}]
execute as @s[scores={book1=51..52}] if score 7-0-7-0-000700000007 rglplussword matches 2 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為鬼依順序選擇武器","color":"gold"}]
execute as @s[scores={book1=51..52}] if score 7-0-7-0-000700000007 rglplussword matches 3 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為隨機選擇鬼的武器","color":"gold"}]
#book1 weapon
#59 60
execute as @s[scores={book1=59}] run tellraw @s ["",{"text":"---點擊選項更改鬼的武器---","bold":true},"\n",{"text":"A. ","color":"white"},{"text":"骨頭(4傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 61"}},{"text":"   ","color":"green"},{"text":"B. ","color":"white"},{"text":"鐵劍(9傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 62"}},{"text":"     ","color":"green"},{"text":"C. ","color":"white"},{"text":"金斧(13傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 63"}},{"text":"\n","color":"green"},{"text":"D. ","color":"white"},{"text":"鑽劍(17傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 64"}},{"text":"  ","color":"green"},{"text":"E. ","color":"white"},{"text":"獄髓斧(20傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 65"}},{"text":"\n","color":"green"},{"text":"F. ","color":"white"},{"text":"三叉戟(近距5傷 遠距8傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 66"}},{"text":"\n","color":"green"},{"text":"G. ","color":"white"},{"text":"打火石(燃燒4秒 共8傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 67"}},{"text":"\n","color":"green"},{"text":"H. ","color":"white"},{"text":"凌遲經驗瓶(每升一等 4傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 68"}},{"text":"\n","color":"green"},{"text":"I. ","color":"white"},{"text":"致命經驗瓶(升至五等 直接死亡)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 69"}},{"text":"\n","color":"green"},{"text":"J. ","color":"white"},{"text":"緩速弓(5傷 4秒緩速)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 70"}},{"text":"\n","color":"green"},{"text":"K. ","color":"white"},{"text":"煙火弩(4~6範圍傷 快速上弦V)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 71"}},{"text":"\n","color":"green"},{"text":"L. ","color":"white"},{"text":"超長鎖鏈(攻擊距離15格 2傷)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 72"}},{"text":"\n","color":"green"},{"text":"M. ","color":"white"},{"text":"重錘(基礎6傷 風爆II)","color":"green","clickEvent":{"action":"run_command","value":"/trigger book1 set 73"}}]

execute as @s[scores={book1=60}] run scoreboard players add 7-0-7-0-000700000007 rglplusweapon 1
execute if score 7-0-7-0-000700000007 rglplusweapon matches 14.. run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 1
execute as @s[scores={book1=61}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 1
execute as @s[scores={book1=62}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 2
execute as @s[scores={book1=63}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 3
execute as @s[scores={book1=64}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 4
execute as @s[scores={book1=65}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 5
execute as @s[scores={book1=66}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 6
execute as @s[scores={book1=67}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 7
execute as @s[scores={book1=68}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 8
execute as @s[scores={book1=69}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 9
execute as @s[scores={book1=70}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 10
execute as @s[scores={book1=71}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 11
execute as @s[scores={book1=72}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 12
execute as @s[scores={book1=73}] run scoreboard players set 7-0-7-0-000700000007 rglplusweapon 13
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 1 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"骨頭\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 2 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"鐵劍\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 3 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"金斧\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 4 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"鑽劍\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 5 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"獄髓斧\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 6 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"三叉戟\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 7 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"打火石\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 8 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"凌遲經驗瓶\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 9 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"致命經驗瓶\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 10 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"緩速弓\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 11 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"煙火弩\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 12 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"超長鎖鏈\"}"}
execute as @s[scores={book1=60..80}] if score 7-0-7-0-000700000007 rglplusweapon matches 13 run data merge entity 0-0-9-0-000100000004 {CustomName:"{\"text\":\"重錘\"}"}
execute as @s[scores={book1=60..80}] run tellraw @a ["",{"text":"✔","bold":true},{"text":"鬼的武器更改為","color":"gold"},{"selector":"@e[tag=rglplus,tag=bookweapon,type=marker]","color":"gold"}]
#book1 ghost
#300-301+ 311=f 312=s 313=r
execute as @s[scores={book1=300}] run scoreboard players remove 7-0-7-0-000700000007 rglplusghost 1
execute as @s[scores={book1=301}] run scoreboard players add 7-0-7-0-000700000007 rglplusghost 1
execute if score 7-0-7-0-000700000007 rglplusghost matches 8.. run scoreboard players set 7-0-7-0-000700000007 rglplusghost 1
execute if score 7-0-7-0-000700000007 rglplusghost matches ..0 run scoreboard players set 7-0-7-0-000700000007 rglplusghost 7
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 1 run data merge entity 0-0-9-0-000100000002 {CustomName:"{\"text\":\"固定\"}"}
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 2 run data merge entity 0-0-9-0-000100000002 {CustomName:"{\"text\":\"依序1鬼\"}"}
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 3 run data merge entity 0-0-9-0-000100000002 {CustomName:"{\"text\":\"依序2鬼\"}"}
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 4 run data merge entity 0-0-9-0-000100000002 {CustomName:"{\"text\":\"依序3鬼\"}"}
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 5 run data merge entity 0-0-9-0-000100000002 {CustomName:"{\"text\":\"隨機1鬼\"}"}
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 6 run data merge entity 0-0-9-0-000100000002 {CustomName:"{\"text\":\"隨機2鬼\"}"}
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 7 run data merge entity 0-0-9-0-000100000002 {CustomName:"{\"text\":\"隨機3鬼\"}"}
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 1 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為固定相同玩家當鬼","color":"gold"}]
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 2 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為依順序選擇1個玩家當鬼","color":"gold"}]
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 3 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為依順序選擇2個玩家當鬼","color":"gold"}]
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 4 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為依順序選擇3個玩家當鬼","color":"gold"}]
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 5 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為隨機選擇1個鬼遊玩","color":"gold"}]
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 6 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為隨機選擇2個鬼遊玩","color":"gold"}]
execute as @s[scores={book1=300..301}] if score 7-0-7-0-000700000007 rglplusghost matches 7 run tellraw @s ["",{"text":"✔","bold":true},{"text":"更改為隨機選擇3個鬼遊玩","color":"gold"}]

#分隊 319
execute as @s[scores={book1=319}] unless entity @a[team=spe] run tellraw @s ["","\n",{"text":"  ↓   目前分隊情況   ↓  ","bold":true,"clickEvent":{"action":"run_command","value":"/trigger book1 set 319"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊重新查看分隊情況","bold":true,"color":"white"}]}},"\n",{"text":"孩子方成員：","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger bookteam set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊更改自身的分隊","bold":true,"color":"white"}]}},{"selector":"@a[team=human]","color":"blue"},"\n",{"text":">全部人加入孩子方<","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger bookteam set 99"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊後全部人加入到孩子方","bold":true,"color":"white"}]}},"\n","\n",{"text":"鬼方成員：","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger bookteam set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊更改自身的分隊","bold":true,"color":"white"}]}},{"selector":"@a[team=ghost]","color":"red"},"\n",{"text":">隨機一人加入鬼方<","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger bookteam set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊後隨機一個孩子加入到鬼方","bold":true,"color":"white"}]}},"\n",{"text":">隨機兩人加入鬼方<","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger bookteam set 22"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊後隨機兩個孩子加入到鬼方","bold":true,"color":"white"}]}},"\n","\n",{"text":">給所有人自選隊伍書<","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger bookteam set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"發放給所有人隊伍自選書","bold":true,"color":"white"}]}}]

execute as @s[scores={book1=319}] if entity @a[team=spe] run tellraw @s ["","\n",{"text":"  ↓   目前分隊情況   ↓  ","bold":true,"clickEvent":{"action":"run_command","value":"/trigger book1 set 319"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊重新查看分隊情況","bold":true,"color":"white"}]}},"\n",{"text":"孩子方成員：","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger bookteam set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊更改自身的分隊","bold":true,"color":"white"}]}},{"selector":"@a[team=human]","color":"blue"},"\n",{"text":">全部人加入孩子方<","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger bookteam set 99"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊後全部人加入到孩子方","bold":true,"color":"white"}]}},"\n","\n",{"text":"鬼方成員：","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger bookteam set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊更改自身的分隊","bold":true,"color":"white"}]}},{"selector":"@a[team=ghost]","color":"red"},"\n",{"text":">隨機一人加入鬼方<","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger bookteam set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊後隨機一個孩子加入到鬼方","bold":true,"color":"white"}]}},"\n",{"text":">隨機兩人加入鬼方<","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger bookteam set 22"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊後隨機兩個孩子加入到鬼方","bold":true,"color":"white"}]}},"\n","\n",{"text":"觀察者：","color":"black","clickEvent":{"action":"run_command","value":"/trigger bookteam set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"點擊更改自身的分隊","bold":true,"color":"white"}]}},{"selector":"@a[team=spe]","color":"black"},"\n",{"text":">給所有人自選隊伍書<","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger bookteam set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"發放給所有人隊伍自選書","bold":true,"color":"white"}]}}]
#execute as @s[scores={book1=1..}] run trigger book1 set 0
