execute unless entity @a[tag=loaders] run tp @a[tag=loader] @e[tag=random10,limit=1]
execute if entity @e[tag=random0,scores={load=-4..-3}] unless entity @a[tag=loaders] as @e[tag=random10] at @s if entity @e[tag=random9,distance=0..16] run tag @a[tag=loader] add loaders
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @e[tag=random10] at @s if entity @e[tag=random9,distance=0..16] run function newbingo:load/3000
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @e[tag=random10] at @s if entity @e[tag=random9,distance=0..16] run function newbingo:load/2000
#execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~500 ~ ~ ~
#execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~-500 ~ ~ ~
#execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~500 ~ ~ ~
#execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~-500 ~ ~ ~
#execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~500 ~ ~ ~
#execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~-500 ~ ~ ~
#execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~500 ~ ~ ~
#execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~-500 ~ ~ ~

execute if entity @e[tag=random0,scores={load=-3..-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~500 ~ ~ ~
execute if entity @e[tag=random0,scores={load=-3..-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~-500 ~ ~ ~
execute if entity @e[tag=random0,scores={load=-3..-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~500 ~ ~ ~
execute if entity @e[tag=random0,scores={load=-3..-1}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~-500 ~ ~ ~
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~250 ~ ~ ~
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload add ~-250 ~ ~ ~
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~250 ~ ~ ~
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] as @a[tag=loader] at @s run forceload remove ~-250 ~ ~ ~
execute unless entity @a[tag=loaders] as @e[tag=random0] at @s run forceload add ~ ~ ~ ~
#execute unless entity @a[tag=loaders] as @e[tag=teampoint] at @s run forceload add ~ ~ ~ ~
execute unless entity @a[tag=loaders] as @e[tag=random10] at @s run setblock ~ 128 ~ air
execute unless entity @a[tag=loaders] as @e[tag=random10] at @s run setblock ~ 128 ~15 barrier
execute unless entity @a[tag=loaders] as @e[tag=random10] at @s run tp @s ~ 129 ~15 ~ -90
execute unless entity @a[tag=loaders] as @e[tag=random0] at @s run scoreboard players add @e[tag=random10] load 1
execute unless entity @a[tag=loaders] store result bossbar newbingo:load value run scoreboard players get @e[tag=random10,limit=1] load
execute if entity @e[tag=random0,scores={load=-1}] unless entity @a[tag=loaders] run bossbar set newbingo:load name ["",{"text":"載圖進度： ","color":"white"},{"score":{"name":"@e[tag=random10,limit=1]","objective":"load"},"color":"gold","bold":"true"},{"text":" / 392","color":"white","bold":"true"}]
execute if entity @e[tag=random0,scores={load=-2}] unless entity @a[tag=loaders] run bossbar set newbingo:load name ["",{"text":"載圖進度： ","color":"white"},{"score":{"name":"@e[tag=random10,limit=1]","objective":"load"},"color":"gold","bold":"true"},{"text":" / 255","color":"white","bold":"true"}]
execute if entity @e[tag=random0,scores={load=-3}] unless entity @a[tag=loaders] run bossbar set newbingo:load name ["",{"text":"載圖進度： ","color":"white"},{"score":{"name":"@e[tag=random10,limit=1]","objective":"load"},"color":"gold","bold":"true"},{"text":" / 64","color":"white","bold":"true"}]
execute if entity @e[tag=random0,scores={load=-4}] unless entity @a[tag=loaders] run bossbar set newbingo:load name ["",{"text":"載圖進度： ","color":"white"},{"score":{"name":"@e[tag=random10,limit=1]","objective":"load"},"color":"gold","bold":"true"},{"text":" / 32","color":"white","bold":"true"}]
execute if entity @a[tag=loaders] run function newbingo:load/load
