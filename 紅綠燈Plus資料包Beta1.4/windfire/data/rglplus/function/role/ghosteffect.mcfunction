effect clear @s

execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 1 run effect give @s minecraft:speed infinite 0 true
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 2 run effect give @s minecraft:speed infinite 1 true
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 3 run effect give @s minecraft:speed infinite 2 true
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 4..5 run effect give @s minecraft:jump_boost infinite 1 true
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 5 run effect give @s minecraft:speed infinite 1 true
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 6 run effect give @s minecraft:invisibility infinite 0 true
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 7..8 run attribute @s minecraft:scale base set 0.5
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 9 run attribute @s minecraft:scale base set 1.75
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 8 run effect give @s minecraft:speed infinite 2 true
execute if score 7-0-7-0-000700000007 rglplusbuffghost matches 9..10 run effect give @s minecraft:health_boost infinite 1 true

execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 2 run effect give @s minecraft:glowing infinite 0 true
execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 3 run effect give @s minecraft:mining_fatigue infinite 4 true
execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 6 run attribute @s minecraft:sneaking_speed base set 0.3
execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 8 run attribute @s minecraft:sneaking_speed base set 0.3
###
#execute unless entity @e[tag=rglplus,tag=core,scores={rglplusteamdamage=2..3}] run effect give @s minecraft:regeneration infinite 1 true
execute if score 7-0-7-0-000700000007 rglplusdaynight matches 1 run effect give @s minecraft:night_vision infinite 0 true
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 0 run effect give @s minecraft:resistance infinite 1 true
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 0 run effect give @s minecraft:saturation infinite 0 true
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 0 run effect give @s minecraft:regeneration infinite 1 true
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 1.. run effect give @s[scores={foodL=..17}] minecraft:saturation 1 0 true
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 1.. run effect give @s[nbt={Motion:[0d,-0.0784000015258789d,0d]},scores={foodL=..18}] minecraft:saturation 1 0 true
effect give @s minecraft:dolphins_grace infinite 0 true

#execute if entity @e[tag=rglplus,tag=core,scores={rglplusweapon=8..9}] run effect give @s minecraft:unluck infinite 3 true
