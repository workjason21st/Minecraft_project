execute if entity @e[tag=mainAI,tag=!isteam] as @e[type=minecraft:strider] at @s as @e[type=minecraft:strider,sort=nearest,distance=1..2] run effect give @s minecraft:wither 1 2

execute if entity @e[tag=mainAI,scores={bumpattack=1},tag=isteam] as @e[type=minecraft:strider] at @s as @e[type=minecraft:strider,sort=nearest,distance=1..2] run effect give @s minecraft:wither 1 2

execute if entity @e[tag=mainAI,scores={bumpattack=0},tag=isteam] as @e[type=minecraft:strider,team=yellow] at @s as @e[type=minecraft:strider,team=!yellow,sort=nearest,distance=1..2] run effect give @s minecraft:wither 1 2
execute if entity @e[tag=mainAI,scores={bumpattack=0},tag=isteam] as @e[type=minecraft:strider,team=red] at @s as @e[type=minecraft:strider,team=!red,sort=nearest,distance=1..2] run effect give @s minecraft:wither 1 2
execute if entity @e[tag=mainAI,scores={bumpattack=0},tag=isteam] as @e[type=minecraft:strider,team=green] at @s as @e[type=minecraft:strider,team=!green,sort=nearest,distance=1..2] run effect give @s minecraft:wither 1 2
execute if entity @e[tag=mainAI,scores={bumpattack=0},tag=isteam] as @e[type=minecraft:strider,team=aqua] at @s as @e[type=minecraft:strider,team=!aqua,sort=nearest,distance=1..2] run effect give @s minecraft:wither 1 2