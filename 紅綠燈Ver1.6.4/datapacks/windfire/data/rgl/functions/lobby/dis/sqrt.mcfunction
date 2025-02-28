execute as @e[tag=distag,scores={dis=2..}] run scoreboard players operation @s disy = @s sqrt
execute as @e[tag=distag,scores={dis=2..}] run scoreboard players operation @s disy *= rgl2 sqrt
execute as @e[tag=distag,scores={dis=2..}] run scoreboard players operation @s sqrt *= @s sqrt
execute as @e[tag=distag,scores={dis=2..}] run scoreboard players operation @s sqrt += @s dis
execute as @e[tag=distag,scores={dis=2..}] run scoreboard players operation @s sqrt /= @s disy

#每次執行會增加1 不足在算 夠了輸出
scoreboard players add @e[tag=distag] disx 1
execute unless entity @e[tag=distag,scores={disx=12}] run function rgl:start/dis/sqrt
execute as @e[tag=distag,scores={disx=12,sqrt=..0}] run scoreboard players operation @s sqrt *= rgl-1 sqrt
