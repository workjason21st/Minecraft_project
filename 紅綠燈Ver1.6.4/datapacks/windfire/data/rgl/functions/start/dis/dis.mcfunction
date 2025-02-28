#以10倍取得位置
tag @a remove distag
execute if entity @e[tag=core,scores={rglgdis=1..3}] as @a[gamemode=adventure,team=good] run tag @s add distag
execute as @a[gamemode=adventure,team=!good] run tag @s add distag
execute as @a[gamemode=adventure,team=good] store result score @s posx run data get entity @s Pos[0] 10
execute as @a[gamemode=adventure,team=!good] store result score @s posx run data get entity @s Pos[0] 10
execute as @a[gamemode=adventure,team=!good] at @s run scoreboard players operation @s posx -= @p[gamemode=adventure,team=good] posx
execute if entity @e[tag=core,scores={rglgdis=1..3}] as @a[gamemode=adventure,team=good] at @s store result score @s posy run data get entity @p[gamemode=adventure,team=bad,tag=green] Pos[0] 10
execute if entity @e[tag=core,scores={rglgdis=1..3}] as @a[gamemode=adventure,team=good] at @s run scoreboard players operation @s posx -= @s posy
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disx = @s posx

execute as @a[gamemode=adventure,team=good] store result score @s posy run data get entity @s Pos[1] 10
execute as @a[gamemode=adventure,team=!good] store result score @s posy run data get entity @s Pos[1] 10
execute as @a[gamemode=adventure,team=!good] at @s run scoreboard players operation @s posy -= @p[gamemode=adventure,team=good] posy
execute if entity @e[tag=core,scores={rglgdis=1..3}] as @a[gamemode=adventure,team=good] at @s store result score @s posz run data get entity @p[gamemode=adventure,team=bad,tag=green] Pos[1] 10
execute if entity @e[tag=core,scores={rglgdis=1..3}] as @a[gamemode=adventure,team=good] at @s run scoreboard players operation @s posy -= @s posz
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disy = @s posy

execute as @a[gamemode=adventure,team=good] store result score @s posz run data get entity @s Pos[2] 10
execute as @a[gamemode=adventure,team=!good] store result score @s posz run data get entity @s Pos[2] 10
execute as @a[gamemode=adventure,team=!good] at @s run scoreboard players operation @s posz -= @p[gamemode=adventure,team=good] posz
execute if entity @e[tag=core,scores={rglgdis=1..3}] as @a[gamemode=adventure,team=good] at @s store result score @s posx run data get entity @p[gamemode=adventure,team=bad,tag=green] Pos[2] 10
execute if entity @e[tag=core,scores={rglgdis=1..3}] as @a[gamemode=adventure,team=good] at @s run scoreboard players operation @s posz -= @s posx
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disz = @s posz

#x2 + y2 + z2 =dis2
#以100倍還原之前乘的
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disx *= @s disx
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disy *= @s disy
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disz *= @s disz
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disy += @s disz
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s disx += @s disy
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s dis = @s disx
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s dis /= @e[tag=core,limit=1] dis
execute as @a[gamemode=adventure,tag=distag,scores={dis=..0}] run scoreboard players operation @s dis *= rgl-1 sqrt
execute as @a[gamemode=adventure,team=good,tag=distag,scores={dis=90001..}] run scoreboard players set @s sqrt 301
execute as @a[gamemode=adventure,team=good,tag=distag,scores={dis=90001..}] run tag @s remove distag
execute as @a[gamemode=adventure,team=!good,tag=distag,scores={dis=10001..}] run scoreboard players set @s sqrt 101
execute as @a[gamemode=adventure,team=!good,tag=distag,scores={dis=10001..}] run tag @s remove distag
#開根

execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s sqrt = @s dis
execute as @a[gamemode=adventure,tag=distag,scores={dis=2..}] run scoreboard players remove @s sqrt 1
execute as @a[gamemode=adventure,tag=distag] run scoreboard players set @s disx 0
execute as @a[gamemode=adventure,tag=distag] run scoreboard players set @s disy 0
execute if entity @a[gamemode=adventure,tag=distag,scores={dis=2..,disx=-1..4}] run function rgl:start/dis/sqrt
execute as @a[gamemode=adventure,tag=distag,scores={disx=2,sqrt=..0}] run scoreboard players operation @s sqrt *= rgl-1 sqrt
