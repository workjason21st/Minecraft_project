execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=6}] if entity @s[advancements={rglplus:byghost_trident=true}] run return 41
#execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] if entity @s[advancements={rglplus:byghost_exp=true}] run return 41
#execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] if entity @s[advancements={rglplus:ghostattack_exp=true}] run return 41

execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] store result score @s attack run scoreboard players add 被鬼打 attack 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run scoreboard players operation 鬼打人 attack = @s attack
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] as @a[team=human,tag=green] if score @s damaged = 鬼打人 attack run tag @s add damaged

execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s[team=ghost]","bold":true,"color":"yellow"},{"text":"攻擊","color":"yellow"},{"selector":"@a[tag=damaged]","bold":true,"color":"yellow"},{"text":", 兩人身分互換","color":"white"}]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run clear @s[team=ghost] #rglplus:sword
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run clear @a[tag=damaged] #rglplus:color
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run clear @a[tag=damaged] #rglplus:kidsword
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3,rglplusweapon=8..9}] run xp add @a[tag=damaged] -999999999
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] as @a[tag=damaged] run function rglplus:role/ghost/giveweapon
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run tag @s[team=ghost] remove red
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run tag @s[team=ghost] add green
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run tag @a[tag=damaged] remove red
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run tag @a[tag=damaged] remove green
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run effect clear @s[team=ghost]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3,rglplusweapon=7}] as @a[tag=damaged] at @s run setblock ~ ~ ~ minecraft:water[level=1]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] as @s[team=ghost] run function rglplus:role/basiseffect
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] as @a[tag=damaged] run function rglplus:role/ghosteffect
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] as @a run attribute @s minecraft:knockback_resistance base set 0
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3,rglpluskidsword=0}] run attribute @s[team=ghost] minecraft:knockback_resistance base set 9
#execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3,rglpluskidsword=1..}] as @s[team=ghost] run function rglplus:start/game/childstick
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3,rglplusqteghost=3..4}] run function rglplus:role/ghost/ghostrandom
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run effect give @s[team=ghost] minecraft:luck 7 9 true
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run team join human @s[team=ghost]
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run team join ghost @a[tag=damaged]

execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run scoreboard players add @a[tag=damaged] changeteam 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3,rglplusredwall=2}] run scoreboard players set @s rglplusredwall 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run scoreboard players add @s changeteam 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run scoreboard players set 被鬼打 attack 0
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run scoreboard players set 被鬼打 damaged 0
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run scoreboard players reset @s attack
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run scoreboard players reset @a[tag=damaged] damaged
execute if entity @e[tag=rglplus,tag=core,scores={playgame=2,rglplusmode=3}] run tag @a[tag=damaged] remove damaged

execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=6}] run advancement revoke @s only rglplus:byghost_trident
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] run advancement revoke @s only rglplus:byghost_exp
#execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3,rglplusweapon=8..9}] run advancement revoke @s only rglplus:ghostattack_exp
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] run advancement revoke @s only rglplus:ghostattack
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] run advancement revoke @s only rglplus:byghost
