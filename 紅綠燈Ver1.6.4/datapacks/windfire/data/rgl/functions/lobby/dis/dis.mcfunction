#以10倍取得位置
tag @e remove distag
execute as @e[team=good] run tag @s add distag
execute as @e[team=bad] run tag @s add distag
execute as @e[tag=title,tag=Ghost] run tag @s add distag
execute as @e[tag=distag] store result score @s posx run data get entity @s Pos[0] 10
execute as @e[team=bad] at @s run scoreboard players operation @s posx -= @e[limit=1,sort=nearest,team=good] posx
execute as @e[team=good] at @s store result score @s posy run data get entity @e[limit=1,sort=nearest,team=bad] Pos[0] 10
execute as @e[team=good] at @s run scoreboard players operation @s posx -= @s posy
execute as @e[tag=distag] run scoreboard players operation @s disx = @s posx

execute as @e[tag=distag] store result score @s posy run data get entity @s Pos[1] 10
execute as @e[team=bad] at @s run scoreboard players operation @s posy -= @e[limit=1,sort=nearest,team=good] posy
execute as @e[team=good] at @s store result score @s posz run data get entity @e[limit=1,sort=nearest,team=bad] Pos[1] 10
execute as @e[team=good] at @s run scoreboard players operation @s posy -= @s posz
execute as @e[tag=distag] run scoreboard players operation @s disy = @s posy

execute as @e[tag=distag] store result score @s posz run data get entity @s Pos[2] 10
execute as @e[team=bad] at @s run scoreboard players operation @s posz -= @e[limit=1,sort=nearest,team=good] posz
execute as @e[team=good] at @s store result score @s posx run data get entity @e[limit=1,sort=nearest,team=bad] Pos[2] 10
execute as @e[team=good] at @s run scoreboard players operation @s posz -= @s posx
execute as @e[tag=distag] run scoreboard players operation @s disz = @s posz

#x2 + y2 + z2 =dis2
#以100倍還原之前乘的
execute as @e[tag=distag] run scoreboard players operation @s disx *= @s disx
execute as @e[tag=distag] run scoreboard players operation @s disy *= @s disy
execute as @e[tag=distag] run scoreboard players operation @s disz *= @s disz
execute as @e[tag=distag] run scoreboard players operation @s disy += @s disz
execute as @e[tag=distag] run scoreboard players operation @s disx += @s disy
execute as @e[tag=distag] run scoreboard players operation @s dis = @s disx
execute as @e[tag=distag] run scoreboard players operation @s dis /= @e[tag=core,limit=1] dis
#開根

execute as @e[tag=distag] run scoreboard players operation @s sqrt = @s dis
execute as @a[tag=distag,scores={dis=2..}] run scoreboard players remove @s sqrt 1
execute as @e[tag=distag] run scoreboard players set @s disx 0
execute as @e[tag=distag] run scoreboard players set @s disy 0
execute if entity @e[tag=distag,scores={dis=2..}] run function rgl:lobby/dis/sqrt
