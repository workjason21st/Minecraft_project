execute if entity @a[gamemode=adventure,tag=green,team=bad] run schedule clear rgl:start/green/greener
#個人邏輯是把要被轉換者當Tolime 丟綠燈當Tolimes
#分成別人救跟自救
#有
execute as @a[tag=green,tag=!tolime,tag=!red,team=bad] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid3 run tag @s add tolimes
execute as @a[tag=green,tag=!tolime,tag=!red,team=bad] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid3 run tag @p[gamemode=!spectator,tag=!green,tag=!tolime,tag=red,team=badred,distance=..3] add tolime
#自
execute as @a[tag=!green,tag=!tolime,tag=red,team=badred] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid3 run tag @s add tolimes
execute as @a[tag=!green,tag=!tolime,tag=red,team=badred] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid3 run tag @s add tolime
execute as @a[tag=tolime,team=badred] at @s as @e[type=item,predicate=rgl:lime,limit=1,sort=nearest,distance=..4] run kill @s
##別人附近沒人
execute as @a[tag=green,tag=!tolime,tag=!red,team=bad] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"附近三格內沒人無法使用綠燈","bold":"true","color":"white"}]
execute as @a[tag=green,tag=!tolime,tag=!red,team=bad] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] run kill @e[type=item,predicate=rgl:lime,limit=1,sort=nearest,distance=..3]

#拯救+1
tag @a[tag=!green,tag=tolime,tag=red,team=badred] add green
execute if entity @a[tag=green,tag=tolime,tag=red,team=badred] run scoreboard players add @a[gamemode=!spectator,tag=tolimes,team=bad] usegreen 1
team join bad @a[tag=green,tag=tolime,tag=red,team=badred]
execute as @a[tag=green,tag=tolime,tag=red,team=bad] at @s if entity @p[gamemode=!spectator,tag=green,tag=tolimes,tag=!tolime,tag=!red,team=bad,distance=..3] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@p[gamemode=!spectator,tag=green,tag=!tolime,tag=!red,team=bad,distance=..3]","bold":"true"},{"text":"使用綠燈拯救了","color":"green"},{"selector":"@s","bold":"true"}]
execute as @a[tag=green,tag=tolime,tag=red,team=bad] at @s unless entity @p[gamemode=!spectator,tag=green,tag=tolimes,tag=!tolime,tag=!red,team=bad,distance=..3] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":"true"},{"text":"使用綠燈拯救自己","color":"green"}]
#mode
execute if entity @e[tag=core,scores={rglmode=6}] if entity @a[tag=green,tag=tolime,tag=red,team=bad] run scoreboard players remove @a[gamemode=!spectator,tag=tolimes,team=bad] rglcount 1
execute if entity @e[tag=core,scores={rglmode=6}] if entity @a[tag=green,tag=tolime,tag=red,team=bad] run scoreboard players remove @e[tag=core,limit=1] greencount 1
execute if entity @e[tag=core,scores={rglmode=7,rglinvulnerable=1}] run effect give @a[tag=green,tag=tolime,tag=red,team=bad] minecraft:luck 5 9 true
execute if entity @e[tag=core,scores={rglmode=8}] if entity @a[tag=green,tag=tolime,tag=red,team=bad] run scoreboard players operation @a[gamemode=!spectator,tag=tolimes,team=bad] rglfree = @e[tag=core,limit=1] rglfree
execute if entity @e[tag=core,scores={rglmode=8}] if entity @a[tag=green,tag=tolime,tag=red,team=bad] run scoreboard players remove @a[gamemode=!spectator,tag=tolimes,team=bad] rglgreen 1
#execute if entity @e[tag=core,scores={rglspecial=2,rglinvulnerable=1}] run effect give @a[tag=green,tag=tolime,tag=red,team=bad] minecraft:unluck 5 9 true

effect clear @a[tag=green,tag=tolime,tag=red,team=bad] minecraft:resistance
execute if entity @e[tag=core,scores={rglinvulnerable=1}] run effect give @a[tag=green,tag=tolime,tag=red,team=bad] minecraft:resistance 5 10 false
effect clear @a[tag=green,tag=tolime,tag=red,team=bad] minecraft:levitation
execute as @a[tag=green,tag=tolime,tag=red,team=bad] at @s run tp @s @e[type=minecraft:zombie,tag=rglname,limit=1,sort=nearest]
execute if entity @a[tag=green,tag=tolime,tag=red,team=bad] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[gamemode=!spectator,team=!good,tag=red,tag=!green,distance=..1] run tp @s ~ -70 ~
execute if entity @a[tag=green,tag=tolime,tag=red,team=bad] as @e[type=minecraft:zombie,tag=rglname] at @s unless entity @p[gamemode=!spectator,team=!good,tag=red,tag=!green,distance=..1] run kill @s
scoreboard players add @a[tag=green,tag=tolime,tag=red,team=bad] begreen 1

execute if entity @e[tag=core,scores={rglspecial=3}] as @a[tag=green,tag=tolime,tag=red,team=bad] run function rgl:other2/childstick
execute as @a[tag=green,tag=tolime,tag=red,team=bad] run attribute @s minecraft:generic.attack_damage base set 1
tag @a[tag=green,tag=tolime,tag=red,team=bad] remove red
tag @a[tag=green,tag=tolime,tag=!red,team=bad] remove tolime
tag @a[tag=tolimes,team=bad] remove tolimes

execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=bad] run function rgl:start/green/greener
execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=bad] run function rgl:start/green/greeneffect
execute if entity @e[tag=core,scores={rglmode=1..5}] run function rgl:other/getlaster
execute if entity @e[tag=core,scores={rglmode=6}] run function rgl:other/get
execute if entity @e[tag=core,scores={rglmode=7..9}] run function rgl:other/getlaster
