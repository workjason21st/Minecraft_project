execute if entity @a[gamemode=adventure,tag=green,team=bad] run schedule clear rgl:start/green/greener
scoreboard players operation @e[tag=core,limit=1] random = @e[tag=random010,limit=1,sort=random] random10

execute if entity @e[tag=core,scores={rglinventory=1..3}] run clear @a[gamemode=adventure,tag=green,team=bad] minecraft:lime_concrete_powder
execute if entity @e[tag=core,scores={rglinventory=3}] run item replace entity @a[gamemode=adventure,tag=green,team=bad] hotbar.1 with minecraft:lime_concrete_powder{display:{Name:'[{"text":"綠燈行","italic":false,"color":"dark_green","bold":true}]',Lore:['[{"text":"讓紅燈狀態的隊友可以行動","italic":false,"color":"green"}]','[{"text":"(只會救三格內且最近的隊友)","italic":false,"color":"green"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"將它丟出即可發動","italic":false,"color":"white"}]']}}
execute if entity @e[tag=core,scores={rglinventory=2..3}] unless entity @e[tag=core,scores={rglspecial=3}] run item replace entity @a[gamemode=adventure,tag=green,team=bad] hotbar.0 with minecraft:lime_concrete_powder{display:{Name:'[{"text":"綠燈行","italic":false,"color":"dark_green","bold":true}]',Lore:['[{"text":"讓紅燈狀態的隊友可以行動","italic":false,"color":"green"}]','[{"text":"(只會救三格內且最近的隊友)","italic":false,"color":"green"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"將它丟出即可發動","italic":false,"color":"white"}]']}}
execute if entity @e[tag=core,scores={rglinventory=2..3}] unless entity @e[tag=core,scores={rglspecial=2}] run item replace entity @a[gamemode=adventure,tag=green,team=bad] hotbar.8 with minecraft:lime_concrete_powder{display:{Name:'[{"text":"綠燈行","italic":false,"color":"dark_green","bold":true}]',Lore:['[{"text":"讓紅燈狀態的隊友可以行動","italic":false,"color":"green"}]','[{"text":"(只會救三格內且最近的隊友)","italic":false,"color":"green"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"將它丟出即可發動","italic":false,"color":"white"}]']}}

execute if entity @e[tag=core,scores={rglinventory=1}] if entity @a[gamemode=adventure,tag=green,team=bad] run function rgl:start/green/green1
execute if entity @e[tag=core,scores={rglinventory=2}] if entity @a[gamemode=adventure,tag=green,team=bad] run function rgl:start/green/green2
execute if entity @e[tag=core,scores={rglinventory=3}] if entity @a[gamemode=adventure,tag=green,team=bad] run function rgl:start/green/green3
execute if entity @e[tag=core,scores={rglinventory=4}] as @a[gamemode=adventure,tag=green,team=bad] run function rgl:start/green/green4
#清
execute if entity @e[tag=core,scores={rglspecial=2}] run clear @a[gamemode=adventure,tag=green,team=bad] minecraft:red_concrete_powder
execute if entity @e[tag=core,scores={rglmode=1,rglspecial=1}] if score @e[tag=random7,limit=1] rglused matches ..0 run clear @a[gamemode=adventure,tag=green,team=bad] minecraft:red_concrete_powder
execute if entity @e[tag=core,scores={rglmode=3..5,rglspecial=1}] if score @e[tag=random7,limit=1] rglused matches ..0 run clear @a[gamemode=adventure,tag=green,team=bad] minecraft:red_concrete_powder
execute if entity @e[tag=core,scores={rglmode=8,rglspecial=1}] if score @e[tag=random7,limit=1] rglused matches ..0 run clear @a[gamemode=adventure,tag=green,team=bad] minecraft:red_concrete_powder
execute if entity @e[tag=core,scores={rglmode=1}] as @a[gamemode=adventure,tag=green,team=bad] if score @s usered >= @e[tag=core,limit=1] rglused run clear @s minecraft:red_concrete_powder
execute if entity @e[tag=core,scores={rglmode=3..5}] as @a[gamemode=adventure,tag=green,team=bad] if score @s usered >= @e[tag=core,limit=1] rglused run clear @s minecraft:red_concrete_powder
execute if entity @e[tag=core,scores={rglmode=8}] as @a[gamemode=adventure,tag=green,team=bad] if score @s usered >= @e[tag=core,limit=1] rglused run clear @s minecraft:red_concrete_powder

execute if entity @e[tag=core,scores={rglmode=6}] as @a[gamemode=adventure,tag=green,team=bad] if score @s rglcount matches -10..0 run clear @s minecraft:lime_concrete_powder
execute if entity @e[tag=core,scores={rglmode=8}] as @a[gamemode=adventure,tag=green,team=bad] if score @s rglgreen matches -10..0 run clear @s minecraft:lime_concrete_powder
execute if entity @e[tag=core,scores={rglmode=8}] as @a[gamemode=adventure,tag=green,team=bad] if score @s rglfree matches 1.. run clear @s minecraft:lime_concrete_powder
execute if entity @e[tag=core,scores={rglspecial=2}] run clear @a[gamemode=adventure,tag=green,team=bad] minecraft:white_concrete_powder
#Add
execute if entity @e[tag=core,scores={rglmode=7}] run effect give @a[gamemode=adventure,tag=green,team=bad] minecraft:resistance 2 9 true
execute if entity @e[tag=core,scores={rglspecial=2}] run item replace entity @a[gamemode=adventure,tag=green,team=bad] hotbar.8 with minecraft:white_concrete_powder{display:{Name:'[{"text":"白燈","italic":false,"color":"white","bold":true}]',Lore:['[{"text":"丟出後能夠切換是否要觸碰牆壁就暫停的機制","italic":false,"color":"white"}]']}}
#execute if entity @e[tag=core,scores={rglspecial=3}] as @a[gamemode=adventure,tag=green,team=bad] run function rgl:other2/childstick

#re
execute if entity @a[gamemode=adventure,tag=green,team=bad] run schedule clear rgl:start/green/greener
execute if entity @a[gamemode=adventure,tag=green,team=bad] run schedule function rgl:start/green/greener 20t
