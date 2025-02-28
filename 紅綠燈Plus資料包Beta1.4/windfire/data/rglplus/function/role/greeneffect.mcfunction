effect give @a[gamemode=adventure,tag=green,team=human,scores={foodL=..15}] minecraft:saturation 1 0 true
effect give @a[gamemode=adventure,tag=green,team=human,nbt={Motion:[0d,-0.0784000015258789d,0d]},scores={foodL=..17}] minecraft:saturation 1 0 true
execute if score 7-0-7-0-000700000007 rglplusbuffkid matches 4 run effect give @a[gamemode=adventure,tag=green,team=human] minecraft:water_breathing 1 2 true
execute if score 7-0-7-0-000700000007 rglplusmode matches 3 unless entity @e[tag=rglplus,tag=core,scores={rglplusweapon=8..9}] run effect give @a[gamemode=adventure,tag=green,team=human] minecraft:resistance 1 9 true
execute if score 7-0-7-0-000700000007 rglplusmode matches 3 if score 7-0-7-0-000700000007 rglplusweapon matches 8..9 run effect give @a[gamemode=adventure,tag=green,team=human] minecraft:resistance 1 1 true
execute if score 7-0-7-0-000700000007 rglplusmode matches 3 if score 7-0-7-0-000700000007 rglplusweapon matches 8..9 run effect give @a[gamemode=adventure,tag=green,team=human] minecraft:regeneration 1 1 true

#re
execute if entity @a[gamemode=adventure,tag=green,team=human] run schedule clear rglplus:role/greeneffect
execute if entity @a[gamemode=adventure,tag=green,team=human] run schedule function rglplus:role/greeneffect 19t
