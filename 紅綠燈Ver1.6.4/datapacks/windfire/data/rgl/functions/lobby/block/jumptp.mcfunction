execute as @a at @s if block ~ ~-3 ~ dead_bubble_coral_block run effect give @s minecraft:jump_boost 1 11 false
execute as @e[type=minecart] at @s if block ~ ~-2 ~ minecraft:dead_tube_coral_block if block ~ ~-3 ~ minecraft:dead_tube_coral_block run tp @s ~ 60 ~-2.5
