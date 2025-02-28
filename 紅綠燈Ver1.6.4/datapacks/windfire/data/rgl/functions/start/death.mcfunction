execute if entity @e[tag=core,scores={rgldaynight=1}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:night_vision 999999 0 true

#死掉不復活
execute if entity @e[tag=core,scores={rglmode=1..4}] as @a[team=!good,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill
execute if entity @e[tag=core,scores={rglmode=7..8}] as @a[team=!good,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill
gamemode spectator @a[tag=kill]
team join bad @a[tag=kill]
scoreboard players set @a[tag=kill] deathdetect 0
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run effect clear @s minecraft:glowing
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run tp @s ~ -70 ~
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run kill @s
tp @a[tag=kill] @r[gamemode=adventure]
execute if entity @a[gamemode=adventure,team=bad] run tp @a[gamemode=spectator,tag=kill] @r[gamemode=adventure,team=bad]
tag @a[tag=kill] remove red
tag @a[tag=kill] remove green
tag @a[tag=kill] remove kill
#死掉重生
execute if entity @e[tag=core,scores={rglmode=5..6}] as @a[team=!good,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill5
execute as @a[tag=kill5] run scoreboard players remove @e[tag=random5,limit=1] rglhealth 1
gamemode spectator @a[tag=kill5]
team join bad @a[tag=kill]
scoreboard players add @a[tag=kill5] deathcount 1
scoreboard players set @a[tag=kill5] deathdetect 0
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run effect clear @s minecraft:glowing
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run tp @s ~ -70 ~
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run kill @s
tag @a[tag=kill5] remove kidspawn
execute as @a[gamemode=spectator,tag=kill5] run scoreboard players add @e[tag=core] baddead 1
execute as @a[gamemode=spectator,tag=kill5] run function rgl:map/tpspawn
execute if entity @e[tag=core,scores={rglrebirth=1}] if entity @a[gamemode=adventure,team=!good,tag=green] run tp @a[gamemode=spectator,tag=kill5] @r[gamemode=adventure,team=!good,tag=green,tag=!red,tag=!kill5]
execute if entity @e[tag=core,scores={rglrebirth=1}] unless entity @a[gamemode=adventure,team=!good,tag=green] if entity @a[gamemode=adventure,team=!good,tag=red] run tp @a[gamemode=spectator,tag=kill5] @r[gamemode=adventure,team=!good,tag=red,tag=!kill5]
execute if entity @e[tag=core,scores={rglrebirth=2}] run tp @a[gamemode=spectator,tag=kill5] @r[gamemode=adventure,team=!good,tag=!kill5]
execute if entity @e[tag=core,scores={rglrebirth=3}] unless entity @a[gamemode=adventure,team=!good,tag=kidspawn] run tag @r[gamemode=adventure,team=!good,tag=!kill5] add kidspawn
execute if entity @e[tag=core,scores={rglrebirth=3}] run tp @a[gamemode=spectator,tag=kill5] @r[gamemode=adventure,team=!good,tag=kidspawn,tag=!kill5]
gamemode adventure @a[tag=kill5]
execute if entity @e[tag=core,scores={rglspecial=3}] as @a[tag=kill5] run function rgl:other2/childstick
tag @a[tag=kill5] remove red
tag @a[tag=kill5] add green
tag @a[tag=kill5] remove kill5
##
#死掉變鬼
execute if entity @e[tag=core,scores={rglmode=9}] as @a[team=!good,scores={deathdetect=1..,displayhealth=20}] run tag @s add kill9
gamemode spectator @a[tag=kill9]
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run effect clear @s minecraft:glowing
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run tp @s ~ -70 ~
execute if entity @a[team=!good,tag=red,tag=!green,gamemode=spectator] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[team=!good,tag=red,tag=!green,distance=..1,gamemode=adventure] run kill @s
team join good @a[tag=kill9]
scoreboard players set @a[tag=kill9] deathdetect 0
tp @a[tag=kill9] @r[gamemode=adventure,team=good,tag=pathogen]
gamemode adventure @a[tag=kill9]
clear @a[tag=kill9]
execute as @a[tag=kill9] run function rgl:other/ghosteffect
tag @a[tag=kill9] remove red
tag @a[tag=kill9] remove green
tag @a[tag=kill9] remove kill9

#鬼死掉 復活
execute if entity @e[tag=core,scores={rglmode=1..9}] unless entity @e[tag=core,scores={rglspecial=3}] as @a[team=good,gamemode=adventure,scores={deathdetect=1..,displayhealth=20}] run tag @s add gooddie
gamemode spectator @a[tag=gooddie]
scoreboard players set @a[tag=gooddie] deathdetect 0
execute if entity @a[team=good,tag=!gooddie,gamemode=adventure] run tp @a[tag=gooddie] @r[gamemode=adventure,team=good,tag=!gooddie]
execute unless entity @a[team=good,tag=!gooddie,gamemode=adventure] as @a[tag=gooddie] run function rgl:map/tpspawn
gamemode adventure @a[tag=gooddie]
clear @a[tag=gooddie]
execute as @a[tag=gooddie] run function rgl:other/ghosteffect
execute as @a[tag=gooddie] run function rgl:other/givesword
tag @a[tag=gooddie] remove red
tag @a[tag=gooddie] remove green
tag @a[tag=gooddie] remove gooddie
#鬼被反殺
execute if entity @e[tag=core,scores={rglmode=1..9}] if entity @e[tag=core,scores={rglspecial=3}] as @a[team=good,gamemode=adventure,scores={deathdetect=1..,displayhealth=20}] run tag @s add killgood
gamemode spectator @a[tag=killgood]
scoreboard players set @a[tag=killgood] deathdetect 0
execute if entity @a[team=good,tag=!killgood,gamemode=adventure] run tp @a[tag=killgood] @r[gamemode=adventure,team=good,tag=!killgood]
execute unless entity @a[team=good,tag=!killgood,gamemode=adventure] as @a[tag=killgood] run function rgl:map/tpspawn
clear @a[tag=killgood]
execute if entity @e[tag=core,scores={rglspecial=3}] if entity @a[tag=killgood] as @a[tag=killgood,tag=pathogen] run function rgl:other2/ghostchange
tag @a[tag=killgood] remove red
tag @a[tag=killgood] remove green
tag @a[tag=killgood] remove killgood

execute if entity @e[tag=core,scores={rglmode=1..4}] run function rgl:other/getlaster
execute if entity @e[tag=core,scores={rglmode=7..9}] run function rgl:other/getlaster
execute if entity @e[tag=core,scores={rglmode=5..6}] run function rgl:other/get
execute if entity @e[tag=core,scores={rglmode=5..6}] as @e[tag=random5] if score @s rglhealth matches ..0 run scoreboard players set @e[tag=core] gameend 14

execute if entity @e[tag=core,scores={rglmode=9}] store result score @e[tag=core,limit=1] little if entity @a[team=good,tag=!firstpathogen]
execute if entity @e[tag=core,scores={rglmode=9,little=1..}] run function rgl:other2/heart
execute if entity @e[tag=core,scores={rglmode=9}] store result score @e[tag=core,limit=1] little if entity @a[team=good,tag=!pathogen,tag=!little]
execute if entity @e[tag=core,scores={rglmode=9,little=1..}] run schedule function rgl:other2/heartre 2t
execute if entity @e[tag=core,scores={rglmode=9,little=0}] run effect give @a[gamemode=adventure,team=!good,scores={foodL=..18}] minecraft:saturation 1 0 true
