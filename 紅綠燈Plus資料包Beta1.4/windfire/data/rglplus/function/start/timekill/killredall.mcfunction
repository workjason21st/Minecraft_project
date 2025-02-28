tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=humanred,gamemode=adventure,tag=red]","color":"aqua","bold":true},{"text":"超過紅燈時間而被懲罰而死","color":"aqua"}]
execute as @a[gamemode=adventure,team=humanred,tag=red] at @s run kill @e[type=minecraft:zombie,tag=rglplusname,limit=1,sort=nearest,distance=..1]
kill @a[team=humanred,gamemode=adventure,tag=red]

function rglplus:refresh/list
function rglplus:refresh/bossbar
