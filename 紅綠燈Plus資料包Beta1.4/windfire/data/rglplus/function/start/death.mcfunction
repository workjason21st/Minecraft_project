execute if entity @e[tag=rglplus,tag=core,scores={rglplusdaynight=1}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:night_vision infinite 0 true

#死掉不復活
execute if score 7-0-7-0-000700000007 rglplusmode matches 1 as @a[team=!ghost,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill
execute if score 7-0-7-0-000700000007 rglplusmode matches 3 as @a[team=!ghost,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill
gamemode spectator @a[tag=kill]
team join human @a[tag=kill]
execute as @a[tag=kill] run attribute @s minecraft:scale base set 1
execute as @a[tag=kill] run attribute @s minecraft:sneaking_speed base set 0.3
scoreboard players set @a[tag=kill] deathdetect 0
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run effect clear @s minecraft:glowing
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run tp @s ~ -200 ~
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run kill @s
tp @a[tag=kill] @r[gamemode=adventure]
execute if entity @a[gamemode=adventure,team=human] run tp @a[gamemode=spectator,tag=kill] @r[gamemode=adventure,team=human]
tag @a[tag=kill] remove red
tag @a[tag=kill] remove green
tag @a[tag=kill] remove kill
#死掉重生
execute if score 7-0-7-0-000700000007 rglplusmode matches 4 as @a[team=!ghost,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill4
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 1 run scoreboard players add 7-0-7-0-000400000000 rglpluskidlife 1
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 run scoreboard players add @s rglpluskidlife 1
gamemode spectator @a[tag=kill4]
xp add @a[tag=kill4] -999999999
team join human @a[tag=kill4]
execute as @a[tag=kill4] run attribute @s minecraft:gravity base set 0.08
execute as @a[tag=kill4] run attribute @s minecraft:burning_time base set 1
scoreboard players add @a[tag=kill4] deathcount 1
scoreboard players set @a[tag=kill4] deathdetect 0
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run effect clear @s minecraft:glowing
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run tp @s ~ -200 ~
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run kill @s
tag @a[tag=kill4] remove kidspawn
execute as @a[gamemode=spectator,tag=kill4] run scoreboard players add 7-0-7-0-000700000007 baddead 1
execute as @a[gamemode=spectator,tag=kill4] run tp @s 7-0-1-0-000700000007
#execute if score 7-0-7-0-000700000007 rglrebirth matches 1 if entity @a[gamemode=adventure,team=!ghost,tag=green] run tp @a[gamemode=spectator,tag=kill4] @r[gamemode=adventure,team=!ghost,tag=green,tag=!red,tag=!kill4]
#execute if score 7-0-7-0-000700000007 rglrebirth matches 1 unless entity @a[gamemode=adventure,team=!ghost,tag=green] if entity @a[gamemode=adventure,team=!ghost,tag=red] run tp @a[gamemode=spectator,tag=kill4] @r[gamemode=adventure,team=!ghost,tag=red,tag=!kill4]
#execute if score 7-0-7-0-000700000007 rglrebirth matches 2 run tp @a[gamemode=spectator,tag=kill4] @r[gamemode=adventure,team=!ghost,tag=!kill4]
#execute if score 7-0-7-0-000700000007 rglrebirth matches 3 unless entity @a[gamemode=adventure,team=!ghost,tag=kidspawn] run tag @r[gamemode=adventure,team=!ghost,tag=!kill4] add kidspawn
#execute if score 7-0-7-0-000700000007 rglrebirth matches 3 run tp @a[gamemode=spectator,tag=kill4] @r[gamemode=adventure,team=!ghost,tag=kidspawn,tag=!kill4]
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 1.. as @a[tag=kill4] run function rglplus:start/game/sword/childstick
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 if score @s rglpluskidlife > 0-0-9-0-00020000000a rglpluskidlife run gamemode spectator @s
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 if score @s rglpluskidlife > 0-0-9-0-00020000000a rglpluskidlife run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"text":"壞孩子","color":"red"},{"selector":"@s","bold":true},{"text":"超過復活次數被懲罰而死","color":"red"}]
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 if score @s rglpluskidlife <= 0-0-9-0-00020000000a rglpluskidlife run gamemode adventure @s
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 if score @s rglpluskidlife < 0-0-9-0-00020000000a rglpluskidlife run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"你已經重新復活","color":"white"},{"score":{"name":"@s","objective":"rglpluskidlife"},"color":"gold"},{"text":"次","color":"gold"}]
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 0 if score @s rglpluskidlife = 0-0-9-0-00020000000a rglpluskidlife run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"這是你最後一次重新復活","bold":true,"color":"gold"}]
execute as @a[tag=kill4] if score 7-0-7-0-000700000007 rglplusalleffect matches 1 run gamemode adventure @s
tag @a[tag=kill4] add green
tag @a[tag=kill4] remove red
execute if entity @a[tag=kill4] run function rglplus:role/basiseffect
execute if entity @a[tag=kill4] run function rglplus:role/greener
tag @a[tag=kill4] remove kill4
##
#死掉變鬼
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 as @a[team=!ghost,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill2
gamemode spectator @a[tag=kill2]
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run effect clear @s minecraft:glowing
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run tp @s ~ -200 ~
execute if entity @a[team=!ghost,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[team=!ghost,tag=red,tag=!green,distance=..1,gamemode=adventure] run kill @s
xp add @a[tag=kill2] -999999999
team join ghost @a[tag=kill2]
execute as @a[tag=kill2] run attribute @s minecraft:gravity base set 0.08
execute as @a[tag=kill2] run attribute @s minecraft:burning_time base set 1
scoreboard players set @a[tag=kill2] deathdetect 0
tp @a[tag=kill2] @r[gamemode=adventure,team=ghost,tag=pathogen]
gamemode adventure @a[tag=kill2]
clear @a[tag=kill2]
execute as @a[tag=kill2] run function rglplus:role/ghosteffect
effect give @a[tag=kill2] minecraft:regeneration 2 5 true
tag @a[tag=kill2] remove red
tag @a[tag=kill2] remove green
tag @a[tag=kill2] remove kill2

#鬼死掉 復活
execute if score 7-0-7-0-000700000007 rglplusmode matches 1..9 unless score 7-0-7-0-000700000007 rglpluskidsword matches 1.. as @a[team=ghost,gamemode=adventure,scores={deathdetect=1..,displayhealth=20}] run tag @s add gooddie
gamemode spectator @a[tag=gooddie]
xp add @a[tag=gooddie] -999999999
scoreboard players set @a[tag=gooddie] deathdetect 0
execute if entity @a[team=ghost,tag=!ghostdie,gamemode=adventure] run tp @a[tag=gooddie] @r[gamemode=adventure,team=ghost,tag=!ghostdie]
execute unless entity @a[team=ghost,tag=!ghostdie,gamemode=adventure] as @a[tag=gooddie] run tp @s 7-0-1-0-000700000007
gamemode adventure @a[tag=gooddie]
clear @a[tag=gooddie]
execute as @a[tag=gooddie] run function rglplus:role/ghosteffect
execute as @a[tag=gooddie] run function rglplus:role/ghost/giveweapon
effect give @a[tag=gooddie] minecraft:regeneration 2 5 true
tag @a[tag=gooddie] remove red
tag @a[tag=gooddie] remove green
tag @a[tag=gooddie] remove gooddie
#鬼被反殺
execute if score 7-0-7-0-000700000007 rglplusmode matches 1..9 if score 7-0-7-0-000700000007 rglpluskidsword matches 1.. as @a[team=ghost,gamemode=adventure,scores={deathdetect=1..,displayhealth=20}] run tag @s add killgood
gamemode spectator @a[tag=killgood]
xp add @a[tag=killgood] -999999999
scoreboard players set @a[tag=killgood] deathdetect 0
execute as @a[tag=killgood] run attribute @s minecraft:scale base set 1
execute as @a[tag=killgood] run attribute @s minecraft:sneaking_speed base set 0.3
execute if entity @a[team=ghost,tag=!killgood,gamemode=adventure] run tp @a[tag=killgood] @r[gamemode=adventure,team=ghost,tag=!killgood]
execute unless entity @a[team=ghost,tag=!killgood,gamemode=adventure] as @a[tag=killgood] run tp @s 7-0-1-0-000700000007
clear @a[tag=killgood]
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 1.. if entity @a[tag=killgood] as @a[tag=killgood,tag=pathogen] run function rglplus:start/timer/ghostchange
tag @a[tag=killgood] remove red
tag @a[tag=killgood] remove green
tag @a[tag=killgood] remove killgood

#execute positioned ~-2 ~-2 ~-2 as @e[dx=4,y=4,dz=4,type=item,nbt={Item:{tag:{RGLplusPlayerDeath:1b}}}] run function cdm:process/main
#tellraw @a {"nbt":"str", "storage":"rglplus:data", "interpret":true}
#advancement revoke @s only rglplus:death
execute if score 7-0-7-0-000700000007 rglplusmode matches 1..4 run function rglplus:refresh/bossbar
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 run function rglplus:refresh/list
execute if score 7-0-7-0-000700000007 rglplusmode matches 4 run function rglplus:refresh/list

execute if score 7-0-7-0-000700000007 rglplusmode matches 2 store result score 7-0-7-0-000700000007 little if entity @a[team=ghost,tag=!firstpathogen]
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 little matches 1.. run function rglplus:start/mode2/heart
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 store result score 7-0-7-0-000700000007 little if entity @a[team=ghost,tag=!pathogen,tag=!little]
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 little matches 1.. run schedule function rglplus:start/mode2/heartre 2t
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 little matches 0 run effect give @a[gamemode=adventure,team=!ghost,scores={foodL=..18}] minecraft:saturation 1 0 true

#finally
#全部被打死(沒紅燈) 全部被感染(沒紅燈) 鬼死光
#
#execute unless score 7-0-7-0-000700000007 rglplusmode matches 2 unless entity @a[team=human,gamemode=adventure] if entity @a[team=humanred,gamemode=adventure] unless entity @a[team=humanred,tag=laster,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 103
#execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 0 if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[team=humanred,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 109
#execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 playgame matches 1..2 unless entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 110

execute if score 7-0-7-0-000700000007 rglplusmode matches 1 unless entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 102
execute if score 7-0-7-0-000700000007 rglplusmode matches 3 unless entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 102
execute if score 7-0-7-0-000700000007 rglplusmode matches 4 if score 7-0-7-0-000700000007 rglplusalleffect matches 1 if score 7-0-7-0-000400000000 rglpluskidlife = 壞孩子失敗的總復活數 rglpluslist run scoreboard players set 7-0-7-0-000700000007 playgame 104
execute unless entity @a[team=ghost,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 121