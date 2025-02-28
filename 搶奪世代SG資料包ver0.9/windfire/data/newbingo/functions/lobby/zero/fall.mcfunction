tellraw @a ["",{"text":"『大廳』","bold":true,"color":"blue"},{"selector":"@a[gamemode=!creative,distance=..1]"},{"text":"自由落體好好玩","color":"gold"}]
effect give @a[gamemode=!creative,distance=..1] minecraft:resistance 2 6 true
tp @a[gamemode=!creative,distance=..1] ~6 ~30 ~-2 facing entity @e[tag=random0,limit=1]
