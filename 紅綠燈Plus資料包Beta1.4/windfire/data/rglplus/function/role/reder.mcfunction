execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule clear rglplus:role/reder

#effect give @a[tag=red,tag=!green,team=humanred] minecraft:levitation 1 0 true
effect give @a[tag=red,tag=!green,team=humanred] minecraft:resistance 1 9 true
effect give @a[tag=red,tag=!green,team=humanred] minecraft:water_breathing 1 9 true
effect give @a[tag=red,tag=!green,team=humanred] minecraft:glowing 1 0 true
execute if score 7-0-7-0-000700000007 rglplusmode matches 3 run effect give @a[tag=red,tag=!green,team=humanred] minecraft:luck 1 9 true
execute as @a[tag=red,tag=!green,team=humanred,scores={foodL=..18}] run effect give @s minecraft:saturation 1 0 true
#execute as @a[gamemode=adventure,tag=red,tag=!green,team=humanred] at @s run effect give @e[tag=rglplusname,distance=0] minecraft:glowing 1 0 true
clear @a[tag=red,tag=!green,team=humanred] #rglplus:color
clear @a[tag=red,tag=!green,team=humanred] #rglplus:kidsword

execute as @e[type=minecraft:zombie,tag=rglplusname] at @s rotated as @p[gamemode=adventure,tag=red,tag=!green,team=humanred] run tp ~ ~ ~
#自救
execute unless score 7-0-7-0-000700000007 rglplusguardred matches 0 unless score 7-0-7-0-000700000007 rglplusguardred matches 2 as @a[tag=red,tag=!green,predicate=rglplus:character/humanred/by0_other] run item replace entity @s weapon.mainhand with minecraft:lime_concrete_powder[custom_name='["",{"text":"綠燈行","italic":false,"color":"dark_green","bold":true}]',lore=['["",{"text":"讓紅燈狀態的隊友可以行動","italic":false,"color":"green"}]','[{"text":"(只會救三格內且最近的隊友)","italic":false,"color":"green"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"將它丟出即可發動","italic":false,"color":"white"}]']]
execute if score 7-0-7-0-000700000007 rglplusbyself matches 1 as @a[tag=red,tag=!green,team=humanred,scores={rglplusbyself=0}] run item replace entity @s weapon.mainhand with minecraft:lime_concrete_powder[custom_name='["",{"text":"綠燈行","italic":false,"color":"dark_green","bold":true}]',lore=['["",{"text":"讓紅燈狀態的隊友可以行動","italic":false,"color":"green"}]','[{"text":"(只會救三格內且最近的隊友)","italic":false,"color":"green"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"將它丟出即可發動","italic":false,"color":"white"}]']]
execute if score 7-0-7-0-000700000007 rglplusbyself matches 1 as @a[gamemode=adventure,tag=red,tag=!green,team=humanred] if score @s rglplusgreencount matches -10..0 run clear @s minecraft:lime_concrete_powder
execute if score 7-0-7-0-000700000007 rglplusbyself matches 1 as @a[gamemode=adventure,tag=red,tag=!green,team=humanred] if score @s rglplusbyself matches 1..60 run clear @s minecraft:lime_concrete_powder

#鬼懲罰
execute if score 7-0-7-0-000700000007 rglplusguardred matches 2..3 as @a[tag=red,tag=!green,team=humanred,scores={rglplus_sqrt=..3}] at @s run effect give @p[team=ghost,gamemode=adventure] slowness 2 2 false
execute if score 7-0-7-0-000700000007 rglplusguardred matches 2..3 as @a[tag=red,tag=!green,team=humanred,scores={rglplus_sqrt=..7}] at @s run effect give @p[team=ghost,gamemode=adventure] slowness 1 1 false
execute if score 7-0-7-0-000700000007 rglplusguardred matches 2..3 as @a[tag=red,tag=!green,team=humanred,scores={rglplus_sqrt=..10}] at @s run effect give @p[team=ghost,gamemode=adventure] slowness 1 0 false
execute if score 7-0-7-0-000700000007 rglplusguardred matches 2..3 as @a[tag=red,tag=!green,team=humanred,scores={rglplus_sqrt=..5}] at @s run effect give @p[team=ghost,gamemode=adventure] mining_fatigue 2 3 false 
execute if score 7-0-7-0-000700000007 rglplusguardred matches 2..3 as @a[tag=red,tag=!green,team=humanred,scores={rglplus_sqrt=..10}] at @s run effect give @p[team=ghost,gamemode=adventure] mining_fatigue 1 1 false 

#re
execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule clear rglplus:role/reder
execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule function rglplus:role/reder 5t
execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule function rglplus:role/red/notmove 1t
