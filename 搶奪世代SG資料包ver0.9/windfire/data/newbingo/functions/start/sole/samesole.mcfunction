
execute as @a[scores={point1detect=1}] unless score @e[tag=random1,limit=1] random00 = @s target1 run scoreboard players set @s point1detect 0
execute as @a[scores={point2detect=1}] unless score @e[tag=random2,limit=1] random00 = @s target2 run scoreboard players set @s point2detect 0
execute as @a[scores={point3detect=1}] unless score @e[tag=random3,limit=1] random00 = @s target3 run scoreboard players set @s point3detect 0
execute as @a[scores={point4detect=1}] unless score @e[tag=random4,limit=1] random00 = @s target4 run scoreboard players set @s point4detect 0
execute as @a[scores={point5detect=1}] unless score @e[tag=random5,limit=1] random00 = @s target5 run scoreboard players set @s point5detect 0
execute as @a[scores={point6detect=1}] unless score @e[tag=random6,limit=1] random00 = @s target6 run scoreboard players set @s point6detect 0
execute as @a[scores={point7detect=1}] unless score @e[tag=random7,limit=1] random00 = @s target7 run scoreboard players set @s point7detect 0
execute as @a[scores={point8detect=1}] unless score @e[tag=random8,limit=1] random00 = @s target8 run scoreboard players set @s point8detect 0
execute as @a[scores={point9detect=1}] unless score @e[tag=random9,limit=1] random00 = @s target9 run scoreboard players set @s point9detect 0
execute as @a[scores={point10detect=1}] unless score @e[tag=random10,limit=1] random00 = @s target10 run scoreboard players set @s point10detect 0
#
execute if entity @e[tag=random0,scores={bingorandom=1..2}] as @a[scores={point11detect=1}] unless score @e[tag=random11,limit=1] random00 = @s target11 run scoreboard players set @s point11detect 0
execute if entity @e[tag=random0,scores={bingorandom=1..2}] as @a[scores={point12detect=1}] unless score @e[tag=random12,limit=1] random00 = @s target12 run scoreboard players set @s point12detect 0
execute if entity @e[tag=random0,scores={bingorandom=1..2}] as @a[scores={point13detect=1}] unless score @e[tag=random13,limit=1] random00 = @s target13 run scoreboard players set @s point13detect 0
execute if entity @e[tag=random0,scores={bingorandom=2}] as @a[scores={point14detect=1}] unless score @e[tag=random14,limit=1] random00 = @s target14 run scoreboard players set @s point14detect 0
execute if entity @e[tag=random0,scores={bingorandom=2}] as @a[scores={point15detect=1}] unless score @e[tag=random15,limit=1] random00 = @s target15 run scoreboard players set @s point15detect 0
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint11] as @a[tag=!nopoint11,scores={point11detect=1}] run scoreboard players add @s teampoint 1
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint12] as @a[tag=!nopoint12,scores={point12detect=1}] run scoreboard players add @s teampoint 1
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint13] as @a[tag=!nopoint13,scores={point13detect=1}] run scoreboard players add @s teampoint 1
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint14] as @a[tag=!nopoint14,scores={point14detect=1}] run scoreboard players add @s teampoint 1
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint15] as @a[tag=!nopoint15,scores={point15detect=1}] run scoreboard players add @s teampoint 1
#addpoint
execute unless entity @e[tag=nopoint1] as @a[tag=!nopoint1,scores={point1detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint2] as @a[tag=!nopoint2,scores={point2detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint3] as @a[tag=!nopoint3,scores={point3detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint4] as @a[tag=!nopoint4,scores={point4detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint5] as @a[tag=!nopoint5,scores={point5detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint6] as @a[tag=!nopoint6,scores={point6detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint7] as @a[tag=!nopoint7,scores={point7detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint8] as @a[tag=!nopoint8,scores={point8detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint9] as @a[tag=!nopoint9,scores={point9detect=1}] run scoreboard players add @s teampoint 1
execute unless entity @e[tag=nopoint10] as @a[tag=!nopoint10,scores={point10detect=1}] run scoreboard players add @s teampoint 1

execute as @e[team=yellow] run scoreboard players operation @s teampoint > @e[team=yellow] teampoint
execute as @e[team=red] run scoreboard players operation @s teampoint > @e[team=red] teampoint
execute as @e[team=green] run scoreboard players operation @s teampoint > @e[team=green] teampoint
execute as @e[team=aqua] run scoreboard players operation @s teampoint > @e[team=aqua] teampoint

#tellraw @a ["",{"text":"黃隊","bold":true,"color":"yellow"},{"text":"取得了分數1","color":"white"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[team=yellow,limit=1]","objective":"teampoint"},"bold":true,"color":"light_purple"},{"text":"分","color":"light_purple"}]
execute unless entity @e[tag=nopoint1] if entity @a[tag=!nopoint1,scores={point1detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint1,limit=1,scores={point1detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random1]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint1,limit=1,scores={point1detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint2] if entity @a[tag=!nopoint2,scores={point2detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint2,limit=1,scores={point2detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random2]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint2,limit=1,scores={point2detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint3] if entity @a[tag=!nopoint3,scores={point3detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint3,limit=1,scores={point3detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random3]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint3,limit=1,scores={point3detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint4] if entity @a[tag=!nopoint4,scores={point4detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint4,limit=1,scores={point4detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random4]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint4,limit=1,scores={point4detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint5] if entity @a[tag=!nopoint5,scores={point5detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint5,limit=1,scores={point5detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random5]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint5,limit=1,scores={point5detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint6] if entity @a[tag=!nopoint6,scores={point6detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint6,limit=1,scores={point6detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random6]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint6,limit=1,scores={point6detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint7] if entity @a[tag=!nopoint7,scores={point7detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint7,limit=1,scores={point7detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random7]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint7,limit=1,scores={point7detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint8] if entity @a[tag=!nopoint8,scores={point8detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint8,limit=1,scores={point8detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random8]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint8,limit=1,scores={point8detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint9] if entity @a[tag=!nopoint9,scores={point9detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint9,limit=1,scores={point9detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random9]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint9,limit=1,scores={point9detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute unless entity @e[tag=nopoint10] if entity @a[tag=!nopoint10,scores={point10detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint10,limit=1,scores={point10detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random10]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint10,limit=1,scores={point10detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
#
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint11] if entity @a[tag=!nopoint11,scores={point11detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint11,limit=1,scores={point11detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random11]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint11,limit=1,scores={point11detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint12] if entity @a[tag=!nopoint12,scores={point12detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint12,limit=1,scores={point12detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random12]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint12,limit=1,scores={point12detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint13] if entity @a[tag=!nopoint13,scores={point13detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint13,limit=1,scores={point13detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random13]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint13,limit=1,scores={point13detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint14] if entity @a[tag=!nopoint14,scores={point14detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint14,limit=1,scores={point14detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random14]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint14,limit=1,scores={point14detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint15] if entity @a[tag=!nopoint15,scores={point15detect=1}] run tellraw @a ["",{"selector":"@a[tag=!nopoint15,limit=1,scores={point15detect=1}]"},{"text":"取得了","color":"white"},{"selector":"@e[tag=random15]","bold":true,"color":"gold"},{"text":"的目標物，隊伍分數達到了","color":"white"},{"score":{"name":"@a[tag=!nopoint15,limit=1,scores={point15detect=1}]","objective":"teampoint"},"bold":true,"color":"dark_purple"},{"text":"分","color":"dark_purple"}]
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint11] if entity @a[tag=!nopoint11,scores={point11detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint12] if entity @a[tag=!nopoint12,scores={point12detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint13] if entity @a[tag=!nopoint13,scores={point13detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint14] if entity @a[tag=!nopoint14,scores={point14detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint15] if entity @a[tag=!nopoint15,scores={point15detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
#
execute unless entity @e[tag=nopoint1] if entity @a[tag=!nopoint1,scores={point1detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint2] if entity @a[tag=!nopoint2,scores={point2detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint3] if entity @a[tag=!nopoint3,scores={point3detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint4] if entity @a[tag=!nopoint4,scores={point4detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint5] if entity @a[tag=!nopoint5,scores={point5detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint6] if entity @a[tag=!nopoint6,scores={point6detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint7] if entity @a[tag=!nopoint7,scores={point7detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint8] if entity @a[tag=!nopoint8,scores={point8detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint9] if entity @a[tag=!nopoint9,scores={point9detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1
execute unless entity @e[tag=nopoint10] if entity @a[tag=!nopoint10,scores={point10detect=1}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1 0.1

execute unless entity @e[tag=nopoint1] as @a[tag=!nopoint1,scores={point1detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint1] as @a[tag=!nopoint1,scores={point1detect=1}] run tag @e add nopoint1
execute if entity @a[tag=nopoint1,scores={point1detect=1}] run tag @e[tag=random0] add nopoint1
execute unless entity @e[tag=nopoint2] as @a[tag=!nopoint2,scores={point2detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint2] as @a[tag=!nopoint2,scores={point2detect=1}] run tag @e add nopoint2
execute if entity @a[tag=nopoint2,scores={point2detect=1}] run tag @e[tag=random0] add nopoint2
execute unless entity @e[tag=nopoint3] as @a[tag=!nopoint3,scores={point3detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint3] as @a[tag=!nopoint3,scores={point3detect=1}] run tag @e add nopoint3
execute if entity @a[tag=nopoint3,scores={point3detect=1}] run tag @e[tag=random0] add nopoint3
execute unless entity @e[tag=nopoint4] as @a[tag=!nopoint4,scores={point4detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint4] as @a[tag=!nopoint4,scores={point4detect=1}] run tag @e add nopoint4
execute if entity @a[tag=nopoint4,scores={point4detect=1}] run tag @e[tag=random0] add nopoint4
execute unless entity @e[tag=nopoint5] as @a[tag=!nopoint5,scores={point5detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint5] as @a[tag=!nopoint5,scores={point5detect=1}] run tag @e add nopoint5
execute if entity @a[tag=nopoint5,scores={point5detect=1}] run tag @e[tag=random0] add nopoint5
execute unless entity @e[tag=nopoint6] as @a[tag=!nopoint6,scores={point6detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint6] as @a[tag=!nopoint6,scores={point6detect=1}] run tag @e add nopoint6
execute if entity @a[tag=nopoint6,scores={point6detect=1}] run tag @e[tag=random0] add nopoint6
execute unless entity @e[tag=nopoint7] as @a[tag=!nopoint7,scores={point7detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint7] as @a[tag=!nopoint7,scores={point7detect=1}] run tag @e add nopoint7
execute if entity @a[tag=nopoint7,scores={point7detect=1}] run tag @e[tag=random0] add nopoint7
execute unless entity @e[tag=nopoint8] as @a[tag=!nopoint8,scores={point8detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint8] as @a[tag=!nopoint8,scores={point8detect=1}] run tag @e add nopoint8
execute if entity @a[tag=nopoint8,scores={point8detect=1}] run tag @e[tag=random0] add nopoint8
execute unless entity @e[tag=nopoint9] as @a[tag=!nopoint9,scores={point9detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint9] as @a[tag=!nopoint9,scores={point9detect=1}] run tag @e add nopoint9
execute if entity @a[tag=nopoint9,scores={point9detect=1}] run tag @e[tag=random0] add nopoint9
execute unless entity @e[tag=nopoint10] as @a[tag=!nopoint10,scores={point10detect=1}] run tag @a add nopointsole
execute unless entity @e[tag=nopoint10] as @a[tag=!nopoint10,scores={point10detect=1}] run tag @e add nopoint10
execute if entity @a[tag=nopoint10,scores={point10detect=1}] run tag @e[tag=random0] add nopoint10
#execute as @a[tag=nopoint1] run scoreboard players set @e point1detect 0
#execute as @a[tag=nopoint2] run scoreboard players set @e point2detect 0
#execute as @a[tag=nopoint3] run scoreboard players set @e point3detect 0
#execute as @a[tag=nopoint4] run scoreboard players set @e point4detect 0
#execute as @a[tag=nopoint5] run scoreboard players set @e point5detect 0
#execute as @a[tag=nopoint6] run scoreboard players set @e point6detect 0
#execute as @a[tag=nopoint7] run scoreboard players set @e point7detect 0
#execute as @a[tag=nopoint8] run scoreboard players set @e point8detect 0
#execute as @a[tag=nopoint9] run scoreboard players set @e point9detect 0
#execute as @a[tag=nopoint10] run scoreboard players set @e point10detect 0
#
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint11] as @a[tag=!nopoint11,scores={point11detect=1}] run tag @a add nopointsole
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint11] as @a[tag=!nopoint11,scores={point11detect=1}] run tag @e add nopoint11
execute if entity @e[tag=random0,scores={bingorandom=1..2}] if entity @a[tag=nopoint11,scores={point11detect=1}] run tag @e[tag=random0] add nopoint11
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint12] as @a[tag=!nopoint12,scores={point12detect=1}] run tag @a add nopointsole
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint12] as @a[tag=!nopoint12,scores={point12detect=1}] run tag @e add nopoint12
execute if entity @e[tag=random0,scores={bingorandom=1..2}] if entity @a[tag=nopoint12,scores={point12detect=1}] run tag @e[tag=random0] add nopoint12
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint13] as @a[tag=!nopoint13,scores={point13detect=1}] run tag @a add nopointsole
execute if entity @e[tag=random0,scores={bingorandom=1..2}] unless entity @e[tag=nopoint13] as @a[tag=!nopoint13,scores={point13detect=1}] run tag @e add nopoint13
execute if entity @e[tag=random0,scores={bingorandom=1..2}] if entity @a[tag=nopoint13,scores={point13detect=1}] run tag @e[tag=random0] add nopoint13
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint14] as @a[tag=!nopoint14,scores={point14detect=1}] run tag @a add nopointsole
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint14] as @a[tag=!nopoint14,scores={point14detect=1}] run tag @e add nopoint14
execute if entity @e[tag=random0,scores={bingorandom=2}] if entity @a[tag=nopoint14,scores={point14detect=1}] run tag @e[tag=random0] add nopoint14
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint15] as @a[tag=!nopoint15,scores={point15detect=1}] run tag @a add nopointsole
execute if entity @e[tag=random0,scores={bingorandom=2}] unless entity @e[tag=nopoint15] as @a[tag=!nopoint15,scores={point15detect=1}] run tag @e add nopoint15
execute if entity @e[tag=random0,scores={bingorandom=2}] if entity @a[tag=nopoint15,scores={point15detect=1}] run tag @e[tag=random0] add nopoint15
#
function newbingo:start/tagadd

execute store result bossbar newbingo:yellow value run scoreboard players get @a[team=yellow,limit=1] teampoint
execute store result bossbar newbingo:red value run scoreboard players get @a[team=red,limit=1] teampoint
execute store result bossbar newbingo:green value run scoreboard players get @a[team=green,limit=1] teampoint
execute store result bossbar newbingo:aqua value run scoreboard players get @a[team=aqua,limit=1] teampoint
