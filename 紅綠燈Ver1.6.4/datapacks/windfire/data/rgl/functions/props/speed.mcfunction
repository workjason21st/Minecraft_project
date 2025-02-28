
execute as @a[tag=!tospeed,team=good] at @s if entity @e[type=item,predicate=rgl:props/speed,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:props/speed,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:props/speed,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:props/speed,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:props/speed,limit=1,sort=nearest] throwid3 run tag @s add tospeed
execute as @a[tag=tospeed,team=good] at @s as @e[type=item,predicate=rgl:props/speed,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=tospeed,team=good] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=tospeed,team=good]","bold":"true","color":"yellow"},{"text":"使用道具讓自身7秒加速III","color":"yellow"}]
execute as @a[tag=tospeed,team=good] run effect give @s minecraft:speed 7 2 true

execute as @a[tag=tospeed,team=good,scores={propscount=1..}] run function rgl:props/undo
execute as @a[tag=tospeed,team=good,scores={propscount=1..}] run function rgl:props/torch
tag @a[tag=tospeed,team=good] remove tospeed
