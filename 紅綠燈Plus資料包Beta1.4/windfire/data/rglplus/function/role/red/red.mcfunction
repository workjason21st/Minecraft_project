execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule clear rglplus:role/reder

execute as @a[gamemode=!spectator,tag=green,tag=!tored,tag=!red,team=human,scores={deathdetect=0}] at @s if entity @e[type=item,predicate=rglplus:red,distance=..3] if score @s throw_id0 = @n[type=item,predicate=rglplus:red] throw_id0 if score @s throw_id1 = @n[type=item,predicate=rglplus:red] throw_id1 if score @s throw_id2 = @n[type=item,predicate=rglplus:red] throw_id2 if score @s throw_id3 = @n[type=item,predicate=rglplus:red] throw_id3 run tag @s add tored
execute as @a[tag=green,tag=tored,tag=!red,team=human] at @s as @n[type=item,predicate=rglplus:red] run kill @s

scoreboard players add @a[tag=green,tag=tored,tag=!red,team=human] usered 1
team join humanred @a[tag=green,tag=tored,tag=!red,team=human]
execute if entity @a[tag=green,tag=tored,tag=!red,team=humanred] run scoreboard players remove @a[tag=green,tag=tored,tag=!red,team=humanred] rglplusredcount 1
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] if score @s rglplusrescue matches 0 run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true,"color":"red"},{"text":"使用紅燈暫停自己","color":"red"}]
execute if entity @a[tag=green,tag=tored,tag=!red,team=humanred] run effect give @a[gamemode=adventure,team=human] minecraft:glowing 1 0 true
scoreboard players operation @a[tag=green,tag=tored,tag=!red,team=humanred] rglplusredtime = 7-0-7-0-000700000007 rglplusredtime
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] store result score @s rglplusclearxporb run experience query @s levels
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusweapon=8}] run xp add @a[tag=green,tag=tored,tag=!red,team=humanred] -999999

#
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] if predicate rglplus:vehicle_car at @s run summon zombie ~ ~1 ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {count:1, id:red_banner}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:19999980,show_particles:0b}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rglplus","rglplusnamere","rglplusname"]}
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] unless predicate rglplus:vehicle_car at @s run summon zombie ~ ~ ~ {NoAI:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {count:1, id:red_banner}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:19999980,show_particles:0b}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["rglplus","rglplusnamere","rglplusname"]}
execute as @e[tag=rglplusnamere,team=] run team join humanred @s

scoreboard players set @a[tag=green,tag=tored,tag=!red,team=humanred] rglplusredwall 1
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] run attribute @s minecraft:attack_damage base set 0
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] run attribute @s minecraft:gravity base set 0
execute as @a[tag=green,tag=tored,tag=!red,team=humanred] run attribute @s minecraft:burning_time base set 0
tag @a[tag=green,tag=tored,tag=!red,team=humanred] add red
tag @a[tag=green,tag=tored,tag=red,team=humanred] remove green
tag @a[tag=tored,tag=red,team=humanred] remove tored

execute if entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run function rglplus:role/reder
function rglplus:refresh/bossbar
