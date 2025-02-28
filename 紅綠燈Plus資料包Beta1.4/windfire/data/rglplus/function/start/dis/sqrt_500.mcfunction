#算式：(a/2) + (b/2a)
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz = @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt /= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt += @s rglplus_disz
#十二次縮成二次
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz = @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt /= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt += @s rglplus_disz
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz = @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt /= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt += @s rglplus_disz
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz = @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt /= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt += @s rglplus_disz
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz = @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt /= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt += @s rglplus_disz
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz = @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_disz /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt /= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag500] run scoreboard players operation @s rglplus_sqrt += @s rglplus_disz
#每次執行會增加1 不足在算 夠了輸出
scoreboard players add @a[gamemode=adventure,tag=distag500] rglplus_disx 1
execute if entity @a[gamemode=adventure,tag=distag500,scores={rglplus_disx=1}] run function rglplus:start/dis/sqrt_500
