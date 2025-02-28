execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] store result score @s damaged run scoreboard players add 被鬼打 damaged 1
execute if entity @e[tag=core,scores={rglmode=7}] run advancement revoke @s only rgl:byghost
execute if entity @e[tag=core,scores={rglmode=7}] run advancement revoke @s only rgl:ghostattack
