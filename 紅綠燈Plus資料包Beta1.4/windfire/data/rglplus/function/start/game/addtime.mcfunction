execute if entity @a[team=human,advancements={rglplus:death/badbygood=true},scores={deathdetect=1..}] as @a[team=ghost,gamemode=adventure,scores={killdetect=1..}] run tag @s add killbad
execute as @e[tag=rglplus,tag=core,scores={rglplusaddtime=1}] run scoreboard players add @s gametime 3
execute as @e[tag=rglplus,tag=core,scores={rglplusaddtime=2}] run scoreboard players add @s gametime 5
execute as @e[tag=rglplus,tag=core,scores={rglplusaddtime=3}] run scoreboard players add @s gametime 10
execute if entity @e[tag=rglplus,tag=core,scores={rglplusaddtime=1}] as @e[tag=rglplus,tag=tick] run scoreboard players add @s gametime 3
execute if entity @e[tag=rglplus,tag=core,scores={rglplusaddtime=2}] as @e[tag=rglplus,tag=tick] run scoreboard players add @s gametime 5
execute if entity @e[tag=rglplus,tag=core,scores={rglplusaddtime=3}] as @e[tag=rglplus,tag=tick] run scoreboard players add @s gametime 10
execute if entity @e[tag=rglplus,tag=core,scores={rglplusaddtime=1}] as @e[tag=rglplus,tag=random1] run scoreboard players add @s rglplustime 3
execute if entity @e[tag=rglplus,tag=core,scores={rglplusaddtime=2}] as @e[tag=rglplus,tag=random1] run scoreboard players add @s rglplustime 5
execute if entity @e[tag=rglplus,tag=core,scores={rglplusaddtime=3}] as @e[tag=rglplus,tag=random1] run scoreboard players add @s rglplustime 10
execute as @e[tag=rglplus,tag=tick,scores={gametime=61..}] run scoreboard players add @s rglplustime 1
execute as @e[tag=rglplus,tag=tick,scores={gametime=61..}] run scoreboard players remove @s gametime 60
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghostprop=0,rglplusaddtime=1}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=killbad]","color":"white","bold":true},{"text":"成功抓到壞孩子，","color":"white"},{"text":"遊戲時長額外增加3秒","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghostprop=0,rglplusaddtime=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=killbad]","color":"white","bold":true},{"text":"成功抓到壞孩子，","color":"white"},{"text":"遊戲時長額外增加5秒","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghostprop=0,rglplusaddtime=3}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=killbad]","color":"white","bold":true},{"text":"成功抓到壞孩子，","color":"white"},{"text":"遊戲時長額外增加10秒","color":"gold"}]

execute if entity @e[tag=rglplus,tag=core,scores={rglplusghostprop=1,rglplusaddtime=1}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=killbad]","color":"white","bold":true},{"text":"成功抓到壞孩子，","color":"white"},{"text":"額外獲得道具並且","color":"white"},{"text":"遊戲時長額外增加3秒","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghostprop=1,rglplusaddtime=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=killbad]","color":"white","bold":true},{"text":"成功抓到壞孩子，","color":"white"},{"text":"額外獲得道具並且","color":"white"},{"text":"遊戲時長額外增加5秒","color":"gold"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusghostprop=1,rglplusaddtime=3}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=killbad]","color":"white","bold":true},{"text":"成功抓到壞孩子，","color":"white"},{"text":"額外獲得道具並且","color":"white"},{"text":"遊戲時長額外增加10秒","color":"gold"}]

tag @a[tag=killbad] remove killbad
