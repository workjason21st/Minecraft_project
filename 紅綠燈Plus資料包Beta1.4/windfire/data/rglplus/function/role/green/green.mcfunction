execute if entity @a[gamemode=adventure,tag=green,team=human] run schedule clear rglplus:role/greener
#個人邏輯是把要被轉換者當Tolime 丟綠燈當Tolimes
#分成別人救跟自救
#有
execute as @a[tag=green,tag=!tolime,tag=!red,team=human,scores={rglplusgreencount=0}] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @s add notolime
execute as @a[tag=green,tag=!tolime,tag=!red,team=human,scores={rglplusgreencount=1..}] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @s add tolimes
execute as @a[tag=green,tag=!tolime,tag=!red,team=human,scores={rglplusgreencount=1..}] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @p[gamemode=!spectator,tag=!green,tag=!tolime,tag=red,team=humanred,distance=..3] add tolime
#自
execute as @a[tag=!green,tag=!tolime,tag=red,team=humanred,scores={rglplusgreencount=0}] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @s add notolime
execute as @a[tag=!green,tag=!tolime,tag=red,team=humanred,scores={rglplusgreencount=1..}] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @s add tolimes
execute as @a[tag=!green,tag=!tolime,tag=red,team=humanred,scores={rglplusgreencount=1..}] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest] throw_id3 run tag @s add tolime
execute as @a[tag=tolime,team=humanred] at @s as @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest,distance=..4] run kill @s
execute unless entity @a[tag=tolime,team=humanred] as @a[gamemode=!spectator,tag=notolime] at @s as @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest,distance=..4] run kill @s
##別人附近沒人
execute unless entity @a[tag=notolime,gamemode=!spectator,tag=!tolime,team=!ghost] as @a[tag=green,tag=!tolime,tag=!red,team=human] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"附近三格內沒人無法使用綠燈","bold":true,"color":"white"}]
execute unless entity @a[tag=notolime,gamemode=!spectator,tag=!tolime,team=!ghost] as @a[tag=green,tag=!tolime,tag=!red,team=human] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] run kill @e[type=item,predicate=rglplus:lime,limit=1,sort=nearest,distance=..3]
#
execute as @a[tag=notolime,gamemode=!spectator,tag=!tolime,team=!ghost] at @s if entity @e[type=item,predicate=rglplus:lime,distance=..3] unless entity @a[tag=!green,tag=red,team=humanred,distance=..3] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"綠燈剩餘數量不足無法使用","bold":true,"color":"white"}]

#拯救+1
tag @a[tag=!green,tag=tolime,tag=red,team=humanred] add green
execute if entity @a[tag=green,tag=tolime,tag=red,team=humanred] run scoreboard players add @a[gamemode=!spectator,tag=tolimes,team=human] usegreen 1
team join human @a[tag=green,tag=tolime,tag=red,team=humanred]
experience add @a[tag=green,tag=tolime,tag=red,team=human] -999999999
execute as @a[tag=green,tag=tolime,tag=red,team=human] run function rglplus:start/game/xpreturn
execute as @a[tag=green,tag=tolime,tag=red,team=human] at @s if score @s rglplusrescue matches 0 if entity @p[gamemode=!spectator,tag=green,tag=tolimes,tag=!tolime,tag=!red,team=human,distance=..3] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@p[gamemode=!spectator,tag=green,tag=!tolime,tag=!red,team=human,distance=..3]","bold":true},{"text":"使用綠燈拯救了","color":"green"},{"selector":"@s","bold":true}]
execute as @a[tag=green,tag=tolime,tag=red,team=human] at @s if score @s rglplusrescue matches 0 unless entity @p[gamemode=!spectator,tag=green,tag=tolimes,tag=!tolime,tag=!red,team=human,distance=..3] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s","bold":true},{"text":"使用綠燈拯救自己","color":"green"}]
#mode
execute if entity @e[tag=rglplus,tag=core,scores={rglplusgreencount=1..60,rglplusalleffect=0}] if entity @a[tag=green,tag=tolime,tag=red,team=human] run scoreboard players remove @a[gamemode=!spectator,tag=tolimes,team=human] rglplusgreencount 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusbyself=1}] if entity @a[tag=green,tag=tolime,tag=red,team=human] run scoreboard players set @a[gamemode=!spectator,tag=tolimes,team=human] rglplusbyself 25
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglinvulnerable=1}] run effect give @a[tag=green,tag=tolime,tag=red,team=human] minecraft:luck 5 9 true

effect clear @a[tag=green,tag=tolime,tag=red,team=human] minecraft:resistance
#execute if entity @e[tag=rglplus,tag=core,scores={rglinvulnerable=1}] run effect give @a[tag=green,tag=tolime,tag=red,team=human] minecraft:resistance 5 10 false
execute as @a[tag=green,tag=tolime,tag=red,team=human] at @s run tp @s @e[type=minecraft:zombie,tag=rglplusname,limit=1,sort=nearest]
execute if entity @a[tag=green,tag=tolime,tag=red,team=human] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[gamemode=!spectator,team=!ghost,tag=red,tag=!green,distance=..1] run tp @s ~ -100 ~
execute if entity @a[tag=green,tag=tolime,tag=red,team=human] as @e[type=minecraft:zombie,tag=rglplusname] at @s unless entity @p[gamemode=!spectator,team=!ghost,tag=red,tag=!green,distance=..1] run kill @s
scoreboard players add @a[tag=green,tag=tolime,tag=!tolimes,tag=red,team=human] begreen 1

execute if entity @e[tag=rglplus,tag=core,scores={rglpluskidsword=1..}] unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] as @a[tag=green,tag=tolime,tag=red,team=human] run function rglplus:start/game/sword/childstick
execute as @a[tag=green,tag=tolime,tag=red,team=human] run attribute @s minecraft:attack_damage base set 1
execute as @a[tag=green,tag=tolime,tag=red,team=human] run attribute @s minecraft:gravity base set 0.08
execute as @a[tag=green,tag=tolime,tag=red,team=human] run attribute @s minecraft:burning_time base set 1
execute if score 7-0-7-0-000700000007 rglplusrescue matches 1.. run scoreboard players operation @a[tag=green,tag=tolime,tag=red,team=human] rglplusrescue = 7-0-7-0-000100000000 rglplusrescue
tag @a[tag=green,tag=tolime,tag=red,team=human] remove red
tag @a[tag=green,tag=tolime,tag=!red,team=human] remove tolime
tag @a[tag=tolimes,team=human] remove tolimes
tag @a[tag=notolime,team=!ghost] remove notolime

execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=human] run function rglplus:role/greener
execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=human] run function rglplus:role/greeneffect
execute unless entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule clear rglplus:role/red/notmove
function rglplus:refresh/bossbar

#mode2
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 1 if score 7-0-7-0-000700000007 playgame matches 1..2 unless entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 2.. if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[tag=laster,gamemode=adventure] run function rglplus:start/game/laster