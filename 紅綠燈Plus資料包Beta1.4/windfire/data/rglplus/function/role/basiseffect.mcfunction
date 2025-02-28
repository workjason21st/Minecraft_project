execute if score 7-0-7-0-000700000007 playgame matches 0 run effect give @s minecraft:resistance 20 10 false
execute if score 7-0-7-0-000700000007 playgame matches 0 run effect give @s minecraft:regeneration 1 99 true
execute unless score 7-0-7-0-000700000007 rglplusweapon matches 1.. unless score 7-0-7-0-000700000007 rglplusteamdamage matches 1..2 run effect give @s minecraft:mining_fatigue infinite 100 true
execute if score 7-0-7-0-000700000007 rglplusdaynight matches 1 run effect give @s minecraft:night_vision infinite 0 true

execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 5..6 run attribute @s minecraft:scale base set 0.5
execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 7..8 run attribute @s minecraft:scale base set 0.25
execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 6 run attribute @s minecraft:sneaking_speed base set 1
execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 8 run attribute @s minecraft:sneaking_speed base set 1
