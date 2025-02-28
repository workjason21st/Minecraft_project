execute if entity @s[tag=!eggegg] run tellraw @s ["",{"text":"『彩蛋』","color":"gold"},{"selector":"@s"},{"text":"成功餵養狐狸","color":"white"}]
tellraw @s[tag=!eggegg] ["",{"text":"『密語』","color":"white"},{"text":"得到了莓有用","color":"white"}]
#give @s[tag=!eggegg] minecraft:sweet_berries{Unbreakable:1,display:{Name:'[{"text":"莓有用","bold":true,"color":"gold"}]'},HideFlags:1,Enchantments:[{id:"minecraft:fortune",lvl:7}]} 22
give @s[tag=!eggegg] minecraft:sweet_berries[unbreakable={},custom_name='["",{"text":"莓有用","bold":true,"color":"gold"}]',enchantments={levels:{fortune:7},show_in_tooltip:false}] 22
execute as @s[tag=!eggegg] at @s run summon minecraft:fox ~ ~ ~ {Tags:["rgl","lobby0","foxsnow","0egg"],Type:"snow",Age:-9999,Invulnerable:1b,PersistenceRequired:1b,CustomName:"\"狐狸\"",attributes:[{id:"generic.attack_damage",base:0f},{id:"generic.follow_range",base:99f}]}
setblock 91 47 125 air
execute as @s[tag=!eggegg] at @s run setblock 91 47 125 minecraft:oak_sign{front_text:{messages:['["",{"selector":"@p[tag=!eggegg]"}]','[""]','[""]','[""]']}}
#execute as @s[tag=!eggegg] at @s run loot replace entity @e[type=fox,limit=1,sort=nearest] weapon.mainhand kill @s
execute as @s[tag=!eggegg] at @s run data modify entity @e[type=fox,tag=foxsnow,limit=1,sort=nearest] CustomName set from block 91 47 125 front_text
execute as @s[tag=!eggegg] at @s run data modify entity @e[type=fox,tag=foxsnow,limit=1,sort=nearest] leash.[] set from entity @s UUID
execute as @s[tag=!eggegg] at @s run data modify entity @e[type=fox,tag=foxsnow,limit=1,sort=nearest] LoveCause set from entity @s UUID
execute as @s[tag=!eggegg] at @s run data modify entity @e[type=fox,tag=foxsnow,limit=1,sort=nearest] Trusted.[] set from entity @s UUID
execute as @s[tag=!eggegg] at @s store result score @e[type=fox,tag=foxsnow,limit=1,sort=nearest] throw_id0 run data get entity @s UUID[0]
execute as @s[tag=!eggegg] at @s store result score @e[type=fox,tag=foxsnow,limit=1,sort=nearest] throw_id1 run data get entity @s UUID[1]
execute as @s[tag=!eggegg] at @s store result score @e[type=fox,tag=foxsnow,limit=1,sort=nearest] throw_id2 run data get entity @s UUID[2]
execute as @s[tag=!eggegg] at @s store result score @e[type=fox,tag=foxsnow,limit=1,sort=nearest] throw_id3 run data get entity @s UUID[3]

tag @s add eggegg
#execute as @e[tag=rglnamere,team=] at @s store result score @s throwid0 run data get entity @p[gamemode=!spectator,tag=green,tag=tored,tag=!red,team=badred] UUID[0]
