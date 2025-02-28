#214748364
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
#縮成兩次
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy = @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_disy *= rglplus2 rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt *= @s rglplus_sqrt
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt += @s rglplus_dis
execute as @a[gamemode=adventure,tag=distag,scores={rglplus_dis=2..,rglplus_disx=-1..4}] run scoreboard players operation @s rglplus_sqrt /= @s rglplus_disy
#每次執行會增加1 不足在算 夠了輸出
scoreboard players add @a[gamemode=adventure,tag=distag] rglplus_disx 1
execute if entity @a[gamemode=adventure,tag=distag,scores={rglplus_disx=1}] run function rglplus:start/dis/sqrt
