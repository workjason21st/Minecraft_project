execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=humanred,gamemode=adventure,tag=red,scores={rglplusredtime=-10..0}]","bold":true},{"text":"超過紅燈時間而被懲罰而死","color":"aqua"}]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=humanred,gamemode=adventure,tag=red,scores={rglplusredtime=-10..0}]","bold":true},{"text":"超過紅燈時間而被懲罰而被感染","color":"aqua"}]
execute as @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}] at @s run kill @e[type=minecraft:zombie,tag=rglplusname,limit=1,sort=nearest,distance=..1]
kill @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}]
tp @a[team=!ghost,tag=red,scores={rglplusredtime=-1..0},gamemode=spectator] @r[gamemode=adventure]

function rglplus:refresh/list
function rglplus:refresh/bossbar
