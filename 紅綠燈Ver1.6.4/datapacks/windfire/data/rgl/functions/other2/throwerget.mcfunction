#找丟出者
execute as @e[type=item,predicate=rgl:color] store result score @s throwid0 run data get entity @s Thrower[0]
execute as @e[type=item,predicate=rgl:color] store result score @s throwid1 run data get entity @s Thrower[1]
execute as @e[type=item,predicate=rgl:color] store result score @s throwid2 run data get entity @s Thrower[2]
execute as @e[type=item,predicate=rgl:color] store result score @s throwid3 run data get entity @s Thrower[3]
#
execute as @e[type=item,predicate=rgl:color] run data modify entity @s Owner set from entity @s Thrower
#
execute if entity @e[tag=core,scores={rglspecial=0}] if entity @e[type=item,predicate=rgl:lime] run function rgl:start/green/green
execute if entity @e[tag=core,scores={rglspecial=0}] if entity @e[type=item,predicate=rgl:red] run function rgl:start/red/red
execute if entity @e[tag=core,scores={rglspecial=1}] if entity @e[type=item,predicate=rgl:lime] run function rgl:start/green/greenall
execute if entity @e[tag=core,scores={rglspecial=1}] if entity @e[type=item,predicate=rgl:red] run function rgl:start/red/redall

execute if entity @e[tag=core,scores={rglspecial=2}] if entity @e[type=item,predicate=rgl:white] run function rgl:start/white/white
execute if entity @e[tag=core,scores={rglspecial=3}] if entity @e[type=item,predicate=rgl:red] run function rgl:start/red/red
execute if entity @e[tag=core,scores={rglspecial=2..3}] if entity @e[type=item,predicate=rgl:lime] run function rgl:start/green/green
