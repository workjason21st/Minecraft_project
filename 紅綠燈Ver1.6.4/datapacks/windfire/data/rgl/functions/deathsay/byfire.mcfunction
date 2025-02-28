execute if entity @e[tag=core,scores={gameend=1..2,rglmode=1..8}] as @s[team=bad] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"壞孩子","color":"aqua"},{"selector":"@s","bold":"true"},{"text":"被火燒死了","color":"aqua"}]
execute if entity @e[tag=core,scores={gameend=1..2,rglmode=9}] as @s[team=bad] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"壞孩子","color":"aqua"},{"selector":"@s","bold":"true"},{"text":"被火燒死了而且成為新的病原","color":"aqua"}]
execute if entity @e[tag=core,scores={gameend=1..2}] as @s[team=good] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"鬼","color":"dark_aqua"},{"selector":"@s","bold":"true"},{"text":"被火燒死了","color":"dark_aqua"}]
execute if entity @e[tag=core,scores={gameend=1..2}] run advancement revoke @s only rgl:death/byfire
