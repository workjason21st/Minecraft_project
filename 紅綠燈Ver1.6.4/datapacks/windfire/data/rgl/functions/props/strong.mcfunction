
execute as @a[tag=!tostrong,team=good] at @s if entity @e[type=item,predicate=rgl:props/strong,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:props/strong,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:props/strong,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:props/strong,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:props/strong,limit=1,sort=nearest] throwid3 run tag @s add tostrong
execute as @a[tag=tostrong,team=good] at @s as @e[type=item,predicate=rgl:props/strong,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=tostrong,team=good] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=tostrong,team=good]","bold":"true","color":"yellow"},{"text":"使用道具讓自身5秒能秒殺孩子","color":"yellow"}]
execute as @a[tag=tostrong,team=good] run effect give @s minecraft:strength 5 11 true

execute as @a[tag=tostrong,team=good,scores={propscount=1..}] run function rgl:props/undo
execute as @a[tag=tostrong,team=good,scores={propscount=1..}] run function rgl:props/torch
tag @a[tag=tostrong,team=good] remove tostrong
