execute if entity @e[tag=core,scores={rglspecial=0}] if entity @a[gamemode=adventure,team=bad,tag=green,scores={sqrt=0..}] run function rgl:start/dis/show
execute if entity @e[tag=core,scores={rglspecial=3}] if entity @a[gamemode=adventure,team=bad,tag=green,scores={sqrt=0..}] run function rgl:start/dis/show
execute if entity @e[tag=core,scores={rglspecial=2}] if entity @a[gamemode=adventure,team=bad,tag=green,scores={sqrt=0..,rglspecial=1}] run function rgl:start/dis/showchange1
execute if entity @e[tag=core,scores={rglspecial=2}] if entity @a[gamemode=adventure,team=bad,tag=green,scores={sqrt=0..,rglspecial=2}] run function rgl:start/dis/showchange2
execute if entity @e[tag=core,scores={rglspecial=1}] if entity @a[gamemode=adventure,team=bad,tag=green,scores={sqrt=0..}] run function rgl:start/dis/showall
