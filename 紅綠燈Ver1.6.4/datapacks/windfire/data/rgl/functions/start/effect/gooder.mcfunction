execute if entity @e[tag=core,scores={gameend=0..2,rglghost=2}] run scoreboard players add @s usesword 1

scoreboard players set @s[scores={sword1=1..}] sword1 0
scoreboard players set @s[scores={sword2=1..}] sword2 0
scoreboard players set @s[scores={sword3=1..}] sword3 0
scoreboard players set @s[scores={sword4=1..}] sword4 0
scoreboard players set @s[scores={sword5=1..}] sword5 0
scoreboard players set @s[scores={sword6=1..}] sword6 0
scoreboard players set @s[scores={sword7=1..}] sword7 0
scoreboard players set @s[scores={sword8=1..}] sword8 0
scoreboard players set @s[scores={sword9=1..}] sword9 0
scoreboard players set @s[scores={sword10=1..}] sword10 0
scoreboard players set @s[scores={sword11=1..}] sword11 0
execute if entity @e[tag=core,scores={rglsword=9,rglghost=1..3}] run clear @s minecraft:firework_rocket
execute if entity @e[tag=core,scores={rglsword=9,rglghost=1}] run item replace entity @s weapon.offhand with minecraft:firework_rocket{Enchantments:[{id:binding_curse,lvl:1}],Unbreakable:1,Fireworks:{Flight:-0.2,Explosions:[{Type:1,Colors:[I;11743532],FadeColors:[I;4312372]}]},HideFlags:63} 1
execute if entity @e[tag=core,scores={rglsword=9,rglghost=2}] run item replace entity @s weapon.offhand with minecraft:firework_rocket{Enchantments:[{id:binding_curse,lvl:1}],Unbreakable:1,Fireworks:{Flight:-0.15,Explosions:[{Type:1,Colors:[I;11743532],FadeColors:[I;4312372]}]},HideFlags:63} 1
execute if entity @e[tag=core,scores={rglsword=9,rglghost=3}] run item replace entity @s weapon.offhand with minecraft:firework_rocket{Enchantments:[{id:binding_curse,lvl:1}],Unbreakable:1,Fireworks:{Flight:-0.1,Explosions:[{Type:1,Colors:[I;11743532],FadeColors:[I;4312372]}]},HideFlags:63} 1
execute if entity @e[tag=core,scores={gameend=0..2,rglsword=9,rglghost=1..3}] run advancement revoke @s only rgl:firework

execute if entity @e[tag=core,scores={rglsword=10..11,rglghost=1}] run clear @s minecraft:experience_bottle
execute if entity @e[tag=core,scores={rglsword=10..11,rglghost=1}] run item replace entity @s weapon.mainhand with minecraft:experience_bottle 7
execute if entity @e[tag=core,scores={gameend=0..2,rglsword=10..11,rglghost=1..3}] run advancement revoke @s only rgl:experience

execute if entity @e[tag=core,scores={gameend=0..2,rglghost=2}] run function rgl:start/effect/ghost2
execute if entity @e[tag=core,scores={gameend=0..2,rglghost=2}] run advancement revoke @s only rgl:sword
execute if entity @e[tag=core,scores={gameend=0..2,rglghost=2}] run advancement revoke @s only rgl:sword9
