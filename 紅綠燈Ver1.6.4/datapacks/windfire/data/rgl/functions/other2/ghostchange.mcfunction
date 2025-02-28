tag @s remove pathogen
execute as @s run tag @r[gamemode=adventure,team=good,tag=!pathogen] add newpathogen
tag @a[gamemode=adventure,team=good,tag=newpathogen] add pathogen
execute unless score @e[tag=random9,limit=1] rglnewghost matches 0 run tag @a[team=good,tag=pathogen] add nowchange
execute unless score @e[tag=random9,limit=1] rglnewghost matches 0 run clear @a[team=good,tag=!pathogen] #rgl:sword
execute unless score @e[tag=random9,limit=1] rglnewghost matches 0 as @a[team=good,tag=newpathogen] run function rgl:other/givesword
execute if score @e[tag=random9,limit=1] rglnewghost matches 0 run clear @a[team=good] #rgl:sword
execute if score @e[tag=random9,limit=1] rglnewghost matches 0 run clear @a[team=good] minecraft:firework_rocket
execute if score @e[tag=random9,limit=1] rglnewghost matches 0 as @a[team=good,tag=pathogen] run function rgl:other/givesword
execute if entity @a[gamemode=adventure,team=good,tag=newpathogen,tag=little] if entity @a[gamemode=adventure,team=good,tag=pathogen,tag=nowchange] unless score @e[tag=random9,limit=1] rglnewghost matches 0 run tellraw @a[team=good] ["",{"text":"紅綠燈： ","color":"white"},{"text":"因為","color":"dark_aqua"},{"selector":"@s","bold":"true","color":"dark_aqua"},{"text":"被反殺, ","color":"dark_aqua"},{"selector":"@a[team=good,tag=pathogen,tag=nowchange]","bold":"true","color":"dark_aqua"},{"text":"成為新的鬼王","color":"dark_aqua"}]
execute if entity @a[gamemode=adventure,team=good,tag=newpathogen,tag=little] if entity @a[gamemode=adventure,team=good,tag=pathogen,tag=nowchange] unless score @e[tag=random9,limit=1] rglnewghost matches 0 run tellraw @a[team=bad] ["",{"text":"紅綠燈： ","color":"white"},{"text":"因為","color":"dark_aqua"},{"selector":"@s","bold":"true","color":"dark_aqua"},{"text":"被反殺, 新的鬼王出現啦","color":"dark_aqua"}]
execute unless entity @a[gamemode=adventure,team=good,tag=newpathogen,tag=little] if entity @a[gamemode=adventure,team=good,tag=pathogen,tag=nowchange] unless score @e[tag=random9,limit=1] rglnewghost matches 0 run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":"true","color":"dark_aqua"},{"text":"被反殺, 但是沒有病小鬼可以繼承, 所以鬼王減少一個","color":"dark_aqua"}]
tag @a[team=good,tag=pathogen,tag=nowchange] remove nowchange
tag @a[team=good,tag=newpathogen] remove newpathogen
