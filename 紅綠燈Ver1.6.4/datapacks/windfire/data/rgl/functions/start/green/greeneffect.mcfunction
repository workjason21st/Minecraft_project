#execute if entity @e[tag=core] as @a[gamemode=adventure,tag=green,team=bad] run effect give @s minecraft:night_vision 10 0 true
effect give @a[gamemode=adventure,tag=green,team=bad,scores={foodL=..17}] minecraft:saturation 1 0 true
effect give @a[gamemode=adventure,tag=green,team=bad,nbt={Motion:[0d,-0.0784000015258789d,0d]},scores={foodL=..19}] minecraft:saturation 1 0 true
#execute if entity @e[tag=core,scores={rglbuff=4}] as @a[gamemode=adventure,tag=green,team=bad] run effect give @s minecraft:jump_boost 1 1 true
execute if entity @e[tag=core,scores={rglbuff=4}] run effect give @a[gamemode=adventure,tag=green,team=bad] minecraft:water_breathing 1 1 true
execute if entity @e[tag=core,scores={rglmode=7}] run effect give @a[gamemode=adventure,tag=green,team=bad] minecraft:resistance 1 9 true
#re
execute if entity @a[gamemode=adventure,tag=green,team=bad] run schedule clear rgl:start/green/greeneffect
execute if entity @a[gamemode=adventure,tag=green,team=bad] run schedule function rgl:start/green/greeneffect 19t
