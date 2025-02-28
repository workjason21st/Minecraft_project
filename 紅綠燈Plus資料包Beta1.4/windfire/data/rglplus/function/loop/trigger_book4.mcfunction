#book4 qte
#9=select 10=change 11~14=
#武器 道具
execute as @s[scores={book4=9}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊選項更改欄位變化---","bold":true},"\n",{"text":"超級鬼：","clickEvent":{"action":"run_command","value":"/trigger book4 set 11"},"bold":true,"color":"blue"},{"text":"系統不會亂動位置","clickEvent":{"action":"run_command","value":"/trigger book4 set 11"},"color":"white"},"\n",{"text":"老手鬼：","clickEvent":{"action":"run_command","value":"/trigger book4 set 12"},"color":"blue","bold":true},{"text":"揮擊後換到1~5格中","clickEvent":{"action":"run_command","value":"/trigger book4 set 12"},"color":"white"},"\n",{"text":"新手鬼：","clickEvent":{"action":"run_command","value":"/trigger book4 set 13"},"color":"blue","bold":true},{"text":"武器在1~5格間亂換","clickEvent":{"action":"run_command","value":"/trigger book4 set 13"},"color":"white"},"\n",{"text":"不像鬼：","clickEvent":{"action":"run_command","value":"/trigger book4 set 14"},"bold":true,"color":"blue"},{"text":"武器在1~8格間亂換","clickEvent":{"action":"run_command","value":"/trigger book4 set 14"},"color":"white"}]
execute as @s[scores={book4=11}] run scoreboard players set 7-0-7-0-000700000007 rglplusqteghost 1
execute as @s[scores={book4=12}] run scoreboard players set 7-0-7-0-000700000007 rglplusqteghost 2
execute as @s[scores={book4=13}] run scoreboard players set 7-0-7-0-000700000007 rglplusqteghost 3
execute as @s[scores={book4=14}] run scoreboard players set 7-0-7-0-000700000007 rglplusqteghost 4
execute as @s[scores={book4=10}] run scoreboard players add 7-0-7-0-000700000007 rglplusqteghost 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusqteghost=5..}] rglplusqteghost 1
execute as @s[scores={book4=10..14}] if score 7-0-7-0-000700000007 rglplusqteghost matches 1 run data merge entity 0-0-9-0-000400000001 {CustomName:"{\"text\":\"超級鬼\"}"}
execute as @s[scores={book4=10..14}] if score 7-0-7-0-000700000007 rglplusqteghost matches 2 run data merge entity 0-0-9-0-000400000001 {CustomName:"{\"text\":\"老手鬼\"}"}
execute as @s[scores={book4=10..14}] if score 7-0-7-0-000700000007 rglplusqteghost matches 3 run data merge entity 0-0-9-0-000400000001 {CustomName:"{\"text\":\"新手鬼\"}"}
execute as @s[scores={book4=10..14}] if score 7-0-7-0-000700000007 rglplusqteghost matches 4 run data merge entity 0-0-9-0-000400000001 {CustomName:"{\"text\":\"不像鬼\"}"}
execute as @s[scores={book4=10..14}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前鬼的欄位更改為","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookqteghost,type=marker]","color":"yellow"}]

