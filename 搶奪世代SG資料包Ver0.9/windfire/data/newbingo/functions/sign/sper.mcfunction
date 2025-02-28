bossbar set newbingo:yellow players @a[tag=!middlesigner]
bossbar set newbingo:red players @a[tag=!middlesigner]
bossbar set newbingo:green players @a[tag=!middlesigner]
bossbar set newbingo:aqua players @a[tag=!middlesigner]
execute store result score @e[tag=random0,limit=1] yellowplayer if entity @a[team=yellow]
execute store result score @e[tag=random0,limit=1] redplayer if entity @a[team=red]
execute store result score @e[tag=random0,limit=1] greenplayer if entity @a[team=green]
execute store result score @e[tag=random0,limit=1] aquaplayer if entity @a[team=aqua]
execute if entity @e[tag=random0,scores={yellowplayer=1..}] run bossbar set newbingo:yellow visible true
execute if entity @e[tag=random0,scores={redplayer=1..}] run bossbar set newbingo:red visible true
execute if entity @e[tag=random0,scores={greenplayer=1..}] run bossbar set newbingo:green visible true
execute if entity @e[tag=random0,scores={aquaplayer=1..}] run bossbar set newbingo:aqua visible true
effect give @a[tag=!middlesigner] minecraft:saturation 999999 0 true
effect give @a[tag=!middlesigner] minecraft:regeneration 999999 127 true
clear @a[tag=!middlesigner]
xp set @a[tag=!middlesigner] 0
recipe give @a[tag=!middlesigner] *
gamemode spectator @a[tag=!middlesigner]
execute as @e[tag=random0] at @s run tp @a[tag=!middlesigner] ~ 227 ~
execute as @e[tag=random0] at @s run spawnpoint @a[tag=!middlesigner] ~ 227 ~ -90
tellraw @a ["",{"text":"\n搶奪世代SG ： ","color":"white"},{"text":"歡迎","color":"white"},{"selector":"@a[tag=!middlesigner]","color":"gold"},{"text":"旁觀此遊戲","color":"white"}]
tag @a[tag=!middlesigner] add signer
tag @a[tag=!middlesigner] add middlesigner
