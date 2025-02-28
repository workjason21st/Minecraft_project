execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule clear rglplus:role/reder

scoreboard players add @s[tag=green,tag=!red,team=human] usered 1
team join humanred @s[tag=green,tag=!red,team=human]
execute if entity @e[tag=rglplus,tag=core,scores={rglplusalleffect=0}] run scoreboard players remove @s[tag=green,tag=!red,team=human] rglplusredcount 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusalleffect=1}] if entity @a[tag=green,tag=!red,team=humanred] run scoreboard players remove 7-0-7-0-000100000000 rglplusredcount 1
execute if entity @s[tag=green,tag=!red,team=humanred] if score @s rglplusrescue matches 0 run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s[tag=green,tag=!red,team=humanred]","bold":true,"color":"red"},{"text":"碰觸到牆壁暫停自己","color":"red"}]
execute if entity @s[tag=green,tag=!red,team=humanred] run effect give @a[gamemode=adventure,team=humanred] minecraft:glowing 1 0 true
scoreboard players operation @s[tag=green,tag=!red,team=humanred] rglplusredtime = 7-0-7-0-000700000007 rglplusredtime
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] store result score @s rglplusclearxporb run experience query @s levels
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusweapon=8}] run xp add @s[tag=green,tag=!red,team=humanred] -999999

#
execute as @s[tag=green,tag=!red,team=humanred] if predicate rglplus:vehicle_car at @s run summon zombie ~ ~1 ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {count:1, id:red_banner}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:19999980,show_particles:0b}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rglplus","rglplusnamere","rglplusname"]}
execute as @s[tag=green,tag=!red,team=humanred] unless predicate rglplus:vehicle_car at @s run summon zombie ~ ~ ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {count:1, id:red_banner}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:19999980,show_particles:0b}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rglplus","rglplusnamere","rglplusname"]}
execute as @e[tag=rglplusnamere,team=] run team join humanred @s

scoreboard players set @s[tag=green,tag=!red,team=humanred] rglplusredwall 1
execute as @s[tag=green,tag=!red,team=human] run function rglplus:role/white/redtowhite
attribute @s[tag=green,tag=!red,team=humanred] minecraft:attack_damage base set 0
attribute @s[tag=green,tag=!red,team=humanred] minecraft:gravity base set 0
attribute @s[tag=green,tag=!red,team=humanred] minecraft:burning_time base set 0
tag @s[tag=green,tag=!red,team=humanred] add red
tag @s[tag=green,tag=red,team=humanred] remove green

execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run function rglplus:role/reder
function rglplus:refresh/bossbar

#mode2
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 1 if score 7-0-7-0-000700000007 playgame matches 1..2 unless entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 2.. if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
#
execute unless entity @a[team=human,gamemode=adventure] run function rglplus:final/inspect