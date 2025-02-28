#偵測誰死了還沒加little 根據這些人給予加血
schedule clear function rgl:other2/heartre
#execute if entity @e[tag=core,scores={rglbuff=5}] store result score @e[tag=core,limit=1] little if entity @a[team=!good,team=!spe,gamemode=spectator,tag=!little]
execute if entity @e[tag=core,scores={rglmode=9}] store result score @e[tag=core,limit=1] little if entity @a[team=good,tag=!pathogen,tag=!little]
execute if entity @e[tag=core,scores={rglmode=9,little=1..}] run effect give @a[team=!good,gamemode=adventure] minecraft:instant_health 1 0 true
#execute if entity @e[tag=core,scores={rglmode=1..8,rglbuff=5,little=1..}] run effect give @a[team=!good,gamemode=adventure] minecraft:instant_health 1 0 true
#execute if entity @e[tag=core,scores={rglmode=9,rglbuff=5,little=1..}] run effect give @a[team=!good,gamemode=adventure] minecraft:instant_health 1 1 true
execute if entity @e[tag=core,scores={rglmode=9,little=1..}] run tag @r[team=good,tag=!pathogen,tag=!little] add little
#execute if entity @e[tag=core,scores={rglmode=1..8,rglbuff=5,little=1..}] run tag @r[team=!good,team=!spe,gamemode=spectator,tag=!little] add little
execute if entity @e[tag=core,scores={little=1..}] run schedule function rgl:other2/heartre 1t
execute if entity @e[tag=core,scores={little=0}] run schedule clear function rgl:other2/heartre
