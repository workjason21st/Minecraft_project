#book2 mode
#99=select 100=change 101~105=defaultmode
execute as @s[scores={book2=99}] run tellraw @s ["",{"text":"---點擊選項更改遊玩模式---","bold":true},"\n",{"text":"一般模式：","clickEvent":{"action":"run_command","value":"/trigger book2 set 101"},"bold":true,"color":"light_purple"},{"text":"孩子使用紅燈即可無敵，但紅燈超過一定時間會直接出局","clickEvent":{"action":"run_command","value":"/trigger book2 set 101"},"color":"white"},"\n",{"text":"感染模式：","clickEvent":{"action":"run_command","value":"/trigger book2 set 102"},"color":"light_purple","bold":true},{"text":"孩子血量歸零不會出局，會成為鬼的孩子幫助鬼王獲勝","clickEvent":{"action":"run_command","value":"/trigger book2 set 102"},"color":"white"},"\n",{"text":"生存模式：","clickEvent":{"action":"run_command","value":"/trigger book2 set 103"},"bold":true,"color":"light_purple"},{"text":"鬼抓到孩子後，雙方身分互換，時間結束後最終仍是鬼的就輸了","clickEvent":{"action":"run_command","value":"/trigger book2 set 103"},"color":"white"},"\n",{"text":"復活模式：","clickEvent":{"action":"run_command","value":"/trigger book2 set 104"},"color":"light_purple","bold":true},{"text":"孩子血量歸零會重新復活，超出次數限制才出局","clickEvent":{"action":"run_command","value":"/trigger book2 set 104"},"color":"white"}]
execute as @s[scores={book2=101}] run scoreboard players set 7-0-7-0-000700000007 rglplusmode 1
execute as @s[scores={book2=102}] run scoreboard players set 7-0-7-0-000700000007 rglplusmode 2
execute as @s[scores={book2=103}] run scoreboard players set 7-0-7-0-000700000007 rglplusmode 3
execute as @s[scores={book2=104}] run scoreboard players set 7-0-7-0-000700000007 rglplusmode 4
execute as @s[scores={book2=105}] run scoreboard players set 7-0-7-0-000700000007 rglplusmode 5
execute as @s[scores={book2=100}] run scoreboard players add 7-0-7-0-000700000007 rglplusmode 1
execute if score 7-0-7-0-000700000007 rglplusmode matches 5.. run scoreboard players set 7-0-7-0-000700000007 rglplusmode 1
execute as @s[scores={book2=100..105}] if score 7-0-7-0-000700000007 rglplusmode matches 1 run data merge entity 0-0-9-0-000100000005 {CustomName:"{\"text\":\"一般模式\"}"}
execute as @s[scores={book2=100..105}] if score 7-0-7-0-000700000007 rglplusmode matches 2 run data merge entity 0-0-9-0-000100000005 {CustomName:"{\"text\":\"感染模式\"}"}
execute as @s[scores={book2=100..105}] if score 7-0-7-0-000700000007 rglplusmode matches 3 run data merge entity 0-0-9-0-000100000005 {CustomName:"{\"text\":\"生存模式\"}"}
execute as @s[scores={book2=100..105}] if score 7-0-7-0-000700000007 rglplusmode matches 4 run data merge entity 0-0-9-0-000100000005 {CustomName:"{\"text\":\"復活模式\"}"}
execute as @s[scores={book2=100..105}] if score 7-0-7-0-000700000007 rglplusmode matches 5 run data merge entity 0-0-9-0-000100000005 {CustomName:"{\"text\":\"自訂模式\"}"}
execute as @s[scores={book2=100..105}] run tellraw @a ["",{"text":"✔","bold":true},{"text":"當前模式更改為","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookmode,type=marker]","color":"yellow"}]


