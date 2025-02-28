execute if entity @e[tag=core,scores={gameend=0}] run effect give @s minecraft:resistance 20 10 false
execute if entity @e[tag=core,scores={gameend=0}] run effect give @s minecraft:regeneration 1 99 true
execute unless entity @e[tag=core,scores={rglspecial=3}] unless entity @e[tag=core,scores={rglfriend=1..2}] run effect give @s minecraft:mining_fatigue 999999 100 true
execute if entity @e[tag=core,scores={rgldaynight=1}] run effect give @s minecraft:night_vision 999999 0 true
