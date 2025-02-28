gamemode spectator @a[tag=middlesigner,team=!good,gamemode=adventure,tag=!red,tag=!green]
gamemode spectator @a[tag=middlesigner,team=!good,gamemode=survival,tag=!red,tag=!green]

effect give @a[tag=!middlesigner] minecraft:saturation 999999 0 true
effect give @a[tag=!middlesigner] minecraft:regeneration 999999 127 true
effect give @a[tag=!middlesigner] minecraft:resistance 999999 9 true
effect give @a[tag=!middlesigner] minecraft:night_vision 999999 0 true
clear @a[tag=!middlesigner]
xp add @a[tag=!middlesigner] -999999
gamemode spectator @a[tag=!middlesigner]
team join spe @a[tag=!middlesigner]
execute as @e[tag=core] at @s run tp @a[tag=!middlesigner] @r[gamemode=adventure]
execute as @e[tag=core] at @s run spawnpoint @a[tag=!middlesigner] 103 51 103
execute if entity @a[tag=!middlesigner] run tellraw @a ["",{"text":"紅綠燈-","color":"white"},{"text":"壞孩子跑給鬼追 : ","color":"white"},{"text":"歡迎","color":"white"},{"selector":"@a[tag=!middlesigner]","color":"white"},{"text":"旁觀此遊戲","color":"white"}]
bossbar set rgl:time players @a
tag @a[tag=!middlesigner] remove red
tag @a[tag=!middlesigner] remove green
tag @a[tag=!middlesigner] add signer
tag @a[tag=!middlesigner] add middlesigner
