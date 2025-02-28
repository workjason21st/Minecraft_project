#6000~12000tick 改成3分內
execute as @e[type=chicken,tag=!chickenEgg] store result score @s sgconstant run data get entity @s EggLayTime
execute as @e[type=chicken,tag=!chickenEgg,scores={sgconstant=3601..}] run data merge entity @s {EggLayTime:3600}
scoreboard players reset @e[type=chicken,tag=!chickenEgg] sgconstant
execute as @e[type=chicken,tag=!chickenEgg] run tag @s add chickenEgg
#-24000tick 改5分
execute as @e[type=turtle,tag=!turtleGrow] store result score @s sgconstant run data get entity @s Age
execute as @e[type=turtle,tag=!turtleGrow,scores={sgconstant=..-6001}] run data merge entity @s {Age:-6000}
scoreboard players reset @e[type=turtle,tag=!turtleGrow] sgconstant
execute as @e[type=turtle,tag=!turtleGrow] run tag @s add turtleGrow
#加快蜜蜂離開蜂窩
execute as @a at @s if data block ^ ^ ^1 Bees[0] run data modify block ^ ^ ^1 Bees[0].MinOccupationTicks set value 500
execute as @e[type=bee] at @s if data block ^ ^ ^1 Bees[0] run data modify block ^ ^ ^1 Bees[0].MinOccupationTicks set value 500
execute as @e[type=bee] at @s if data block ^ ^ ^1 Bees[1] run data modify block ^ ^ ^1 Bees[1].MinOccupationTicks set value 500
execute as @e[type=bee] at @s if data block ^ ^ ^1 Bees[2] run data modify block ^ ^ ^1 Bees[2].MinOccupationTicks set value 500
