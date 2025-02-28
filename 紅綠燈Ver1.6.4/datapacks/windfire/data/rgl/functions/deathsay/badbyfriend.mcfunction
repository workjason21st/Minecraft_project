execute if entity @e[tag=core,scores={gameend=1..2,rglmode=1..8}] as @s run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":"true"},{"text":"被同隊的壞孩子殺死了","color":"aqua"}]
execute if entity @e[tag=core,scores={gameend=1..2,rglmode=9}] as @s run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":"true"},{"text":"被同隊的壞孩子殺死而成為新的病原","color":"aqua"}]
execute if entity @e[tag=core,scores={gameend=1..2}] run advancement revoke @s only rgl:death/badbyfriend
