
execute if entity @e[tag=tick,scores={gametime=3}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.5 0.1
execute if entity @e[tag=tick,scores={gametime=2}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.7 0.1
execute if entity @e[tag=tick,scores={gametime=1}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.9 0.1
execute if entity @e[tag=tick,scores={gametime=0}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1 0.1

execute if entity @e[tag=tick,scores={gametime=20}] run tellraw @a [{"text":"倒數２０秒鐘▶▶臥底即將現形","color":"red"}]
execute if entity @e[tag=tick,scores={gametime=10}] run title @a title [{"text":"１０","color":"red"}]
execute if entity @e[tag=tick,scores={gametime=5}] run title @a title [{"text":"５","color":"red"}]
execute if entity @e[tag=tick,scores={gametime=3}] run title @a title [{"text":"▉","color":"red","bold":"true"}]
execute if entity @e[tag=tick,scores={gametime=2}] run title @a title [{"text":"▉","color":"gold","bold":"true"}]
execute if entity @e[tag=tick,scores={gametime=1}] run title @a title [{"text":"▉","color":"green","bold":"true"}]
execute if entity @e[tag=tick,scores={gametime=0}] run title @a title [{"text":"臥底們GOGO","color":"green","bold":"true"}]
execute if entity @e[tag=tick,scores={gametime=0}] run tellraw @a ["",{"text":"臥底們： ","color":"dark_purple","bold":"true"},{"selector":"@a[tag=spy]","color":"none"},{"text":" GOGO▶▶▶▶","color":"dark_purple","bold":"true"}]

execute if entity @e[tag=tick,scores={gametime=0}] run team join good @a[tag=spy]
execute if entity @e[tag=tick,scores={gametime=0}] run clear @a[team=good]
execute if entity @e[tag=tick,scores={gametime=0}] as @a[team=good] run function rgl:other/givesword
execute if entity @e[tag=core,scores={rglghost=3}] if entity @e[tag=tick,scores={gametime=0}] run function rgl:start/effect/ghost
execute if entity @e[tag=tick,scores={gametime=0}] as @a[team=good,tag=red,tag=spy] at @s run kill @e[type=minecraft:zombie,tag=rglname,limit=1,sort=nearest,distance=..1]
execute if entity @e[tag=tick,scores={gametime=0}] run tag @a[tag=spy] remove green
execute if entity @e[tag=tick,scores={gametime=0}] run tag @a[tag=spy] remove red
execute if entity @e[tag=tick,scores={gametime=0}] as @a[tag=spy] at @s run tag @p[tag=!spy,team=bad] add spyred
execute if entity @e[tag=tick,scores={gametime=0}] as @a[team=good] run function rgl:start/red/spyred
execute if entity @e[tag=tick,scores={gametime=0}] as @a[team=good] run function rgl:other/ghosteffect
execute if entity @e[tag=tick,scores={gametime=0}] run function rgl:other/get
execute if entity @e[tag=tick,scores={gametime=0}] run function rgl:start/touchstartset
execute if entity @e[tag=tick,scores={gametime=0}] run bossbar set rgl:touch visible true
execute if entity @e[tag=tick,scores={gametime=0}] as @e[tag=core,scores={gameend=2,rglmode=4},tag=!mode4] run tag @s add mode4