#19=select 20=change 21~24=
#綠 紅/白 武器
execute as @s[scores={book4=19}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊選項更改欄位變化---","bold":true},"\n",{"text":"正常世界：","clickEvent":{"action":"run_command","value":"/trigger book4 set 21"},"bold":true,"color":"blue"},{"text":"系統不會亂動位置","clickEvent":{"action":"run_command","value":"/trigger book4 set 21"},"color":"white"},"\n",{"text":"小惡世界：","clickEvent":{"action":"run_command","value":"/trigger book4 set 22"},"color":"blue","bold":true},{"text":"綠燈","clickEvent":{"action":"run_command","value":"/trigger book4 set 22"},"color":"green"},{"text":"在2~5格間亂換","clickEvent":{"action":"run_command","value":"/trigger book4 set 22"},"color":"white"},"\n",{"text":"壞蛋世界：","clickEvent":{"action":"run_command","value":"/trigger book4 set 23"},"bold":true,"color":"blue"},{"text":"綠燈","clickEvent":{"action":"run_command","value":"/trigger book4 set 23"},"color":"green"},{"text":"在3~8格間亂換","clickEvent":{"action":"run_command","value":"/trigger book4 set 23"},"color":"white"},"\n",{"text":"邪惡世界：","clickEvent":{"action":"run_command","value":"/trigger book4 set 24"},"color":"blue","bold":true},{"text":"紅燈","clickEvent":{"action":"run_command","value":"/trigger book4 set 24"},"color":"red"},{"text":"在2~5格間亂換","clickEvent":{"action":"run_command","value":"/trigger book4 set 24"},"color":"white"},"\n",{"text":"惡魔世界：","clickEvent":{"action":"run_command","value":"/trigger book4 set 25"},"bold":true,"color":"blue"},{"text":"紅燈","clickEvent":{"action":"run_command","value":"/trigger book4 set 25"},"color":"red"},{"text":"在3~8格間亂換","clickEvent":{"action":"run_command","value":"/trigger book4 set 25"},"color":"white"},"\n",{"text":"隨機世界：","clickEvent":{"action":"run_command","value":"/trigger book4 set 26"},"bold":true,"color":"blue"},{"text":"紅燈和綠燈在2~8格亂換","clickEvent":{"action":"run_command","value":"/trigger book4 set 26"},"color":"white"}]
execute as @s[scores={book4=21}] run scoreboard players set 7-0-7-0-000700000007 rglplusqtekid 1
execute as @s[scores={book4=22}] run scoreboard players set 7-0-7-0-000700000007 rglplusqtekid 2
execute as @s[scores={book4=23}] run scoreboard players set 7-0-7-0-000700000007 rglplusqtekid 3
execute as @s[scores={book4=24}] run scoreboard players set 7-0-7-0-000700000007 rglplusqtekid 4
execute as @s[scores={book4=25}] run scoreboard players set 7-0-7-0-000700000007 rglplusqtekid 5
execute as @s[scores={book4=26}] run scoreboard players set 7-0-7-0-000700000007 rglplusqtekid 6
execute as @s[scores={book4=20}] run scoreboard players add 7-0-7-0-000700000007 rglplusqtekid 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusqtekid=7..}] rglplusqtekid 1
execute as @s[scores={book4=20..29}] if score 7-0-7-0-000700000007 rglplusqtekid matches 1 run data merge entity 0-0-9-0-000400000002 {CustomName:"{\"text\":\"正常世界\"}"}
execute as @s[scores={book4=20..29}] if score 7-0-7-0-000700000007 rglplusqtekid matches 2 run data merge entity 0-0-9-0-000400000002 {CustomName:"{\"text\":\"小惡世界\"}"}
execute as @s[scores={book4=20..29}] if score 7-0-7-0-000700000007 rglplusqtekid matches 3 run data merge entity 0-0-9-0-000400000002 {CustomName:"{\"text\":\"壞蛋世界\"}"}
execute as @s[scores={book4=20..29}] if score 7-0-7-0-000700000007 rglplusqtekid matches 4 run data merge entity 0-0-9-0-000400000002 {CustomName:"{\"text\":\"邪惡世界\"}"}
execute as @s[scores={book4=20..29}] if score 7-0-7-0-000700000007 rglplusqtekid matches 5 run data merge entity 0-0-9-0-000400000002 {CustomName:"{\"text\":\"惡魔世界\"}"}
execute as @s[scores={book4=20..29}] if score 7-0-7-0-000700000007 rglplusqtekid matches 6 run data merge entity 0-0-9-0-000400000002 {CustomName:"{\"text\":\"隨機世界\"}"}
execute as @s[scores={book4=20..29}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前孩子的欄位更改為","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookqtekid,type=marker]","color":"yellow"}]

