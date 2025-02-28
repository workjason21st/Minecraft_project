tellraw @a[gamemode=spectator] ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=ghost,tag=pathogen]","color":"yellow"},{"text":"成為新的鬼王","color":"white"}]
tellraw @a[team=ghost,gamemode=!spectator] ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=ghost,tag=pathogen]","bold":true,"color":"white"},{"text":"成為新的鬼王","color":"white"}]
tellraw @a[team=!ghost,gamemode=adventure] ["",{"text":"紅綠燈： ","color":"white"},{"text":"新的鬼王出現啦","color":"white"}]
scoreboard players set @e[tag=rglplus,tag=tick,limit=1] rglplusghost 40
