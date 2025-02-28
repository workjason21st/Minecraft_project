tellraw @a[team=good] ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[team=good,tag=pathogen]","bold":"true","color":"white"},{"text":"成為新的鬼王","color":"white"}]
tellraw @a[team=bad] ["",{"text":"紅綠燈： ","color":"white"},{"text":"新的鬼王出現啦","color":"white"}]
scoreboard players operation @e[tag=random9,limit=1] rglnewghost = @e[tag=core,limit=1] rglnewghost
