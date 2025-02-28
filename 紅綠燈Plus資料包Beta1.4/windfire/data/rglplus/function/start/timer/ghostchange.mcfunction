tag @s remove pathogen
execute as @s run tag @r[gamemode=adventure,team=ghost,tag=!pathogen] add newpathogen
tag @a[gamemode=adventure,team=ghost,tag=newpathogen] add pathogen
execute unless score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run tag @a[team=ghost,tag=pathogen] add nowchange
execute unless score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run clear @a[team=ghost,tag=!pathogen] #rglplus:sword
execute unless score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 as @a[team=ghost,tag=newpathogen] run function rglplus:role/ghost/giveweapon
execute if score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run clear @a[team=ghost] #rglplus:sword
execute if score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run clear @a[team=ghost] minecraft:firework_rocket
execute if score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 as @a[team=ghost,tag=pathogen] run function rglplus:role/ghost/giveweapon
execute if entity @a[gamemode=adventure,team=ghost,tag=newpathogen,tag=little] if entity @a[gamemode=adventure,team=ghost,tag=pathogen,tag=nowchange] unless score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run tellraw @a[gamemode=spectator] ["",{"text":"紅綠燈： ","color":"white"},{"text":"因為","color":"dark_aqua"},{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":"被反殺, ","color":"dark_aqua"},{"selector":"@a[team=ghost,tag=pathogen,tag=nowchange]","color":"yellow"},{"text":"成為新的鬼王","color":"dark_aqua"}]
execute if entity @a[gamemode=adventure,team=ghost,tag=newpathogen,tag=little] if entity @a[gamemode=adventure,team=ghost,tag=pathogen,tag=nowchange] unless score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run tellraw @a[team=ghost,gamemode=!spectator] ["",{"text":"紅綠燈： ","color":"white"},{"text":"因為","color":"dark_aqua"},{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":"被反殺, ","color":"dark_aqua"},{"selector":"@a[team=ghost,tag=pathogen,tag=nowchange]","bold":true,"color":"dark_aqua"},{"text":"成為新的鬼王","color":"dark_aqua"}]
execute if entity @a[gamemode=adventure,team=ghost,tag=newpathogen,tag=little] if entity @a[gamemode=adventure,team=ghost,tag=pathogen,tag=nowchange] unless score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run tellraw @a[team=!ghost,gamemode=adventure] ["",{"text":"紅綠燈： ","color":"white"},{"text":"因為","color":"dark_aqua"},{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":"被反殺, 新的鬼王出現啦","color":"dark_aqua"}]
execute unless entity @a[gamemode=adventure,team=ghost,tag=newpathogen,tag=little] if entity @a[gamemode=adventure,team=ghost,tag=pathogen,tag=nowchange] unless score @e[tag=rglplus,tag=tick,limit=1] rglplusghost matches 0 run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":"被反殺, 但是沒有病小鬼可以繼承, 所以鬼王減少一個","color":"dark_aqua"}]
tag @a[team=ghost,tag=pathogen,tag=nowchange] remove nowchange
tag @a[team=ghost,tag=newpathogen] remove newpathogen
