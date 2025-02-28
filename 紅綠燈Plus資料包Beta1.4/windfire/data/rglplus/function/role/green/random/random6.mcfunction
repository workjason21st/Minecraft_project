execute store result score @s random10 run random value 0..9
execute store result score @s rglplusqtekid run random value 0..9
execute if score @s random10 = @s rglplusqtekid unless score @s random10 matches 9 unless score @s random10 matches 8 unless score @s random10 matches 0 run function rglplus:role/green/random/random6
