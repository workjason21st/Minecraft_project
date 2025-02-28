#找丟出者
execute as @e[type=item,predicate=rgl:props/props] store result score @s throwid0 run data get entity @s Thrower[0]
execute as @e[type=item,predicate=rgl:props/props] store result score @s throwid1 run data get entity @s Thrower[1]
execute as @e[type=item,predicate=rgl:props/props] store result score @s throwid2 run data get entity @s Thrower[2]
execute as @e[type=item,predicate=rgl:props/props] store result score @s throwid3 run data get entity @s Thrower[3]
#
execute as @e[type=item,predicate=rgl:props/props] run data modify entity @s Owner set from entity @s Thrower
#效果
execute if entity @e[type=item,predicate=rgl:props/slow] run function rgl:props/slow
execute if entity @e[type=item,predicate=rgl:props/glow] run function rgl:props/glow
execute if entity @e[type=item,predicate=rgl:props/speed] run function rgl:props/speed
execute if entity @e[type=item,predicate=rgl:props/strong] run function rgl:props/strong
execute if entity @e[type=item,predicate=rgl:props/defense] run function rgl:props/defense
