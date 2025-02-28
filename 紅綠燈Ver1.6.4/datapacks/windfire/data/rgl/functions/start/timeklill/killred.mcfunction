tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=badred,gamemode=adventure,tag=red,scores={rglkill=-10..0}]","bold":"true"},{"text":"超過紅燈時間而被懲罰而死","color":"aqua"}]
kill @a[gamemode=adventure,tag=red,scores={rglkill=-10..0}]
execute if entity @e[tag=core,scores={rglmode=1..4}] run function rgl:other/getlaster
execute if entity @e[tag=core,scores={rglmode=5..6}] run function rgl:other/get
execute if entity @e[tag=core,scores={rglmode=7..9}] run function rgl:other/getlaster
