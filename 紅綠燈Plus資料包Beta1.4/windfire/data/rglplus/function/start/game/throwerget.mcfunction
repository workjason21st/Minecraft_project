#找丟出者
execute as @e[type=item,predicate=rglplus:color] store result score @s throw_id0 run data get entity @s Thrower[0]
execute as @e[type=item,predicate=rglplus:color] store result score @s throw_id1 run data get entity @s Thrower[1]
execute as @e[type=item,predicate=rglplus:color] store result score @s throw_id2 run data get entity @s Thrower[2]
execute as @e[type=item,predicate=rglplus:color] store result score @s throw_id3 run data get entity @s Thrower[3]
#
execute as @e[type=item,predicate=rglplus:color] run data modify entity @s Owner set from entity @s Thrower
#
execute if entity @e[tag=rglplus,tag=core,scores={rglplusalleffect=0}] if entity @e[type=item,predicate=rglplus:lime] run function rglplus:role/green/green
execute if entity @e[tag=rglplus,tag=core,scores={rglplusalleffect=0}] if entity @e[type=item,predicate=rglplus:red] run function rglplus:role/red/red
execute if entity @e[tag=rglplus,tag=core,scores={rglplusalleffect=1}] if entity @e[type=item,predicate=rglplus:lime] run function rglplus:role/green/greenall
execute if entity @e[tag=rglplus,tag=core,scores={rglplusalleffect=1}] if entity @e[tag=rglplus,tag=random1,scores={rglplusredcount=1..}] if entity @e[type=item,predicate=rglplus:red] run function rglplus:role/red/redall

execute if entity @e[tag=rglplus,tag=core,scores={rglplusredwall=1}] if entity @e[type=item,predicate=rglplus:white] run function rglplus:role/white/white

execute as @e[type=item,predicate=rglplus:color] run kill @s
#execute if entity @e[tag=rglplus,tag=core,scores={rglpluskidsword=1..}] as @e[type=item,predicate=rglplus:kidsword] run kill @s
