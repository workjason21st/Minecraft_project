effect give @a[tag=!rglplus_register] minecraft:saturation infinite 0 true
effect give @a[tag=!rglplus_register] minecraft:regeneration infinite 0 true
effect give @a[tag=!rglplus_register] minecraft:resistance infinite 9 true
effect give @a[tag=!rglplus_register] minecraft:night_vision infinite 0 true
clear @a[tag=!rglplus_register]
xp set @a[tag=!rglplus_register] 0
scoreboard players set @a[tag=!rglplus_register] bigwincount 0
scoreboard players set @a[tag=!rglplus_register] smallwinpoint 0
execute as @a unless entity @s[scores={book3=0..3000}] run scoreboard players set @s book3 0
scoreboard players add @e[tag=rglplus,tag=core] rglplusnumber 1
scoreboard players operation @s rglplusnumber = @e[tag=rglplus,tag=core,limit=1] rglplusnumber
#recipe give @a[tag=!rglplus_register] *
gamemode adventure @a[tag=!rglplus_register]
execute as @e[tag=rglplus,tag=core] at @s run tp @a[tag=!rglplus_register] ~ ~ ~
execute as @e[tag=rglplus,tag=core] at @s run spawnpoint @a[tag=!rglplus_register] ~ ~ ~
tellraw @a[tag=!rglplus_register] ["",{"text":"紅綠燈-","bold":true,"color":"gold"},{"text":"壞孩子跑給鬼追+ : ","color":"gold"},{"text":"歡迎","bold":false,"color":"white"},{"selector":"@a[tag=!rglplus_register]","color":"gold"},{"text":"遊玩本遊戲","bold":false,"color":"white"}]
team join human @a[tag=!rglplus_register]
execute if entity @a[tag=!rglplus_register] run function rglplus:book/intro
execute as @a[tag=!rglplus_register] store result score @s throw_id0 run data get entity @s UUID[0]
execute as @a[tag=!rglplus_register] store result score @s throw_id1 run data get entity @s UUID[1]
execute as @a[tag=!rglplus_register] store result score @s throw_id2 run data get entity @s UUID[2]
execute as @a[tag=!rglplus_register] store result score @s throw_id3 run data get entity @s UUID[3]
tag @a[tag=!rglplus_register] add rglplus_register
execute as @s[team=,tag=rglplus_register] run team join human @s

execute store result score @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife if entity @a
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=1..3}] rglpluskidlife 1
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=4..7}] rglpluskidlife 2
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=8..12}] rglpluskidlife 3
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=13..}] rglpluskidlife 4
scoreboard players operation @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife *= @e[tag=rglplus,tag=core,limit=1] rglpluskidlife
scoreboard players operation @e[tag=rglplus,tag=random4,limit=1] rglpluskidlife = @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife
