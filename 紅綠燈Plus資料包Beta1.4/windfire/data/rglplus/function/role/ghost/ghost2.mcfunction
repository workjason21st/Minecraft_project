execute store result score @s rglplusweapon run random value 0..4
#
execute if score 7-0-7-0-000700000007 rglplusweapon matches 11 run clear @s[scores={rglplusweapon=0..4},advancements={rglplus:firework2=true}] #rglplus:sword_main
execute unless score 7-0-7-0-000700000007 rglplusweapon matches 11 run clear @s[scores={rglplusweapon=0..4}] #rglplus:sword_main
give @s[scores={rglplusweapon=1..5}] minecraft:glass_pane
give @s[scores={rglplusweapon=2..5}] minecraft:white_stained_glass_pane
give @s[scores={rglplusweapon=3..5}] minecraft:gray_stained_glass_pane
give @s[scores={rglplusweapon=4..5}] minecraft:light_gray_stained_glass_pane

execute if score 7-0-7-0-000700000007 rglplusweapon matches 11 run clear @s[scores={rglplusweapon=5},advancements={rglplus:firework2=true}] #rglplus:sword
execute unless score 7-0-7-0-000700000007 rglplusweapon matches 11 run clear @s[scores={rglplusweapon=5}] #rglplus:sword
execute if score 7-0-7-0-000700000007 rglplusweapon matches 11 as @s[advancements={rglplus:firework2=true}] run function rglplus:role/ghost/giveweapon
execute unless score 7-0-7-0-000700000007 rglplusweapon matches 11 as @s run function rglplus:role/ghost/giveweapon
clear @s[scores={rglplusweapon=0..5}] #rglplus:glass
scoreboard players set @s[scores={usesword=1..}] usesword 0
