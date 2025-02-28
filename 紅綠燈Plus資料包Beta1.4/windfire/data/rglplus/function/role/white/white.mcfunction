
execute as @a[gamemode=!spectator,tag=!whitechange,team=human] at @s if entity @e[type=item,predicate=rglplus:white,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:white,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:white,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:white,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:white,limit=1,sort=nearest] throw_id3 run tag @s add whitechange
execute as @a[tag=whitechange,team=human] at @s as @e[type=item,predicate=rglplus:white,limit=1,sort=nearest] run kill @s
#
execute as @a[tag=whitechange,team=human,scores={rglplusredwall=1}] run tellraw @s ["",{"text":"紅綠燈： ","color":"white"},{"text":"更改偵測牆壁為開啟狀態","color":"white","bold":true}]
execute as @a[tag=whitechange,team=human,scores={rglplusredwall=1}] run scoreboard players set @s rglplusredwall 3

execute as @a[tag=whitechange,team=human,scores={rglplusredwall=2}] run tellraw @s ["",{"text":"紅綠燈： ","color":"gray"},{"text":"更改偵測牆壁為關閉狀態","color":"gray"}]
execute as @a[tag=whitechange,team=human,scores={rglplusredwall=2}] run scoreboard players set @s rglplusredwall 1
execute as @a[tag=whitechange,team=human,scores={rglplusredwall=3}] run scoreboard players set @s rglplusredwall 2

tag @a[tag=whitechange,team=human] remove whitechange
