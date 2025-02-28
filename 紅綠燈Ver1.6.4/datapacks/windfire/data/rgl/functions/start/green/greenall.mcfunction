execute if entity @a[gamemode=adventure,tag=green,team=bad] run schedule clear rgl:start/green/greener
#全體邏輯是只要丟出綠燈者當TOlime = 自救and他救
execute as @a[gamemode=!spectator,tag=!tolime,team=!good] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] if entity @a[tag=!green,tag=red,team=badred,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:lime,limit=1,sort=nearest] throwid3 run tag @s add tolime
execute as @a[gamemode=!spectator,tag=!tolime,team=!good] at @s if entity @e[type=item,predicate=rgl:lime,distance=..3] unless entity @a[tag=!green,tag=red,team=badred,distance=..3] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"附近三格內沒人無法使用綠燈","bold":"true","color":"white"}]
kill @e[type=item,predicate=rgl:lime]
execute if entity @a[tag=!green,tag=red,team=badred] run scoreboard players add @a[tag=tolime,team=!good] usegreen 1

execute if entity @a[tag=tolime,team=!good] run tag @a[tag=!green,tag=red,team=badred] add green
execute if entity @a[tag=tolime,team=!good] run team join bad @a[tag=green,tag=red,team=badred]
execute if entity @a[tag=tolime,team=!good] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=tolime,team=!good]","bold":"true"},{"text":"使用綠燈拯救了所有紅燈的人","color":"green"}]
#mode
execute if entity @e[tag=core,scores={rglmode=6}] run scoreboard players remove @a[tag=tolime,team=!good] rglcount 1
execute if entity @e[tag=core,scores={rglmode=6}] if entity @a[tag=tolime,team=!good] run scoreboard players remove @e[tag=core,limit=1] greencount 1
execute if entity @e[tag=core,scores={rglmode=7,rglinvulnerable=1}] run effect give @a[tag=green,tag=red,team=bad] minecraft:luck 3 9 true
execute if entity @e[tag=core,scores={rglmode=8}] run scoreboard players operation @a[tag=tolime,team=!good] rglfree = @e[tag=core,limit=1] rglfree
execute if entity @e[tag=core,scores={rglmode=8}] run scoreboard players remove @a[tag=tolime,team=!good] rglgreen 1

effect clear @a[tag=green,tag=red,team=bad] minecraft:resistance
execute if entity @e[tag=core,scores={rglinvulnerable=1}] run effect give @a[tag=green,tag=red,team=bad] minecraft:resistance 5 10 false
effect clear @a[tag=green,tag=red,team=bad] minecraft:levitation
execute as @a[tag=green,tag=red,team=bad] at @s run tp @s @e[type=minecraft:zombie,tag=rglname,limit=1,sort=nearest]
execute if entity @a[tag=green,tag=red,team=!good] as @e[type=minecraft:zombie,tag=rglname] at @s run tp @s ~ -70 ~
execute if entity @a[tag=green,tag=red,team=!good] as @e[type=minecraft:zombie,tag=rglname] at @s run kill @s
scoreboard players add @a[tag=green,tag=red,team=bad] begreen 1

execute if entity @e[tag=core,scores={rglspecial=3}] as @a[tag=green,tag=red,team=bad] run function rgl:other2/childstick
execute as @a[tag=green,tag=red,team=bad] run attribute @s minecraft:generic.attack_damage base set 1
tag @a[tag=green,tag=red,team=bad] remove firstred
tag @a[tag=green,tag=red,team=bad] remove red
tag @a[tag=tolime,team=bad] remove tolime

execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=bad] run function rgl:start/green/greener
execute if entity @a[gamemode=!spectator,tag=green,tag=!red,team=bad] run function rgl:start/green/greeneffect
execute if entity @e[tag=core,scores={rglmode=1..5}] run function rgl:other/getlaster
execute if entity @e[tag=core,scores={rglmode=6}] run function rgl:other/get
execute if entity @e[tag=core,scores={rglmode=7..9}] run function rgl:other/getlaster
