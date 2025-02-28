execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run schedule clear rgl:start/red/reder

effect give @a[tag=red,tag=!green,team=badred] minecraft:resistance 1 9 true
effect give @a[tag=red,tag=!green,team=badred] minecraft:water_breathing 1 9 true
effect give @a[tag=red,tag=!green,team=badred] minecraft:levitation 1 255 true
effect give @a[tag=red,tag=!green,team=badred] minecraft:glowing 1 0 true
execute if entity @e[tag=core,scores={rglmode=7}] run effect give @a[tag=red,tag=!green,team=badred] minecraft:luck 1 9 true
execute as @a[tag=red,tag=!green,team=badred,scores={foodL=..19}] run effect give @s minecraft:saturation 1 0 true
#execute as @a[gamemode=adventure,tag=red,tag=!green,team=badred] at @s run effect give @e[tag=rglname,distance=0] minecraft:glowing 1 0 true
clear @a[tag=red,tag=!green,team=badred]

execute as @e[type=zombie,tag=rglname] at @s rotated as @p[gamemode=adventure,tag=red,tag=!green,team=badred] run tp ~ ~ ~
#自救
execute if entity @e[tag=core,scores={rglmode=2..3}] as @a[tag=red,tag=!green,team=badred,scores={rglkill=0..7}] if score @s sqrt < @e[tag=core,limit=1] rglself run item replace entity @s weapon.mainhand with minecraft:lime_concrete_powder{display:{Name:'[{"text":"綠燈行","italic":false,"color":"dark_green","bold":true}]',Lore:['[{"text":"讓紅燈狀態的隊友可以行動","italic":false,"color":"green"}]','[{"text":"(只會救三格內且最近的隊友)","italic":false,"color":"green"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"將它丟出即可發動","italic":false,"color":"white"}]']}}
execute if entity @e[tag=core,scores={rglmode=8}] as @a[tag=red,tag=!green,team=badred,scores={rglfree=0}] run item replace entity @s weapon.mainhand with minecraft:lime_concrete_powder{display:{Name:'[{"text":"綠燈行","italic":false,"color":"dark_green","bold":true}]',Lore:['[{"text":"讓紅燈狀態的隊友可以行動","italic":false,"color":"green"}]','[{"text":"(只會救三格內且最近的隊友)","italic":false,"color":"green"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"將它丟出即可發動","italic":false,"color":"white"}]']}}
execute if entity @e[tag=core,scores={rglmode=8}] as @a[gamemode=adventure,tag=red,tag=!green,team=badred] if score @s rglgreen matches -10..0 run clear @s minecraft:lime_concrete_powder
execute if entity @e[tag=core,scores={rglmode=8}] as @a[gamemode=adventure,tag=red,tag=!green,team=badred] if score @s rglfree matches 1.. run clear @s minecraft:lime_concrete_powder

#re
execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run schedule clear rgl:start/red/reder
execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=badred] run schedule function rgl:start/red/reder 5t
