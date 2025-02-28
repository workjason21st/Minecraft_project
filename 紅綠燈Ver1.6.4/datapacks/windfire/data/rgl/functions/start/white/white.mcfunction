
execute as @a[gamemode=!spectator,tag=!whitechange,team=bad] at @s if entity @e[type=item,predicate=rgl:white,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:white,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:white,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:white,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:white,limit=1,sort=nearest] throwid3 run tag @s add whitechange
execute as @a[tag=whitechange,team=bad] at @s as @e[type=item,predicate=rgl:white,limit=1,sort=nearest] run kill @s
#
execute as @a[tag=whitechange,team=bad,scores={rglspecial=1}] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"更改偵測牆壁為開啟狀態","color":"white","bold":"true"}]
execute as @a[tag=whitechange,team=bad,scores={rglspecial=1}] run scoreboard players set @s rglspecial 3

execute as @a[tag=whitechange,team=bad,scores={rglspecial=2}] run tellraw @s ["",{"text":"紅綠燈： ","color":"gray"},{"text":"更改偵測牆壁為關閉狀態","color":"gray"}]
execute as @a[tag=whitechange,team=bad,scores={rglspecial=2}] run scoreboard players set @s rglspecial 1
execute as @a[tag=whitechange,team=bad,scores={rglspecial=3}] run scoreboard players set @s rglspecial 2

tag @a[tag=whitechange,team=bad] remove whitechange
