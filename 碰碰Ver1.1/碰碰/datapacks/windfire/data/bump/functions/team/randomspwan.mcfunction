execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[sort=random,limit=1,tag=solespawn,tag=!spawnplayer,tag=!spawnplayers] run tag @s add spawnplayers
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[sort=random,limit=1,tag=solespawn,tag=!spawnplayer,tag=spawnplayers] run tag @r[team=,gamemode=adventure,tag=!spawnplayers] add spawnplayers
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[tag=solespawn,tag=!spawnplayer,tag=spawnplayers,limit=1] at @s run tp @r[team=,tag=spawnplayers,tag=!spawnplayer] ~ 34.9 ~
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[tag=!spawnplayer,tag=spawnplayers] run tag @s add spawnplayer

execute if entity @e[tag=mainAI,scores={bumpplace=1..2}] as @e[sort=random,limit=1,tag=solespawn,tag=!spawnplayer,tag=!spawnplayers] run tag @s add spawnplayers
execute if entity @e[tag=mainAI,scores={bumpplace=1..2}] as @e[sort=random,limit=1,tag=solespawn,tag=!spawnplayer,tag=spawnplayers] run tag @r[team=,gamemode=adventure,tag=!spawnplayers] add spawnplayers
execute if entity @e[tag=mainAI,scores={bumpplace=1..2}] as @e[tag=solespawn,tag=!spawnplayer,tag=spawnplayers,limit=1] at @s run tp @r[team=,tag=spawnplayers,tag=!spawnplayer] ~ ~1 ~
execute if entity @e[tag=mainAI,scores={bumpplace=1..2}] as @e[tag=!spawnplayer,tag=spawnplayers] run tag @s add spawnplayer

#execute if entity @e[tag=mainAI,scores={bumpplace=2}] as @e[sort=random,limit=1,tag=solespawn,tag=!spawnplayer,tag=!spawnplayers] run tag @s add spawnplayers
#execute if entity @e[tag=mainAI,scores={bumpplace=2}] as @e[sort=random,limit=1,tag=solespawn,tag=!spawnplayer,tag=spawnplayers] run tag @r[team=,gamemode=adventure,tag=!spawnplayers] add spawnplayers
#execute if entity @e[tag=mainAI,scores={bumpplace=2}] as @e[tag=solespawn,tag=!spawnplayer,tag=spawnplayers,limit=1] at @s run tp @r[team=,tag=spawnplayers,tag=!spawnplayer] ~ ~1 ~
#execute if entity @e[tag=mainAI,scores={bumpplace=2}] as @e[tag=!spawnplayer,tag=spawnplayers] run tag @s add spawnplayer