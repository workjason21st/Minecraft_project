execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusqteghost=2}] run scoreboard players add @s usesword 1
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
scoreboard players set @s[scores={sword12=1..}] sword12 0
scoreboard players set @s[scores={sword13=1..}] sword13 0

execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusqteghost=2}] run function rglplus:role/ghost/ghost2
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusqteghost=2}] run advancement revoke @s only rglplus:sword
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusqteghost=2}] run advancement revoke @s only rglplus:sword_infect

#-0.125 -0.1 -0.075
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=11,rglplusqteghost=1..4}] run clear @s minecraft:firework_rocket
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=11,rglplusqteghost=1}] run item replace entity @s weapon.offhand with minecraft:firework_rocket[enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={show_in_tooltip:false},fireworks={flight_duration:-3,explosions:[{shape:"large_ball",colors:[I;11743532],fade_colors:[I;4312372]}]}] 1
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=11,rglplusqteghost=2}] run item replace entity @s weapon.offhand with minecraft:firework_rocket[enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={show_in_tooltip:false},fireworks={flight_duration:-2,explosions:[{shape:"large_ball",colors:[I;11743532],fade_colors:[I;4312372]}]}] 2
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=11,rglplusqteghost=3..4}] run item replace entity @s weapon.offhand with minecraft:firework_rocket[enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={show_in_tooltip:false},fireworks={flight_duration:-1,explosions:[{shape:"large_ball",colors:[I;11743532],fade_colors:[I;4312372]}]}] 3
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusweapon=11,rglplusqteghost=1..2}] run advancement revoke @s[advancements={rglplus:firework2=true}] only rglplus:firework
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusweapon=11,rglplusqteghost=3..4}] run advancement revoke @s only rglplus:firework
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusqteghost=1..2}] run advancement revoke @s only rglplus:firework2

execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=10,rglplusqteghost=1..2}] run clear @s #minecraft:arrows
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=10,rglplusqteghost=1..4}] run item replace entity @s inventory.18 with minecraft:tipped_arrow[potion_contents={custom_color:46042,custom_effects:[{id:slowness,duration:80,amplifier:0,show_icon:1b}]},custom_name='["",{"text":"緩速箭矢","italic":false}]',lore=['["",{"text":"緩速 (00:04)","italic":false,"color":"red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"使用時:","italic":false,"color":"dark_purple"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"-15% 速度","italic":false,"color":"red"}]']] 1
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusweapon=10,rglplusqteghost=1..4}] run advancement revoke @s only rglplus:tippedarrow

execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=1..2,rglplusweapon=8..9,rglplusqteghost=1}] run clear @s minecraft:experience_bottle
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusweapon=8..9,rglplusqteghost=1}] run item replace entity @s weapon.mainhand with minecraft:experience_bottle 7
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={playgame=0..2,rglplusweapon=8..9,rglplusqteghost=1}] run advancement revoke @s only rglplus:experience
