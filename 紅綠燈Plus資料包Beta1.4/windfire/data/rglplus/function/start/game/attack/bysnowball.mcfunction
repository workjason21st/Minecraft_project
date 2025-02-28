#execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=7}] run effect give @s[team=human] minecraft:wither 4 3 true
#execute if entity @e[tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=7,rglplusteamdamage=2..3}] run effect give @s[team=ghost] minecraft:wither 4 3 true
execute if score 7-0-7-0-000700000007 playgame matches 1..2 run function rglplus:role/ghoster
execute if score 7-0-7-0-000700000007 playgame matches 1..2 run advancement revoke @s only rglplus:hurt/snowball
