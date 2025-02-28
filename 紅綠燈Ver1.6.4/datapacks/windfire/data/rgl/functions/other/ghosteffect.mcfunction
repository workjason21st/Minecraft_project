effect clear @s
execute unless entity @e[tag=core,scores={rglspecial=3}] unless entity @e[tag=core,scores={rglfriend=1}] unless entity @e[tag=core,scores={rglfriend=3}] run effect give @s minecraft:regeneration 999999 1 true
execute unless entity @e[tag=core,scores={rglspecial=3}] run effect give @s minecraft:resistance 999999 1 true
execute if entity @e[tag=core,scores={rglspecial=3}] run effect give @s minecraft:resistance 999999 3 true
execute if entity @e[tag=core,scores={rgldaynight=1}] run effect give @s minecraft:night_vision 999999 0 true
effect give @s minecraft:saturation 999999 0 true
execute if entity @e[tag=core,scores={rgleffect=1..2}] run effect give @s minecraft:speed 999999 0 true
execute if entity @e[tag=core,scores={rgleffect=2..5}] run effect give @s minecraft:dolphins_grace 999999 0 true
execute if entity @e[tag=core,scores={rgleffect=3}] run effect give @s minecraft:speed 999999 1 true
execute if entity @e[tag=core,scores={rgleffect=4}] run effect give @s minecraft:speed 999999 2 true
execute if entity @e[tag=core,scores={rgleffect=5}] run effect give @s minecraft:jump_boost 999999 1 true
execute if entity @e[tag=core,scores={rgleffect=6}] run effect give @s minecraft:speed 999999 1 true
execute if entity @e[tag=core,scores={rgleffect=7}] run effect give @s minecraft:speed 999999 2 true
execute if entity @e[tag=core,scores={rgleffect=6..7}] run effect give @s minecraft:jump_boost 999999 1 true

execute if entity @e[tag=core,scores={rgleffect=8}] run effect give @s minecraft:invisibility 999999 0 true
execute if entity @e[tag=core,scores={rgleffect=8}] run effect give @s minecraft:dolphins_grace 999999 0 true
execute if entity @e[tag=core,scores={rgleffect=9..10}] run effect give @s minecraft:water_breathing 999999 2 true
execute if entity @e[tag=core,scores={rgleffect=10}] run effect give @s minecraft:dolphins_grace 999999 0 true

execute if entity @e[tag=core,scores={rglbuff=1}] run effect give @s minecraft:glowing 999999 0 true
execute if entity @e[tag=core,scores={rglbuff=2}] run effect give @s minecraft:mining_fatigue 999999 4 true
execute if entity @e[tag=core,scores={rglbuff=3}] run effect give @s minecraft:mining_fatigue 999999 5 true
