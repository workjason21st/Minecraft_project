#以10倍取得位置
tag @a remove distag
tag @a remove distag90
tag @a remove distag200
tag @a remove distag500
execute if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 as @a[gamemode=adventure,team=ghost] run tag @s add distag
execute as @a[gamemode=adventure,team=!ghost] run tag @s add distag
execute as @a[gamemode=adventure,team=ghost] store result score @s rglplus_posx run data get entity @s Pos[0] 10
execute as @a[gamemode=adventure,team=!ghost] store result score @s rglplus_posx run data get entity @s Pos[0] 10
execute as @a[gamemode=adventure,team=!ghost] at @s run scoreboard players operation @s rglplus_posx -= @p[gamemode=adventure,team=ghost] rglplus_posx
execute if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 as @a[gamemode=adventure,team=ghost] at @s store result score @s rglplus_posy run data get entity @p[gamemode=adventure,team=human,tag=green] Pos[0] 10
execute if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 as @a[gamemode=adventure,team=ghost] at @s run scoreboard players operation @s rglplus_posx -= @s rglplus_posy
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disx = @s rglplus_posx

execute as @a[gamemode=adventure,team=ghost] store result score @s rglplus_posy run data get entity @s Pos[1] 10
execute as @a[gamemode=adventure,team=!ghost] store result score @s rglplus_posy run data get entity @s Pos[1] 10
execute as @a[gamemode=adventure,team=!ghost] at @s run scoreboard players operation @s rglplus_posy -= @p[gamemode=adventure,team=ghost] rglplus_posy
execute if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 as @a[gamemode=adventure,team=ghost] at @s store result score @s rglplus_posz run data get entity @p[gamemode=adventure,team=human,tag=green] Pos[1] 10
execute if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 as @a[gamemode=adventure,team=ghost] at @s run scoreboard players operation @s rglplus_posy -= @s rglplus_posz
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disy = @s rglplus_posy

execute as @a[gamemode=adventure,team=ghost] store result score @s rglplus_posz run data get entity @s Pos[2] 10
execute as @a[gamemode=adventure,team=!ghost] store result score @s rglplus_posz run data get entity @s Pos[2] 10
execute as @a[gamemode=adventure,team=!ghost] at @s run scoreboard players operation @s rglplus_posz -= @p[gamemode=adventure,team=ghost] rglplus_posz
execute if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 as @a[gamemode=adventure,team=ghost] at @s store result score @s rglplus_posx run data get entity @p[gamemode=adventure,team=human,tag=green] Pos[2] 10
execute if score 7-0-7-0-000700000007 rglplusshowdis matches 1..3 as @a[gamemode=adventure,team=ghost] at @s run scoreboard players operation @s rglplus_posz -= @s rglplus_posx
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disz = @s rglplus_posz

#x2 + y2 + z2 =dis2
#以100倍還原之前乘的
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disx *= @s rglplus_disx
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disy *= @s rglplus_disy
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disz *= @s rglplus_disz
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disy += @s rglplus_disz
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_disx += @s rglplus_disy
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_dis = @s rglplus_disx
execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_dis /= @e[tag=rglplus,tag=core,limit=1] rglplus_dis
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=..0}] run scoreboard players operation @s rglplus_dis *= rglplus-1 rglplus_sqrt
execute as @a[gamemode=adventure,team=ghost,tag=distag,scores={rglplus_dis=250002..}] run scoreboard players set @s rglplus_sqrt 501
execute as @a[gamemode=adventure,team=ghost,tag=distag,scores={rglplus_dis=250002..}] run tag @s remove distag
execute as @a[gamemode=adventure,team=human,tag=distag,scores={rglplus_dis=90002..}] run scoreboard players set @s rglplus_sqrt 301
execute as @a[gamemode=adventure,team=human,tag=distag,scores={rglplus_dis=90002..}] run tag @s remove distag
execute as @a[gamemode=adventure,team=humanred,tag=distag,scores={rglplus_dis=10002..}] run scoreboard players set @s rglplus_sqrt 101
execute as @a[gamemode=adventure,team=humanred,tag=distag,scores={rglplus_dis=10002..}] run tag @s remove distag
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..250000}] run tag @s add distag500
execute as @a[gamemode=adventure,tag=distag,tag=!distag500,scores={rglplus_dis=2..40000}] run tag @s add distag200
execute as @a[gamemode=adventure,tag=distag,tag=!distag500,tag=!distag200,scores={rglplus_dis=2..8100}] run tag @s add distag90
#開根

execute as @a[gamemode=adventure,tag=distag] run scoreboard players operation @s rglplus_sqrt = @s rglplus_dis
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..}] run scoreboard players remove @s rglplus_sqrt 1
execute as @a[gamemode=adventure,tag=distag] run scoreboard players set @s rglplus_disx 0
execute as @a[gamemode=adventure,tag=distag] run scoreboard players set @s rglplus_disy 0
execute unless entity @a[gamemode=adventure,tag=distag500] unless entity @a[gamemode=adventure,tag=distag200] if entity @a[gamemode=adventure,tag=distag90,scores={rglplus_disx=-1..4}] run function rglplus:start/dis/sqrt_90
execute unless entity @a[gamemode=adventure,tag=distag500] if entity @a[gamemode=adventure,tag=distag200,scores={rglplus_disx=-1..4}] run function rglplus:start/dis/sqrt_200
execute if entity @a[gamemode=adventure,tag=distag500,scores={rglplus_disx=-1..4}] run function rglplus:start/dis/sqrt_500
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_disx=2,rglplus_sqrt=..0}] run scoreboard players operation @s rglplus_sqrt *= rglplus-1 rglplus_sqrt

schedule function rglplus:start/dis/dis 2t
