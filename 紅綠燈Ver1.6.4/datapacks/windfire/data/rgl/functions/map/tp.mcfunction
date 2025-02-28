execute store result score @s posx run data get entity @s Pos[0] 10
execute store result score @s posy run data get entity @s Pos[1] 10
execute store result score @s posz run data get entity @s Pos[2] 10

execute if entity @s[scores={posx=12493..12497,posy=490..492,posz=12703..12707}] run tellraw @s ["",{"text":"你走到傳送點, 被傳送到其他地方了","color":"yellow"}]
execute if entity @s[scores={posx=12493..12497,posy=490..492,posz=12703..12707}] run tp @s 1156 51 1197

execute if entity @s[scores={posx=12403..12407,posy=490..492,posz=11963..11967}] run tellraw @s ["",{"text":"你走到傳送點, 被傳送到其他地方了","color":"yellow"}]
execute if entity @s[scores={posx=12403..12407,posy=490..492,posz=11963..11967}] run tp @s 1156 51 1252
