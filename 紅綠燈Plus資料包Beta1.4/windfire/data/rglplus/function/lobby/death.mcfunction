execute if score 7-0-7-0-000700000007 playgame matches ..-1 run effect clear @a[scores={deathdetect=1..}]
execute if score 7-0-7-0-000700000007 playgame matches ..-1 run effect give @a[scores={deathdetect=1..}] minecraft:saturation infinite 0 true
execute if score 7-0-7-0-000700000007 playgame matches ..-1 run effect give @a[scores={deathdetect=1..}] minecraft:night_vision infinite 0 true
execute if score 7-0-7-0-000700000007 playgame matches ..-1 run effect give @a[scores={deathdetect=1..}] minecraft:regeneration infinite 0 true
execute if score 7-0-7-0-000700000007 playgame matches ..-1 run effect give @a[scores={deathdetect=1..}] minecraft:resistance infinite 2 true
execute if score 7-0-7-0-000700000007 playgame matches ..-1 run scoreboard players set @a[scores={deathdetect=1..}] deathdetect 0

execute if score 7-0-7-0-000700000007 playgame matches 0..2 run function rglplus:start/death
advancement revoke @s only rglplus:death