#xporb 59=select 
#61~63=
execute as @s[scores={book4=58}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊選項更改經驗球的處理---","bold":true},"\n",{"text":"不會清除：","clickEvent":{"action":"run_command","value":"/trigger book4 set 60"},"bold":true,"color":"dark_aqua"},{"text":"系統不會清除地板的經驗球","clickEvent":{"action":"run_command","value":"/trigger book4 set 60"},"color":"white"},"\n",{"text":"五秒清除：","clickEvent":{"action":"run_command","value":"/trigger book4 set 61"},"color":"dark_aqua","bold":true},{"text":"系統會清除存在5秒的經驗球","clickEvent":{"action":"run_command","value":"/trigger book4 set 61"},"color":"white"},"\n",{"text":"十秒清除：","clickEvent":{"action":"run_command","value":"/trigger book4 set 62"},"color":"dark_aqua","bold":true},{"text":"系統會清除存在10秒的經驗球","clickEvent":{"action":"run_command","value":"/trigger book4 set 62"},"color":"white"},"\n",{"text":"直接清除：","clickEvent":{"action":"run_command","value":"/trigger book4 set 63"},"color":"dark_aqua","bold":true},{"text":"系統會清除所有地板上的經驗球","clickEvent":{"action":"run_command","value":"/trigger book4 set 63"},"color":"white"}]
execute as @s[scores={book4=59}] run scoreboard players add 7-0-7-0-000700000007 rglplusclearxporb 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusclearxporb=4..}] rglplusclearxporb 0
execute as @s[scores={book4=60}] run scoreboard players set 7-0-7-0-000700000007 rglplusclearxporb 0
execute as @s[scores={book4=61}] run scoreboard players set 7-0-7-0-000700000007 rglplusclearxporb 1
execute as @s[scores={book4=62}] run scoreboard players set 7-0-7-0-000700000007 rglplusclearxporb 2
execute as @s[scores={book4=63}] run scoreboard players set 7-0-7-0-000700000007 rglplusclearxporb 3
execute as @s[scores={book4=59..63}] if score 7-0-7-0-000700000007 rglplusclearxporb matches 0 run data merge entity 0-0-9-0-00040000000d {CustomName:"{\"text\":\"不會清除\"}"}
execute as @s[scores={book4=59..63}] if score 7-0-7-0-000700000007 rglplusclearxporb matches 1 run data merge entity 0-0-9-0-00040000000d {CustomName:"{\"text\":\"五秒清除\"}"}
execute as @s[scores={book4=59..63}] if score 7-0-7-0-000700000007 rglplusclearxporb matches 2 run data merge entity 0-0-9-0-00040000000d {CustomName:"{\"text\":\"十秒清除\"}"}
execute as @s[scores={book4=59..63}] if score 7-0-7-0-000700000007 rglplusclearxporb matches 3 run data merge entity 0-0-9-0-00040000000d {CustomName:"{\"text\":\"直接清除\"}"}
execute as @s[scores={book4=60..63}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前經驗球的處理更改為：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookclearxporb,type=marker]","color":"yellow"}]


