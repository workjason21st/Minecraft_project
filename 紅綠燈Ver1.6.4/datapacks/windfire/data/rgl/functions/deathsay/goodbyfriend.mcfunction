execute if entity @e[tag=core,scores={gameend=1..2}] as @s run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":"true","color":"dark_aqua"},{"text":"被同隊的鬼殺死了","color":"dark_aqua"}]
execute if entity @e[tag=core,scores={gameend=1..2}] run advancement revoke @s only rgl:death/goodbyfriend
