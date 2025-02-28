#偵測誰死了還沒加little 根據這些人給予加血
schedule clear rglplus:start/mode2/heartre
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusmode=2}] store result score @e[tag=rglplus,tag=core,limit=1] little if entity @a[team=ghost,tag=!pathogen,tag=!little]
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusmode=2,little=1..}] run effect give @a[team=!ghost,gamemode=adventure] minecraft:instant_health 1 0 true
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusmode=2,little=1..}] run tag @r[team=ghost,tag=!pathogen,tag=!little] add little
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={little=1..}] run schedule function rglplus:start/mode2/heartre 1t
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={little=0}] run schedule clear rglplus:start/mode2/heartre
