execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=60}] run tellraw @s ["",{"text":"「系統提示」： ","bold":true,"color":"white"},{"text":"距離重生還有 60 秒","color":"white"}]
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=30}] run tellraw @s ["",{"text":"「系統提示」： ","bold":true,"color":"white"},{"text":"距離重生還有 30 秒","color":"white"}]
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=20}] run tellraw @s ["",{"text":"「系統提示」： ","bold":true,"color":"white"},{"text":"距離重生還有 20 秒","color":"white"}]
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=10}] run tellraw @s ["",{"text":"「系統提示」： ","bold":true,"color":"white"},{"text":"距離重生還有 10 秒","color":"white"}]
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=5}] run tellraw @s ["",{"text":"「系統提示」： ","bold":true,"color":"white"},{"text":"距離重生還有 5 秒","color":"white"}]
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=3}] run tellraw @s ["",{"text":"「系統提示」： ","bold":true,"color":"white"},{"text":"距離重生還有 3 秒","color":"white"}]
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=0}] run tellraw @s ["",{"text":"\n「系統提示」： ","bold":true,"color":"light_purple"},{"text":"已經重生囉！","color":"white"}]
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=0}] run effect clear @s
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=0}] run effect give @s minecraft:resistance 10 10 true
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=0}] run effect give @s minecraft:regeneration 3 99 true
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={bingodeath=0}] at @s run tp @s ~ ~-50.5 ~ ~ ~
