effect give @a[tag=!signer] minecraft:saturation 999999 0 true
effect give @a[tag=!signer] minecraft:regeneration 999999 0 true
effect give @a[tag=!signer] minecraft:resistance 999999 9 true
effect give @a[tag=!signer] minecraft:night_vision 999999 0 true
clear @a[tag=!signer]
xp set @a[tag=!signer] 0
scoreboard players set @a[tag=!signer] wincount 0
recipe give @a[tag=!signer] *
gamemode adventure @a[tag=!signer]
execute as @e[tag=core] at @s run tp @a[tag=!signer] 106 52 106
execute as @e[tag=core] at @s run spawnpoint @a[tag=!signer] 106 51 106
tellraw @s ["",{"text":"紅綠燈-","bold":"true","color":"gold"},{"text":"壞孩子跑給鬼追 : ","color":"gold"},{"text":"歡迎","bold":"false","color":"white"},{"selector":"@a[tag=!signer]","color":"gold"},{"text":"遊玩本遊戲","bold":"false","color":"white"}]
team join bad @a[tag=!signer]
execute as @a[tag=!signer] store result score @s throwid0 run data get entity @s UUID[0]
execute as @a[tag=!signer] store result score @s throwid1 run data get entity @s UUID[1]
execute as @a[tag=!signer] store result score @s throwid2 run data get entity @s UUID[2]
execute as @a[tag=!signer] store result score @s throwid3 run data get entity @s UUID[3]
tag @a[tag=!signer] add signer
