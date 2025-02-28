#找丟出者
execute as @e[type=item,predicate=rglplus:props/props] store result score @s throw_id0 run data get entity @s Thrower[0]
execute as @e[type=item,predicate=rglplus:props/props] store result score @s throw_id1 run data get entity @s Thrower[1]
execute as @e[type=item,predicate=rglplus:props/props] store result score @s throw_id2 run data get entity @s Thrower[2]
execute as @e[type=item,predicate=rglplus:props/props] store result score @s throw_id3 run data get entity @s Thrower[3]
#
execute as @e[type=item,predicate=rglplus:props/props] run data modify entity @s Owner set from entity @s Thrower
#效果
execute if entity @e[type=item,predicate=rglplus:props/slow] run function rglplus:props/slow
execute if entity @e[type=item,predicate=rglplus:props/glow] run function rglplus:props/glow
execute if entity @e[type=item,predicate=rglplus:props/speed] run function rglplus:props/speed
execute if entity @e[type=item,predicate=rglplus:props/strong] run function rglplus:props/strong
execute if entity @e[type=item,predicate=rglplus:props/defense] run function rglplus:props/defense
execute if entity @e[type=item,predicate=rglplus:props/long] run function rglplus:props/long
