bossbar set newbingo:yellow players @a[tag=!signer]
bossbar set newbingo:red players @a[tag=!signer]
bossbar set newbingo:green players @a[tag=!signer]
bossbar set newbingo:aqua players @a[tag=!signer]
execute if entity @e[tag=random0,scores={theend=-1}] run bossbar set newbingo:yellow visible false
execute if entity @e[tag=random0,scores={theend=-1}] run bossbar set newbingo:red visible false
execute if entity @e[tag=random0,scores={theend=-1}] run bossbar set newbingo:green visible false
execute if entity @e[tag=random0,scores={theend=-1}] run bossbar set newbingo:aqua visible false
effect give @a[tag=!signer] minecraft:saturation 999999 0 true
effect give @a[tag=!signer] minecraft:regeneration 999999 127 true
clear @a[tag=!signer]
xp set @a[tag=!signer] 0
recipe give @a[tag=!signer] *
gamemode adventure @a[tag=!signer]
execute as @e[tag=random0] at @s run tp @a[tag=!signer] ~ 227 ~
execute as @e[tag=random0] at @s run spawnpoint @a[tag=!signer] ~ 227 ~ -90
tellraw @a ["",{"text":"搶奪世代SG ： ","bold":"true","color":"gold"},{"text":"歡迎","bold":"false","color":"white"},{"selector":"@a[tag=!signer]","color":"gold"},{"text":"遊玩本遊戲","bold":"false","color":"white"}]
tag @a[tag=!signer] add signer
