execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
#八次縮成兩次
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[predicate=rglplus:character/sqrtdis,tag=distag90] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
#每次執行會增加1 不足在算 夠了輸出
scoreboard players add @a[gamemode=adventure,tag=distag90] rglplus_disx 1
execute if entity @a[gamemode=adventure,tag=distag90,scores={rglplus_disx=1}] run function rglplus:start/dis/sqrt_90
