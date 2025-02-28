clear @a[gamemode=adventure,tag=green,team=human] #rglplus:flowers
execute if score 7-0-7-0-000700000007 rglplusmode matches 3 run clear @a[gamemode=adventure,tag=green,team=human] #rglplus:sword
execute if entity @a[gamemode=adventure,tag=green,team=human] run schedule clear rglplus:role/greener
execute as 7-0-7-0-000700000007 store result score @s random10 run random value 0..9

#execute if entity @e[tag=rglplus,tag=core,scores={rglplusqtekid=1..6}] run clear @a[gamemode=adventure,tag=green,team=human] minecraft:lime_concrete_powder
execute if score 7-0-7-0-000700000007 rglplusredwall matches 1 run clear @a[gamemode=adventure,tag=green,team=human] minecraft:white_concrete_powder

execute if score 7-0-7-0-000700000007 rglplusqtekid matches 1 if entity @a[predicate=rglplus:character/human/hotbar/green1,tag=green] run function rglplus:role/green/green1
execute if score 7-0-7-0-000700000007 rglplusqtekid matches 2 if entity @a[gamemode=adventure,tag=green,team=human] run function rglplus:role/green/green2
execute if score 7-0-7-0-000700000007 rglplusqtekid matches 3 if entity @a[gamemode=adventure,tag=green,team=human] run function rglplus:role/green/green3
execute if score 7-0-7-0-000700000007 rglplusqtekid matches 4 if entity @a[gamemode=adventure,tag=green,team=human] run function rglplus:role/green/green4
execute if score 7-0-7-0-000700000007 rglplusqtekid matches 5 if entity @a[gamemode=adventure,tag=green,team=human] run function rglplus:role/green/green5
execute if score 7-0-7-0-000700000007 rglplusqtekid matches 6 as @a[gamemode=adventure,tag=green,team=human] run function rglplus:role/green/green6
#清
execute if score 7-0-7-0-000700000007 rglplusredwall matches 1 run clear @a[gamemode=adventure,tag=green,team=human] minecraft:red_concrete_powder

execute if score 7-0-7-0-000700000007 rglplusmode matches 1..4 if score 7-0-7-0-000700000007 rglplusalleffect matches 1 if score 7-0-7-0-000100000000 rglplusredcount matches ..0 run clear @a[gamemode=adventure,tag=green,team=human] minecraft:red_concrete_powder
execute if score 7-0-7-0-000700000007 rglplusmode matches 1..4 if score 7-0-7-0-000700000007 rglplusredcount matches 1..60 as @a[gamemode=adventure,tag=green,team=human] if score @s usered >= 7-0-7-0-000700000007 rglplusredcount run clear @s minecraft:red_concrete_powder

#Add
execute if score 7-0-7-0-000700000007 rglplusredwall matches 1 run item replace entity @a[gamemode=adventure,tag=green,team=human] hotbar.8 with minecraft:white_concrete_powder[custom_name='["",{"text":"白燈","italic":false,"color":"white","bold":true}]',lore=['["",{"text":"丟出後能夠切換是否要觸碰牆壁就暫停的機制","italic":false,"color":"white"}]']]
execute if score 7-0-7-0-000700000007 rglpluskidsword matches 1.. unless score 7-0-7-0-000700000007 rglplusmode matches 3 as @a[gamemode=adventure,tag=green,team=human] run function rglplus:start/game/sword/childstick

#re
execute if entity @a[gamemode=adventure,tag=green,team=human] run schedule clear rglplus:role/greener
execute if entity @a[gamemode=adventure,tag=green,team=human] run schedule function rglplus:role/greener 20t

