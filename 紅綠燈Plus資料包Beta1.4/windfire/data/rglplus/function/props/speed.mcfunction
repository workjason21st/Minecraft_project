
execute as @a[tag=!tospeed,team=ghost] at @s if entity @e[type=item,predicate=rglplus:props/speed,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:props/speed,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:props/speed,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:props/speed,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:props/speed,limit=1,sort=nearest] throw_id3 run tag @s add tospeed
execute as @a[tag=tospeed,team=ghost] at @s as @e[type=item,predicate=rglplus:props/speed,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=tospeed,team=ghost] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=tospeed,team=ghost]","bold":true,"color":"yellow"},{"text":"使用道具讓自身7秒加速III","color":"yellow"}]
execute as @a[tag=tospeed,team=ghost] run effect give @s minecraft:speed 7 2 true

execute as @a[tag=tospeed,team=ghost,scores={propscount=1..}] run function rglplus:props/undo
execute as @a[tag=tospeed,team=ghost,scores={propscount=1..}] run function rglplus:props/torch
tag @a[tag=tospeed,team=ghost] remove tospeed
