tellraw @a ["",{"text":"\n\n「 開始遊戲 」","bold":true,"color":"light_purple"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
gamemode adventure @a
scoreboard objectives setdisplay sidebar bumplist
execute if entity @e[tag=mainAI,scores={bumpplace=1}] as @e[type=minecraft:strider,team=!,tag=car] at @s run tp @s ~ 32.5 ~
#execute if entity @e[tag=mainAI,scores={bumpplace=1}] as @a[gamemode=adventure] at @s run tp @s ~ 32.5 ~

execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 37 219 181 32 181 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 32 219 181 32 181 minecraft:air
#execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 319 46 319 281 32 281 minecraft:air replace barrier
#execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 319 40 319 281 40 281 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 319 40 319 281 32 281 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 307 32 295 305 32 293 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 270 31 170 201 34 101 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 270 35 170 201 37 101 minecraft:air replace barrier
difficulty hard
effect clear @a
effect clear @e[type=minecraft:strider,tag=!displaystrider]
effect give @e[tag=car] minecraft:resistance 2 9 true
effect give @a minecraft:resistance 2 9 true
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] run effect give @a minecraft:invisibility 999999 0 true
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] run effect give @e[tag=ai] minecraft:invisibility 999999 0 true
#execute if entity @e[tag=mainAI,scores={bumpai=1..2}] run effect give @e[tag=ai] minecraft:fire_resistance 999999 0 true
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] as @e[tag=ai] at @s run summon minecraft:snowball ~ ~2.5 ~ {Silent:1,Invisible:1,PersistenceRequired:1}
scoreboard players set @e[tag=mainAI] startgame 2