#book4 buff
#100
execute as @s[scores={book4=100}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊選項更改鬼的BUFF---","bold":true},"\n",{"text":"1.加速１","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 111"}},{"text":"   ","color":"aqua"},{"text":"2.加速２","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 112"}},{"text":"\n","color":"aqua"},{"text":"3.加速３","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 113"}},{"text":"   ","color":"aqua"},{"text":"4.跳躍提升２","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 114"}},{"text":"\n","color":"aqua"},{"text":"5.加速２、跳躍提升２","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 115"}},{"text":"\n","color":"aqua"},{"text":"6.人物隱形，武器現形","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 116"}},{"text":"\n","color":"aqua"},{"text":"7.小人族","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 117"}},{"text":"\n","color":"aqua"},{"text":"8.小人族 & 加速３","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 118"}},{"text":"\n","color":"aqua"},{"text":"9.巨人化 & 血量加4❤","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 119"}},{"text":"\n","color":"aqua"},{"text":"10.血量加4❤","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 120"}}]
#101-102+
execute as @s[scores={book4=101}] run scoreboard players remove 7-0-7-0-000700000007 rglplusbuffghost 1
execute as @s[scores={book4=102}] run scoreboard players add 7-0-7-0-000700000007 rglplusbuffghost 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusbuffghost=..0}] rglplusbuffghost 10
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusbuffghost=11..}] rglplusbuffghost 1
execute as @s[scores={book4=111}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 1
execute as @s[scores={book4=112}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 2
execute as @s[scores={book4=113}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 3
execute as @s[scores={book4=114}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 4
execute as @s[scores={book4=115}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 5
execute as @s[scores={book4=116}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 6
execute as @s[scores={book4=117}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 7
execute as @s[scores={book4=118}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 8
execute as @s[scores={book4=119}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 9
execute as @s[scores={book4=120}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffghost 10
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 1 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"加速１\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 2 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"加速２\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 3 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"加速３\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 4 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"跳躍提升２\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 5 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"加速２、跳躍提升２\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 6 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"人物隱形，武器現形\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 7 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"小人族\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 8 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"小人族 & 加速３\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 9 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"巨人化 & 血量加4❤\"}"}
execute as @s[scores={book4=101..130}] if score 7-0-7-0-000700000007 rglplusbuffghost matches 10 run data merge entity 0-0-9-0-000400000003 {CustomName:"{\"text\":\"血量加4❤\"}"}
execute as @s[scores={book4=101..130}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前鬼的BUFF更改為","color":"yellow"},{"score":{"name":"7-0-7-0-000700000007","objective":"rglplusbuffghost"},"color":"yellow"},{"text":"：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookbuffghost,type=marker]","color":"yellow"}]

#200
execute as @s[scores={book4=200}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊選項更改孩子的BUFF---","bold":true},"\n",{"text":"1.無","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 211"}},{"text":"   ","color":"aqua"},{"text":"2.鬼會發光","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 212"}},{"text":"\n","color":"aqua"},{"text":"3.鬼揮刀緩速５","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 213"}},{"text":"   ","color":"aqua"},{"text":"4.水下呼吸３","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 214"}},{"text":"\n","color":"aqua"},{"text":"5.小人族","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 215"}},{"text":"\n","color":"aqua"},{"text":"6.小人族 & 蹲下速度不變","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 216"}},{"text":"\n","color":"aqua"},{"text":"7.極小人族","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 217"}},{"text":"\n","color":"aqua"},{"text":"8.極小人族 & 蹲下速度不變","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 218"}}]
#201-202+
execute as @s[scores={book4=201}] run scoreboard players remove 7-0-7-0-000700000007 rglplusbuffkid 1
execute as @s[scores={book4=202}] run scoreboard players add 7-0-7-0-000700000007 rglplusbuffkid 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusbuffkid=..0}] rglplusbuffkid 8
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusbuffkid=9..}] rglplusbuffkid 1
execute as @s[scores={book4=211}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 1
execute as @s[scores={book4=212}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 2
execute as @s[scores={book4=213}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 3
execute as @s[scores={book4=214}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 4
execute as @s[scores={book4=215}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 5
execute as @s[scores={book4=216}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 6
execute as @s[scores={book4=217}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 7
execute as @s[scores={book4=218}] run scoreboard players set 7-0-7-0-000700000007 rglplusbuffkid 8
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 1 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"無\"}"}
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 2 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"鬼會發光\"}"}
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 3 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"鬼揮刀緩速５\"}"}
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 4 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"水下呼吸３\"}"}
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 5 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"小人族\"}"}
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 6 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"小人族 & 蹲走速不變\"}"}
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 7 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"極小人\"}"}
execute as @s[scores={book4=201..220}] if score 7-0-7-0-000700000007 rglplusbuffkid matches 8 run data merge entity 0-0-9-0-000400000004 {CustomName:"{\"text\":\"極小人 & 蹲走速不變\"}"}
execute as @s[scores={book4=201..220}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前孩子的BUFF更改為","color":"yellow"},{"score":{"name":"7-0-7-0-000700000007","objective":"rglplusbuffkid"},"color":"yellow"},{"text":"：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookbuffkid,type=marker]","color":"yellow"}]

#book4 page2
#300
execute as @s[scores={book4=300}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊更改孩子每幾秒鐘要接近鬼--","bold":true},"\n",{"text":"10","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 311"}},{"text":"  ","color":"aqua"},{"text":"15","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 312"}},{"text":"  ","color":"aqua"},{"text":"20","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 313"}},{"text":"  ","color":"aqua"},{"text":"25","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 314"}},{"text":"\n","color":"aqua"},{"text":"30","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 315"}},{"text":"  ","color":"aqua"},{"text":"35","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 316"}},{"text":"  ","color":"aqua"},{"text":"40","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 317"}},{"text":"  ","color":"aqua"},{"text":"45","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 318"}},{"text":"\n","color":"aqua"},{"text":"50","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 319"}},{"text":"  ","color":"aqua"},{"text":"55","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 320"}},{"text":"  ","color":"aqua"},{"text":"60","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 321"}}]
#301-302+
execute as @s[scores={book4=301}] run scoreboard players remove 7-0-7-0-000700000007 rglplustouchtime 5
execute as @s[scores={book4=302}] run scoreboard players add 7-0-7-0-000700000007 rglplustouchtime 5
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplustouchtime=..5}] rglplustouchtime 60
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplustouchtime=65..}] rglplustouchtime 10
execute as @s[scores={book4=311}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 10
execute as @s[scores={book4=312}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 15
execute as @s[scores={book4=313}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 20
execute as @s[scores={book4=314}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 25
execute as @s[scores={book4=315}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 30
execute as @s[scores={book4=316}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 35
execute as @s[scores={book4=317}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 40
execute as @s[scores={book4=318}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 45
execute as @s[scores={book4=319}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 50
execute as @s[scores={book4=320}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 55
execute as @s[scores={book4=321}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchtime 60
execute as @s[scores={book4=301..321}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前接近鬼的時間更改為","color":"yellow"},{"score":{"name":"7-0-7-0-000700000007","objective":"rglplustouchtime"},"color":"yellow"},{"text":"秒","color":"yellow"}]

#400
execute as @s[scores={book4=400}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊更改孩子每次要接近鬼幾格內--","bold":true},"\n",{"text":" 2","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 411"}},{"text":"  ","color":"aqua"},{"text":" 4","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 412"}},{"text":"  ","color":"aqua"},{"text":" 6","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 413"}},{"text":"  ","color":"aqua"},{"text":" 8","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 414"}},{"text":"\n","color":"aqua"},{"text":"10","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 415"}},{"text":"  ","color":"aqua"},{"text":"12","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 416"}},{"text":"  ","color":"aqua"},{"text":"14","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 417"}},{"text":"  ","color":"aqua"},{"text":"16","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 418"}},{"text":"\n","color":"aqua"},{"text":"18","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 419"}},{"text":"  ","color":"aqua"},{"text":"20","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger book4 set 420"}}]
#401-402+
execute as @s[scores={book4=401}] run scoreboard players remove 7-0-7-0-000700000007 rglplustouchdis 2
execute as @s[scores={book4=402}] run scoreboard players add 7-0-7-0-000700000007 rglplustouchdis 2
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplustouchdis=..0}] rglplustouchdis 20
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplustouchdis=22..}] rglplustouchdis 2
execute as @s[scores={book4=411}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 2
execute as @s[scores={book4=412}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 4
execute as @s[scores={book4=413}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 6
execute as @s[scores={book4=414}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 8
execute as @s[scores={book4=415}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 10
execute as @s[scores={book4=416}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 12
execute as @s[scores={book4=417}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 14
execute as @s[scores={book4=418}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 16
execute as @s[scores={book4=419}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 18
execute as @s[scores={book4=420}] run scoreboard players set 7-0-7-0-000700000007 rglplustouchdis 20
execute as @s[scores={book4=401..420}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"當前接近鬼的距離更改為","color":"yellow"},{"score":{"name":"7-0-7-0-000700000007","objective":"rglplustouchdis"},"color":"yellow"},{"text":"格之內","color":"yellow"}]

#book4
#509
execute as @s[scores={book4=509}] run scoreboard players add 7-0-7-0-000700000007 rglplusglow 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusglow=8..}] rglplusglow 1
execute as @s[scores={book4=509}] if score 7-0-7-0-000700000007 rglplusglow matches 1 run data merge entity 0-0-9-0-000400000007 {CustomName:"{\"text\":\"每60秒隨機1人發光，   倒數60秒全員發光\"}"}
execute as @s[scores={book4=509}] if score 7-0-7-0-000700000007 rglplusglow matches 2 run data merge entity 0-0-9-0-000400000007 {CustomName:"{\"text\":\"每60秒隨機1人發光，   倒數30秒全員發光\"}"}
execute as @s[scores={book4=509}] if score 7-0-7-0-000700000007 rglplusglow matches 3 run data merge entity 0-0-9-0-000400000007 {CustomName:"{\"text\":\"每30秒隨機1人發光，   倒數30秒全員發光\"}"}
execute as @s[scores={book4=509}] if score 7-0-7-0-000700000007 rglplusglow matches 4 run data merge entity 0-0-9-0-000400000007 {CustomName:"{\"text\":\"每30秒隨機3人發光\"}"}
execute as @s[scores={book4=509}] if score 7-0-7-0-000700000007 rglplusglow matches 5 run data merge entity 0-0-9-0-000400000007 {CustomName:"{\"text\":\"每15秒隨機1人發光\"}"}
execute as @s[scores={book4=509}] if score 7-0-7-0-000700000007 rglplusglow matches 6 run data merge entity 0-0-9-0-000400000007 {CustomName:"{\"text\":\"倒數60秒全員發光\"}"}
execute as @s[scores={book4=509}] if score 7-0-7-0-000700000007 rglplusglow matches 7 run data merge entity 0-0-9-0-000400000007 {CustomName:"{\"text\":\"倒數30秒全員發光\"}"}
execute as @s[scores={book4=509}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"發光設定：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookglow,type=marker]","color":"yellow"}]
#519
execute as @s[scores={book4=519}] run scoreboard players add 7-0-7-0-000700000007 rglplusshowdis 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusshowdis=4..}] rglplusshowdis 1
execute as @s[scores={book4=519}] if score 7-0-7-0-000700000007 rglplusshowdis matches 0 run data merge entity 0-0-9-0-000400000008 {CustomName:"{\"text\":\"不顯示距離\"}"}
execute as @s[scores={book4=519}] if score 7-0-7-0-000700000007 rglplusshowdis matches 1 run data merge entity 0-0-9-0-000400000008 {CustomName:"{\"text\":\"持續顯示最近小孩的距離\"}"}
execute as @s[scores={book4=519}] if score 7-0-7-0-000700000007 rglplusshowdis matches 2 run data merge entity 0-0-9-0-000400000008 {CustomName:"{\"text\":\"若有小孩為紅燈， 則顯示最近小孩的距離\"}"}
execute as @s[scores={book4=519}] if score 7-0-7-0-000700000007 rglplusshowdis matches 3 run data merge entity 0-0-9-0-000400000008 {CustomName:"{\"text\":\"若小孩全部都是綠燈，  則顯示最近小孩的距離\"}"}
execute as @s[scores={book4=519}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"顯示距離孩子遠近設定","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookshowdis,type=marker]","color":"yellow"}]
#529
execute as @s[scores={book4=529}] run scoreboard players add 7-0-7-0-000700000007 rglplusteamdamage 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusteamdamage=4..}] rglplusteamdamage 0
execute as @s[scores={book4=529}] if score 7-0-7-0-000700000007 rglplusteamdamage matches 0 run data merge entity 0-0-9-0-000400000009 {CustomName:"{\"text\":\"雙方皆無同隊傷害\"}"}
execute as @s[scores={book4=529}] if score 7-0-7-0-000700000007 rglplusteamdamage matches 1 run data merge entity 0-0-9-0-000400000009 {CustomName:"{\"text\":\"孩子方有同隊傷害\"}"}
execute as @s[scores={book4=529}] if score 7-0-7-0-000700000007 rglplusteamdamage matches 2 run data merge entity 0-0-9-0-000400000009 {CustomName:"{\"text\":\"鬼方有同隊傷害\"}"}
execute as @s[scores={book4=529}] if score 7-0-7-0-000700000007 rglplusteamdamage matches 3 run data merge entity 0-0-9-0-000400000009 {CustomName:"{\"text\":\"雙方都有同隊傷害\"}"}
execute as @s[scores={book4=529}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"友方傷害：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookteamdamage,type=marker]","color":"yellow"}]

#book4 p3
#609
execute as @s[scores={book4=609}] run scoreboard players add 7-0-7-0-000700000007 rglplusfalldamage 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusfalldamage=2..}] rglplusfalldamage 0
execute as @s[scores={book4=609}] if score 7-0-7-0-000700000007 rglplusfalldamage matches 0 run data merge entity 0-0-9-0-00040000000a {CustomName:"{\"text\":\"沒有\"}"}
execute as @s[scores={book4=609}] if score 7-0-7-0-000700000007 rglplusfalldamage matches 1 run data merge entity 0-0-9-0-00040000000a {CustomName:"{\"text\":\"有\"}"}
execute as @s[scores={book4=609}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"墜落傷害：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookfalldamage,type=marker]","color":"yellow"}]
#619
execute as @s[scores={book4=619}] run scoreboard players add 7-0-7-0-000700000007 rglplusautoblood 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusautoblood=2..}] rglplusautoblood 0
execute as @s[scores={book4=619}] if score 7-0-7-0-000700000007 rglplusautoblood matches 0 run data merge entity 0-0-9-0-00040000000b {CustomName:"{\"text\":\"不開啟\"}"}
execute as @s[scores={book4=619}] if score 7-0-7-0-000700000007 rglplusautoblood matches 1 run data merge entity 0-0-9-0-00040000000b {CustomName:"{\"text\":\"開啟\"}"}
execute as @s[scores={book4=619}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"自然回血：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookautoblood,type=marker]","color":"yellow"}]
#629
execute as @s[scores={book4=629}] run scoreboard players add 7-0-7-0-000700000007 rglplusdaynight 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusdaynight=2..}] rglplusdaynight 0
execute as @s[scores={book4=629}] if score 7-0-7-0-000700000007 rglplusdaynight matches 0 run data merge entity 0-0-9-0-00040000000c {CustomName:"{\"text\":\"永遠白天\"}"}
execute as @s[scores={book4=629}] if score 7-0-7-0-000700000007 rglplusdaynight matches 1 run data merge entity 0-0-9-0-00040000000c {CustomName:"{\"text\":\"永遠黑夜\"}"}
execute as @s[scores={book4=629}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"場景設定：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookdaynight,type=marker]","color":"yellow"}]

#639
execute as @s[scores={book4=639}] run scoreboard players add 7-0-7-0-000700000007 rglplusrescue 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusrescue=5..}] rglplusrescue 0
execute as @s[scores={book4=639}] if score 7-0-7-0-000700000007 rglplusrescue matches 0 run data merge entity 0-0-9-0-00040000000e {CustomName:"{\"text\":\"重複顯示\"}"}
execute as @s[scores={book4=639}] if score 7-0-7-0-000700000007 rglplusrescue matches 1 run data merge entity 0-0-9-0-00040000000e {CustomName:"{\"text\":\"一秒不重複\"}"}
execute as @s[scores={book4=639}] if score 7-0-7-0-000700000007 rglplusrescue matches 2 run data merge entity 0-0-9-0-00040000000e {CustomName:"{\"text\":\"二秒不重複\"}"}
execute as @s[scores={book4=639}] if score 7-0-7-0-000700000007 rglplusrescue matches 3 run data merge entity 0-0-9-0-00040000000e {CustomName:"{\"text\":\"三秒不重複\"}"}
execute as @s[scores={book4=639}] if score 7-0-7-0-000700000007 rglplusrescue matches 4 run data merge entity 0-0-9-0-00040000000e {CustomName:"{\"text\":\"四秒不重複\"}"}
execute as @s[scores={book4=639}] run scoreboard players operation 7-0-7-0-000100000000 rglplusrescue = 7-0-7-0-000700000007 rglplusrescue
execute as @s[scores={book4=639}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"拯救訊息：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookrescue,type=marker]","color":"yellow"}]
#649
execute as @s[scores={book4=649}] run scoreboard players add 7-0-7-0-000700000007 rglplusguardred 1
scoreboard players set @e[tag=rglplus,tag=core,scores={rglplusguardred=4..}] rglplusguardred 0
execute as @s[scores={book4=649}] if score 7-0-7-0-000700000007 rglplusguardred matches 0 run data merge entity 0-0-9-0-00040000000f {CustomName:"{\"text\":\"無懲罰\"}"}
execute as @s[scores={book4=649}] if score 7-0-7-0-000700000007 rglplusguardred matches 1 run data merge entity 0-0-9-0-00040000000f {CustomName:"{\"text\":\"開啟，若紅燈時間剩七秒且十格內有鬼就給自救綠燈\"}"}
execute as @s[scores={book4=649}] if score 7-0-7-0-000700000007 rglplusguardred matches 2 run data merge entity 0-0-9-0-00040000000f {CustomName:"{\"text\":\"開啟，若紅燈十格內有鬼就給他緩速和降低攻速\"}"}
execute as @s[scores={book4=649}] if score 7-0-7-0-000700000007 rglplusguardred matches 3 run data merge entity 0-0-9-0-00040000000f {CustomName:"{\"text\":\"開啟，先前所述兩種懲罰同時啟動\"}"}
execute as @s[scores={book4=649}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"守屍懲罰設定：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookguardred,type=marker]","color":"yellow"}]

#trigger book4 set 0


