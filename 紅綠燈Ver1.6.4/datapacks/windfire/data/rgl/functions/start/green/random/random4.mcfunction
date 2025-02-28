scoreboard players operation @s random10 = @e[tag=random010,limit=1,sort=random] random10
scoreboard players operation @s random = @e[tag=random010,limit=1,sort=random] random10
execute if score @s random10 = @s random unless score @s random10 matches 9 unless score @s random10 matches 8 unless score @s random10 matches 0 run function rgl:start/green/random/random4
