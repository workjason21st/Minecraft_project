execute as @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}] if entity @e[tag=rglplus,tag=core,scores={rglplusredtime=0}] run damage @s 2 minecraft:out_of_world
execute as @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}] if entity @e[tag=rglplus,tag=core,scores={rglplusredtime=1..5}] run damage @s 1 minecraft:out_of_world
execute if entity @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0,deathdetect=1..}] unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=humanred,gamemode=adventure,tag=red,scores={rglplusredtime=-10..0,deathdetect=1..}]","bold":true},{"text":"受到紅燈懲罰的傷害而死","color":"aqua"}]
execute if entity @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0,deathdetect=1..}] if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=humanred,gamemode=adventure,tag=red,scores={rglplusredtime=-10..0,deathdetect=1..}]","bold":true},{"text":"受到紅燈懲罰的傷害而被感染","color":"aqua"}]

execute as @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=-10..0}] run scoreboard players operation @s rglplusredtime = @e[tag=rglplus,tag=core,limit=1] rglplusredtime
execute as @a[gamemode=adventure,team=!ghost,tag=red,scores={rglplusredtime=0}] run scoreboard players set @s rglplusredtime 1

function rglplus:refresh/list
function rglplus:refresh/bossbar