#book2 greencount
#150
execute as @s[scores={book2=150}] run tellraw @s ["",{"text":"---點擊選項更改綠燈使用限制---","bold":true},"\n",{"text":"無限制","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 160"}},{"text":"   ","color":"dark_green"},{"text":"1次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 161"}},{"text":"   ","color":"dark_green"},{"text":"5次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 162"}},{"text":"\n","color":"dark_green"},{"text":"10次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 163"}},{"text":"   ","color":"dark_green"},{"text":"15次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 164"}},{"text":"  ","color":"dark_green"},{"text":"20次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 165"}},{"text":"\n","color":"dark_green"},{"text":"30次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 166"}},{"text":"   ","color":"dark_green"},{"text":"40次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 167"}},{"text":"  ","color":"dark_green"},{"text":"50次","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 168"}}]
#151-152+
execute as @s[scores={book2=151}] run scoreboard players remove 7-0-7-0-000700000007 rglplusgreencount 1
execute as @s[scores={book2=152}] run scoreboard players add 7-0-7-0-000700000007 rglplusgreencount 1
execute if score 7-0-7-0-000700000007 rglplusgreencount matches 3334 run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 1
execute if score 7-0-7-0-000700000007 rglplusgreencount matches 3332 run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 60
execute if score 7-0-7-0-000700000007 rglplusgreencount matches ..0 run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 3333
execute if score 7-0-7-0-000700000007 rglplusgreencount matches 61.. run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 3333
#160~168
execute as @s[scores={book2=160}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 3333
execute as @s[scores={book2=161}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 1
execute as @s[scores={book2=162}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 5
execute as @s[scores={book2=163}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 10
execute as @s[scores={book2=164}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 15
execute as @s[scores={book2=165}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 20
execute as @s[scores={book2=166}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 30
execute as @s[scores={book2=167}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 40
execute as @s[scores={book2=168}] run scoreboard players set 7-0-7-0-000700000007 rglplusgreencount 50

scoreboard players operation 0-0-9-0-000200000001 rglplusgreencount = 7-0-7-0-000700000007 rglplusgreencount
execute if score 7-0-7-0-000700000007 rglplusgreencount matches 3333 run scoreboard players reset 0-0-9-0-000200000001 rglplusgreencount
execute as @s[scores={book2=151..168}] if score 7-0-7-0-000700000007 rglplusgreencount matches 3333 run data merge entity 0-0-9-0-000200000001 {CustomName:"{\"text\":\"無限制\"}"}
execute as @s[scores={book2=151..168}] if score 7-0-7-0-000700000007 rglplusgreencount matches 1..60 run data merge entity 0-0-9-0-000200000001 {CustomName:"{\"text\":\"次\"}"}
execute as @s[scores={book2=151..168}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"綠燈使用限制更改為","color":"yellow"},{"score":{"name":"@e[tag=rglplus,tag=bookgreencount,type=marker,limit=1]","objective":"rglplusgreencount"},"color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookgreencount,type=marker]","color":"yellow"}]
#book2 redcount
#170
execute as @s[scores={book2=170}] run tellraw @s ["",{"text":"---點擊選項更改紅燈使用限制---","bold":true},"\n",{"text":"無限制","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 180"}},{"text":"   ","color":"red"},{"text":"1次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 181"}},{"text":"   ","color":"red"},{"text":"5次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 182"}},{"text":"\n","color":"red"},{"text":"10次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 183"}},{"text":"   ","color":"red"},{"text":"15次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 184"}},{"text":"  ","color":"red"},{"text":"20次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 185"}},{"text":"\n","color":"red"},{"text":"25次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 186"}},{"text":"   ","color":"red"},{"text":"30次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 187"}},{"text":"  ","color":"red"},{"text":"35次","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 188"}}]
#171-172+
execute as @s[scores={book2=171}] run scoreboard players remove 7-0-7-0-000700000007 rglplusredcount 1
execute as @s[scores={book2=172}] run scoreboard players add 7-0-7-0-000700000007 rglplusredcount 1
execute if score 7-0-7-0-000700000007 rglplusredcount matches 3334 run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 1
execute if score 7-0-7-0-000700000007 rglplusredcount matches 3332 run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 60
execute if score 7-0-7-0-000700000007 rglplusredcount matches ..0 run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 3333
execute if score 7-0-7-0-000700000007 rglplusredcount matches 61.. run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 3333
#180~188
execute as @s[scores={book2=180}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 3333
execute as @s[scores={book2=181}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 1
execute as @s[scores={book2=182}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 5
execute as @s[scores={book2=183}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 10
execute as @s[scores={book2=184}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 15
execute as @s[scores={book2=185}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 20
execute as @s[scores={book2=186}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 25
execute as @s[scores={book2=187}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 30
execute as @s[scores={book2=188}] run scoreboard players set 7-0-7-0-000700000007 rglplusredcount 35

scoreboard players operation 0-0-9-0-000200000002 rglplusredcount = 7-0-7-0-000700000007 rglplusredcount
execute if score 7-0-7-0-000700000007 rglplusredcount matches 3333 run scoreboard players reset 0-0-9-0-000200000002 rglplusredcount
execute as @s[scores={book2=171..188}] if score 7-0-7-0-000700000007 rglplusredcount matches 3333 run data merge entity 0-0-9-0-000200000002 {CustomName:"{\"text\":\"無限制\"}"}
execute as @s[scores={book2=171..188}] if score 7-0-7-0-000700000007 rglplusredcount matches 1..60 run data merge entity 0-0-9-0-000200000002 {CustomName:"{\"text\":\"次\"}"}
execute as @s[scores={book2=171..188}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"紅燈使用限制更改為","color":"yellow"},{"score":{"name":"@e[tag=rglplus,tag=bookredcount,type=marker,limit=1]","objective":"rglplusredcount"},"color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookredcount,type=marker]","color":"yellow"}]
#book2 redtime
#190
execute as @s[scores={book2=190}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run tellraw @s ["",{"text":"---點擊選項更改紅燈懲罰(幾秒後死亡)---","bold":true},"\n",{"text":"無懲罰","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 200"}},{"text":"  ","color":"red"},{"text":"10秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 201"}},{"text":" ","color":"red"},{"text":"15秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 202"}},{"text":" ","color":"red"},{"text":"20秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 203"}},{"text":"\n","color":"red"},{"text":"25秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 204"}},{"text":"   ","color":"red"},{"text":"30秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 205"}},{"text":" ","color":"red"},{"text":"35秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 206"}},{"text":" ","color":"red"},{"text":"40秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 207"}},{"text":"\n","color":"red"},{"text":"45秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 208"}},{"text":"   ","color":"red"},{"text":"50秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 209"}},{"text":" ","color":"red"},{"text":"55秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 210"}},{"text":" ","color":"red"},{"text":"60秒","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 211"}}]
execute as @s[scores={book2=190}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run tellraw @s ["",{"text":"---點擊選項更改紅燈懲罰(每幾秒扣血)---","bold":true},"\n",{"text":"無懲罰","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 250"}},{"text":"\n","color":"red"},{"text":"每秒扣2滴","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 251"}},{"text":"    ","color":"red"},{"text":"每秒扣1滴","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 252"}},{"text":"\n","color":"red"},{"text":"每2秒扣1滴","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 253"}},{"text":"  ","color":"red"},{"text":"每3秒扣1滴","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 254"}},{"text":"\n","color":"red"},{"text":"每4秒扣1滴","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 255"}},{"text":"  ","color":"red"},{"text":"每5秒扣1滴","color":"red","clickEvent":{"action":"run_command","value":"/trigger book2 set 256"}}]
#191-192+
execute as @s[scores={book2=191}] run scoreboard players remove 7-0-7-0-000700000007 rglplusredtime 1
execute as @s[scores={book2=192}] run scoreboard players add 7-0-7-0-000700000007 rglplusredtime 1
execute if score 7-0-7-0-000100000000 rglplusredtime matches 0 if score 7-0-7-0-000700000007 rglplusredtime matches 3334 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 1
execute if score 7-0-7-0-000100000000 rglplusredtime matches 0 if score 7-0-7-0-000700000007 rglplusredtime matches 3332 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 60
execute if score 7-0-7-0-000100000000 rglplusredtime matches 0 if score 7-0-7-0-000700000007 rglplusredtime matches ..0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3333
execute if score 7-0-7-0-000100000000 rglplusredtime matches 0 if score 7-0-7-0-000700000007 rglplusredtime matches 61.. run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3333
execute if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches 3334 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 0
execute if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches 3332 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 5
execute if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches ..-1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3333
execute if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches 6.. run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3333

