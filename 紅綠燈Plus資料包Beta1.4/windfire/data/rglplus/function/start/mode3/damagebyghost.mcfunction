execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] store result score @s damaged run scoreboard players add 被鬼打 damaged 1
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=6}] run advancement revoke @s only rglplus:byghost_trident
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] run advancement revoke @s only rglplus:byghost_exp
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] run advancement revoke @s only rglplus:ghostattack_exp
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] run xp add @s -999999999
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] run advancement revoke @s only rglplus:byghost
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] run advancement revoke @s only rglplus:ghostattack
