setblock 117 52 110 minecraft:polished_blackstone_button[face=wall,facing=west,powered=false]
execute positioned 117 52 110 run give @p minecraft:snowball 16
execute positioned 117 52 110 run title @p actionbar ["",{"text":"將雪球丟到標靶","color":"gold","bold":"true"},{"text":"紅心","color":"red","bold":"true"},{"text":"上就會開始遊戲","color":"gold","bold":"true"}]