#249 更改方式
execute as @s[scores={book2=249}] run scoreboard players add 7-0-7-0-000100000000 rglplusredtime 1
execute as @s[scores={book2=249}] run scoreboard players set @e[limit=1,type=armor_stand,tag=rglplus,tag=random1,scores={rglplusredtime=2}] rglplusredtime 0
execute as @s[scores={book2=249}] run scoreboard players reset 0-0-9-0-000200000003 rglplusredtime
execute as @s[scores={book2=249}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 30
execute as @s[scores={book2=249}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3
#200~211
execute as @s[scores={book2=200}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3333
execute as @s[scores={book2=201}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 10
execute as @s[scores={book2=202}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 15
execute as @s[scores={book2=203}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 20
execute as @s[scores={book2=204}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 25
execute as @s[scores={book2=205}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 30
execute as @s[scores={book2=206}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 35
execute as @s[scores={book2=207}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 40
execute as @s[scores={book2=208}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 45
execute as @s[scores={book2=209}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 50
execute as @s[scores={book2=210}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 55
execute as @s[scores={book2=211}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 60
#
execute as @s[scores={book2=250}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3333
execute as @s[scores={book2=251}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 0
execute as @s[scores={book2=252}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 1
execute as @s[scores={book2=253}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 2
execute as @s[scores={book2=254}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 3
execute as @s[scores={book2=255}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 4
execute as @s[scores={book2=256}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 run scoreboard players set 7-0-7-0-000700000007 rglplusredtime 5
#
scoreboard players operation 0-0-9-0-000200000003 rglplusredtime = 7-0-7-0-000700000007 rglplusredtime
execute as @s[scores={book2=191..256}] if score 7-0-7-0-000100000000 rglplusredtime matches 0 if score 7-0-7-0-000700000007 rglplusredtime matches 1..60 run data merge entity 0-0-9-0-000200000003 {CustomName:"{\"text\":\"秒死亡\"}"}
execute as @s[scores={book2=191..256}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches 0 run data merge entity 0-0-9-0-000200000003 {CustomName:"{\"text\":\"1秒扣2滴\"}"}
execute as @s[scores={book2=191..256}] if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches 1..10 run data merge entity 0-0-9-0-000200000003 {CustomName:"{\"text\":\"秒扣1滴\"}"}
execute as @s[scores={book2=191..256}] if score 7-0-7-0-000700000007 rglplusredtime matches 3333 run data merge entity 0-0-9-0-000200000003 {CustomName:"{\"text\":\"無懲罰\"}"}
execute if score 7-0-7-0-000700000007 rglplusredtime matches 3333 run scoreboard players reset 0-0-9-0-000200000003 rglplusredtime
execute if score 7-0-7-0-000100000000 rglplusredtime matches 1 if score 7-0-7-0-000700000007 rglplusredtime matches 0 run scoreboard players reset 0-0-9-0-000200000003 rglplusredtime
execute as @s[scores={book2=191..256}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"紅燈懲罰更改為","color":"yellow"},{"score":{"name":"@e[tag=rglplus,tag=bookredtime,type=marker,limit=1]","objective":"rglplusredtime"},"color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookredtime,type=marker]","color":"yellow"}]

#book2 redgreen
#301 302
execute as @s[scores={book2=301}] run scoreboard players add 7-0-7-0-000700000007 rglplusbyself 1
execute if score 7-0-7-0-000700000007 rglplusbyself matches 2.. run scoreboard players set 7-0-7-0-000700000007 rglplusbyself 0
execute as @s[scores={book2=301}] if score 7-0-7-0-000700000007 rglplusbyself matches 0 run data merge entity 0-0-9-0-000200000004 {CustomName:"{\"text\":\"關閉\"}"}
execute as @s[scores={book2=301}] if score 7-0-7-0-000700000007 rglplusbyself matches 1 run data merge entity 0-0-9-0-000200000004 {CustomName:"{\"text\":\"開啟\"}"}
execute as @s[scores={book2=301}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"紅燈是否能自救：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookbyself,type=marker]","color":"yellow"}]

execute as @s[scores={book2=302}] run scoreboard players add 7-0-7-0-000700000007 rglplusredwall 1
execute if score 7-0-7-0-000700000007 rglplusredwall matches 2.. run scoreboard players set 7-0-7-0-000700000007 rglplusredwall 0
execute as @s[scores={book2=302}] if score 7-0-7-0-000700000007 rglplusredwall matches 0 run data merge entity 0-0-9-0-000200000005 {CustomName:"{\"text\":\"關閉\"}"}
execute as @s[scores={book2=302}] if score 7-0-7-0-000700000007 rglplusredwall matches 1 run data merge entity 0-0-9-0-000200000005 {CustomName:"{\"text\":\"開啟\"}"}
execute as @s[scores={book2=302}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"觸碰牆壁是否能紅燈：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookredwall,type=marker]","color":"yellow"}]
#book2 ghost
#401
execute as @s[scores={book2=401}] run scoreboard players add 7-0-7-0-000700000007 rglplusghostprop 1
execute if score 7-0-7-0-000700000007 rglplusghostprop matches 2.. run scoreboard players set 7-0-7-0-000700000007 rglplusghostprop 0
execute as @s[scores={book2=401}] if score 7-0-7-0-000700000007 rglplusghostprop matches 0 run data merge entity 0-0-9-0-000200000006 {CustomName:"{\"text\":\"關閉\"}"}
execute as @s[scores={book2=401}] if score 7-0-7-0-000700000007 rglplusghostprop matches 1 run data merge entity 0-0-9-0-000200000006 {CustomName:"{\"text\":\"開啟\"}"}
execute as @s[scores={book2=401}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"鬼將孩子生命歸零時能獲得道具：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookghostprop,type=marker]","color":"yellow"}]
#402
execute as @s[scores={book2=402}] run scoreboard players add 7-0-7-0-000700000007 rglplusaddtime 1
execute if score 7-0-7-0-000700000007 rglplusaddtime matches 4.. run scoreboard players set 7-0-7-0-000700000007 rglplusaddtime 0
execute as @s[scores={book2=402}] if score 7-0-7-0-000700000007 rglplusaddtime matches 0 run data merge entity 0-0-9-0-000200000007 {CustomName:"{\"text\":\"關閉\"}"}
execute as @s[scores={book2=402}] if score 7-0-7-0-000700000007 rglplusaddtime matches 1 run data merge entity 0-0-9-0-000200000007 {CustomName:"{\"text\":\"三秒\"}"}
execute as @s[scores={book2=402}] if score 7-0-7-0-000700000007 rglplusaddtime matches 2 run data merge entity 0-0-9-0-000200000007 {CustomName:"{\"text\":\"五秒\"}"}
execute as @s[scores={book2=402}] if score 7-0-7-0-000700000007 rglplusaddtime matches 3 run data merge entity 0-0-9-0-000200000007 {CustomName:"{\"text\":\"十秒\"}"}
execute as @s[scores={book2=402}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"鬼將孩子生命歸零時能增加時長：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookaddtime,type=marker]","color":"yellow"}]
#book2 other
#501
execute as @s[scores={book2=501}] run tellraw @s ["",{"text":"\n","color":"aqua"},{"text":"---點擊更改孩子的反擊手段--","bold":true},"\n",{"text":"沒有","color":"green","clickEvent":{"action":"run_command","value":"/trigger book2 set 499"}},{"text":"\n","color":"green"},{"text":"A. 擊退2棒棒","color":"green","clickEvent":{"action":"run_command","value":"/trigger book2 set 498"}},{"text":"\n","color":"green"},{"text":"B. 傷害4棍棒","color":"green","clickEvent":{"action":"run_command","value":"/trigger book2 set 497"}},{"text":"\n","color":"green"},{"text":"C. 干擾釣竿","color":"green","clickEvent":{"action":"run_command","value":"/trigger book2 set 496"}}]
execute as @s[scores={book2=500}] run scoreboard players add 7-0-7-0-000700000007 rglpluskidsword 1
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 4.. run scoreboard players set 7-0-7-0-000700000007 rglpluskidsword 0
#499~
execute as @s[scores={book2=499}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidsword 0
execute as @s[scores={book2=498}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidsword 1
execute as @s[scores={book2=497}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidsword 2
execute as @s[scores={book2=496}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidsword 3
execute as @s[scores={book2=490..500}] if score 7-0-7-0-000700000007 rglpluskidsword matches 0 run data merge entity 0-0-9-0-000200000008 {CustomName:"{\"text\":\"沒有\"}"}
execute as @s[scores={book2=490..500}] if score 7-0-7-0-000700000007 rglpluskidsword matches 1 run data merge entity 0-0-9-0-000200000008 {CustomName:"{\"text\":\"擊退2棒\"}"}
execute as @s[scores={book2=490..500}] if score 7-0-7-0-000700000007 rglpluskidsword matches 2 run data merge entity 0-0-9-0-000200000008 {CustomName:"{\"text\":\"傷害3棒\"}"}
execute as @s[scores={book2=490..500}] if score 7-0-7-0-000700000007 rglpluskidsword matches 3 run data merge entity 0-0-9-0-000200000008 {CustomName:"{\"text\":\"干擾釣竿\"}"}
execute as @s[scores={book2=490..500}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"孩子的反擊手段：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookkidsword,type=marker]","color":"yellow"}]
#502
execute as @s[scores={book2=502}] run scoreboard players add 7-0-7-0-000700000007 rglplusalleffect 1
execute if score 7-0-7-0-000700000007 rglplusalleffect matches 2.. run scoreboard players set 7-0-7-0-000700000007 rglplusalleffect 0
execute as @s[scores={book2=502}] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 run data merge entity 0-0-9-0-000200000009 {CustomName:"{\"text\":\"不是\"}"}
execute as @s[scores={book2=502}] if score 7-0-7-0-000700000007 rglplusalleffect matches 1 run data merge entity 0-0-9-0-000200000009 {CustomName:"{\"text\":\"是\"}"}
execute as @s[scores={book2=502}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"紅燈/綠燈效果是否為全體：","color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookalleffect,type=marker]","color":"yellow"}]
#503
execute as @s[scores={book2=503}] run scoreboard players add 7-0-7-0-000700000007 rglpluskidlife 1
execute if score 7-0-7-0-000700000007 rglpluskidlife matches 10.. run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 1
execute as @s[scores={book2=503..519}] store result score 0-0-9-0-00020000000a rglpluskidlife if entity @a
execute as @s[scores={book2=503..519}] if score 0-0-9-0-00020000000a rglpluskidlife matches 1..3 run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 1
execute as @s[scores={book2=503..519}] if score 0-0-9-0-00020000000a rglpluskidlife matches 4..7 run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 2
execute as @s[scores={book2=503..519}] if score 0-0-9-0-00020000000a rglpluskidlife matches 8..12 run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 3
execute as @s[scores={book2=503..519}] if score 0-0-9-0-00020000000a rglpluskidlife matches 13.. run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 4
execute as @s[scores={book2=503}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife *= 7-0-7-0-000700000007 rglpluskidlife
execute as @s[scores={book2=503}] run scoreboard players operation 7-0-7-0-000400000000 rglpluskidlife = 0-0-9-0-00020000000a rglpluskidlife
execute as @s[scores={book2=503}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"孩子的復活次數限制：","color":"yellow"},{"score":{"name":"@e[tag=rglplus,tag=bookkidlife,type=marker,limit=1]","objective":"rglpluskidlife"},"color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookkidlife,type=marker]","color":"yellow"}]
#execute as @s[scores={book2=503}] if entity @e[tag=rglplus,tag=core,scores={rglpluskidlife=1..9}] run data merge entity @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] {CustomName:"{\"text\":\"次\"}"}
#510
execute as @s[scores={book2=510}] as @e[tag=rglplus,tag=random010,tag=!random0] run scoreboard players operation @s rglpluskidlife = @s random10
execute as @s[scores={book2=510}] as @e[tag=rglplus,tag=random010,tag=!random0] run scoreboard players operation @s rglpluskidlife *= @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife
execute as @s[scores={book2=510}] run tellraw @s ["",{"text":"---點擊選項更改孩子的復活次數：---","bold":true},"\n",{"score":{"name":"@e[tag=rglplus,tag=random1,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 511"}},{"text":"次","color":"dark_green"},{"text":"  ","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random2,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 512"}},{"text":"次","color":"dark_green"},{"text":"  ","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random3,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 513"}},{"text":"次","color":"dark_green"},{"text":"\n","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random4,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 514"}},{"text":"次","color":"dark_green"},{"text":"  ","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random5,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 515"}},{"text":"次","color":"dark_green"},{"text":"  ","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random6,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 516"}},{"text":"次","color":"dark_green"},{"text":"\n","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random7,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 517"}},{"text":"次","color":"dark_green"},{"text":"  ","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random8,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 518"}},{"text":"次","color":"dark_green"},{"text":"  ","color":"red"},{"score":{"name":"@e[tag=rglplus,tag=random9,limit=1]","objective":"rglpluskidlife"},"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger book2 set 519"}},{"text":"次","color":"dark_green"}]
execute as @s[scores={book2=510}] store result score 0-0-9-0-00020000000a rglpluskidlife if entity @a
execute as @s[scores={book2=510}] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 1
execute as @s[scores={book2=510}] if score 7-0-7-0-000700000007 rglplusalleffect matches 1 if score 0-0-9-0-00020000000a rglpluskidlife matches 1..3 run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 1
execute as @s[scores={book2=510}] if score 7-0-7-0-000700000007 rglplusalleffect matches 1 if score 0-0-9-0-00020000000a rglpluskidlife matches 4..7 run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 2
execute as @s[scores={book2=510}] if score 7-0-7-0-000700000007 rglplusalleffect matches 1 if score 0-0-9-0-00020000000a rglpluskidlife matches 8..12 run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 3
execute as @s[scores={book2=510}] if score 7-0-7-0-000700000007 rglplusalleffect matches 1 if score 0-0-9-0-00020000000a rglpluskidlife matches 13.. run scoreboard players set 0-0-9-0-00020000000a rglpluskidlife 4
execute as @s[scores={book2=510}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife *= 7-0-7-0-000700000007 rglpluskidlife
execute as @s[scores={book2=510}] run scoreboard players operation 7-0-7-0-000400000000 rglpluskidlife = 0-0-9-0-00020000000a rglpluskidlife
#511~519
execute as @s[scores={book2=511}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000100000000 rglpluskidlife
execute as @s[scores={book2=512}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000200000000 rglpluskidlife
execute as @s[scores={book2=513}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000300000000 rglpluskidlife
execute as @s[scores={book2=514}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000400000000 rglpluskidlife
execute as @s[scores={book2=515}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000500000000 rglpluskidlife
execute as @s[scores={book2=516}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000600000000 rglpluskidlife
execute as @s[scores={book2=517}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000700000000 rglpluskidlife
execute as @s[scores={book2=518}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000800000000 rglpluskidlife
execute as @s[scores={book2=519}] run scoreboard players operation 0-0-9-0-00020000000a rglpluskidlife = 7-0-7-0-000900000000 rglpluskidlife
execute as @s[scores={book2=511}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 1
execute as @s[scores={book2=512}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 2
execute as @s[scores={book2=513}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 3
execute as @s[scores={book2=514}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 4
execute as @s[scores={book2=515}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 5
execute as @s[scores={book2=516}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 6
execute as @s[scores={book2=517}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 7
execute as @s[scores={book2=518}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 8
execute as @s[scores={book2=519}] run scoreboard players set 7-0-7-0-000700000007 rglpluskidlife 9
execute as @s[scores={book2=511..519}] run scoreboard players operation 7-0-7-0-000400000000 rglpluskidlife = 0-0-9-0-00020000000a rglpluskidlife
execute as @s[scores={book2=511..519}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"孩子的復活次數限制：","color":"yellow"},{"score":{"name":"@e[tag=rglplus,tag=bookkidlife,type=marker,limit=1]","objective":"rglpluskidlife"},"color":"yellow"},{"selector":"@e[tag=rglplus,tag=bookkidlife,type=marker]","color":"yellow"}]


#trigger book2 set 0
