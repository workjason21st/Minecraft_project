
execute as @a[tag=!tostrong,team=ghost] at @s if entity @e[type=item,predicate=rglplus:props/strong,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:props/strong,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:props/strong,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:props/strong,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:props/strong,limit=1,sort=nearest] throw_id3 run tag @s add tostrong
execute as @a[tag=tostrong,team=ghost] at @s as @e[type=item,predicate=rglplus:props/strong,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=tostrong,team=ghost] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=tostrong,team=ghost]","bold":true,"color":"yellow"},{"text":"使用道具讓自身5秒能秒殺孩子","color":"yellow"}]
execute as @a[tag=tostrong,team=ghost] run effect give @s minecraft:strength 5 11 true

execute as @a[tag=tostrong,team=ghost,scores={propscount=1..}] run function rglplus:props/undo
execute as @a[tag=tostrong,team=ghost,scores={propscount=1..}] run function rglplus:props/torch
tag @a[tag=tostrong,team=ghost] remove tostrong
