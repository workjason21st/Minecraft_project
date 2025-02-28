execute if entity @a[gamemode=adventure,tag=green,team=human] run schedule clear rglplus:role/greener
#全體邏輯是只要丟出綠燈者當TOlime = 自救and他救
execute as @a[gamemode=!spectator,tag=!tolime,team=!ghost] at @s if entity @e[tag=rglplus,tag=random1,scores={rglplusgreencount=1..}] if entity @e[type=item,predicate=rglplus:lime,distance=..3] if entity @a[tag=!green,tag=red,team=humanred,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @s add tolime
execute as @a[gamemode=!spectator,tag=!tolime,team=!ghost] at @s if entity @e[tag=rglplus,tag=random1,scores={rglplusgreencount=0}] if entity @e[type=item,predicate=rglplus:lime,distance=..3] if entity @a[tag=!green,tag=red,team=humanred,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @s add notolime
execute unless entity @a[tag=notolime,gamemode=!spectator,tag=!tolime,team=!ghost] as @a[gamemode=!spectator,tag=!tolime,team=!ghost] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] unless entity @a[tag=!green,tag=red,team=humanred,distance=..3] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"附近三格內沒人無法使用綠燈","bold":true,"color":"white"}]
execute as @a[tag=notolime,gamemode=!spectator,tag=!tolime,team=!ghost] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] unless entity @a[tag=!green,tag=red,team=humanred,distance=..3] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"綠燈剩餘數量不足無法使用","bold":true,"color":"white"}]
kill @e[type=item,predicate=rglplus:lime]
execute if entity @a[tag=!green,tag=red,team=humanred] run scoreboard players add @a[tag=tolime,team=!ghost] usegreen 1

execute if entity @a[tag=tolime,team=!ghost] run tag @a[tag=!green,tag=red,team=humanred] add green
execute if entity @a[tag=tolime,team=!ghost] run team join human @a[tag=green,tag=red,team=humanred]
execute if entity @a[tag=tolime,team=!ghost] run experience add @a[tag=green,tag=tolime,tag=red,team=human] -999999999
execute if entity @a[tag=tolime,team=!ghost] as @a[tag=green,tag=tolime,tag=red,team=human] run function rglplus:start/game/xpreturn
execute if entity @a[tag=tolime,team=!ghost] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=tolime,team=!ghost]","bold":true},{"text":"使用綠燈拯救了所有紅燈的人","color":"green"}]
#mode
execute if entity @e[tag=rglplus,tag=core,scores={rglplusgreencount=1..60,rglplusalleffect=1}] if entity @a[tag=tolime,team=!ghost] run scoreboard players remove @e[tag=rglplus,tag=random1,limit=1] rglplusgreencount 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusbyself=1}] if entity @a[tag=green,tag=tolime,tag=red,team=human] run scoreboard players set @a[gamemode=!spectator,tag=tolimes,team=human] rglplusbyself 25
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusinvulnerable=1}] run effect give @a[tag=green,tag=tolime,tag=red,team=human] minecraft:luck 5 9 true

effect clear @a[tag=green,tag=red,team=human] minecraft:resistance
execute if entity @e[tag=rglplus,tag=core,scores={rglplusinvulnerable=1}] run effect give @a[tag=green,tag=red,team=human] minecraft:resistance 5 10 false
execute as @a[tag=green,tag=red,team=human] at @s run tp @s @e[type=minecraft:zombie,tag=rglplusname,limit=1,sort=nearest]
execute if entity @a[tag=green,tag=red,team=!ghost] as @e[type=minecraft:zombie,tag=rglplusname] at @s run tp @s ~ -70 ~
execute if entity @a[tag=green,tag=red,team=!ghost] as @e[type=minecraft:zombie,tag=rglplusname] at @s run kill @s
scoreboard players add @a[tag=green,tag=red,tag=!tolime,team=human] begreen 1

execute if entity @e[tag=rglplus,tag=core,scores={rglpluskidsword=1..}] unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] as @a[tag=green,tag=red,team=human] run function rglplus:start/game/sword/childstick
execute as @a[tag=green,tag=red,team=human] run attribute @s minecraft:attack_damage base set 1
execute as @a[tag=green,tag=red,team=human] run attribute @s minecraft:gravity base set 0.08
execute as @a[tag=green,tag=red,team=human] run attribute @s minecraft:burning_time base set 1
#execute if score 7-0-7-0-000700000007 rglplusrescue matches 1.. run scoreboard players operation @a[tag=green,tag=red,team=human] rglplusrescue = 7-0-7-0-000100000000 rglplusrescue
tag @a[tag=green,tag=red,team=human] remove firstred
tag @a[tag=green,tag=red,team=human] remove red
tag @a[tag=tolime,team=human] remove tolime
tag @a[tag=notolime,team=!ghost] remove notolime

execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=human] run function rglplus:role/greener
execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=human] run function rglplus:role/greeneffect
function rglplus:refresh/bossbar

#mode2
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 1 if score 7-0-7-0-000700000007 playgame matches 1..2 unless entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 2.. if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
