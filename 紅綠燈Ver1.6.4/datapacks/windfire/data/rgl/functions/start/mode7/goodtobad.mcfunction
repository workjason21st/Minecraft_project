execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] store result score @s attack run scoreboard players add 被鬼打 attack 1
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run scoreboard players operation 鬼打人 attack = @s attack
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] as @a[team=bad,tag=green] if score @s damaged = 鬼打人 attack run tag @s add damaged

execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@s[team=good]","bold":"true","color":"yellow"},{"text":"攻擊","color":"yellow"},{"selector":"@a[tag=damaged]","bold":"true","color":"yellow"},{"text":", 兩人身分互換","color":"white"}]
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run clear @s[team=good] #rgl:sword
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run clear @a[tag=damaged] #rgl:color
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run clear @a[tag=damaged] minecraft:stick
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] as @a[tag=damaged] run function rgl:other/givesword
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tag @s[team=good] remove red
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tag @s[team=good] add green
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tag @a[tag=damaged] remove red
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tag @a[tag=damaged] remove green
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run effect clear @s[team=good]
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] as @s[team=good] run function rgl:other/basiseffect
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] as @a[tag=damaged] run function rgl:other/ghosteffect
execute if entity @e[tag=core,scores={gameend=2,rglmode=7,rglspecial=3}] as @s[team=good] run function rgl:other2/childstick
execute if entity @e[tag=core,scores={gameend=2,rglmode=7,rglghost=3}] run function rgl:start/effect/ghost
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run effect give @s[team=good] minecraft:luck 7 9 true
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run team join bad @s[team=good]
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run team join good @a[tag=damaged]

execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run scoreboard players add @a[tag=damaged] changeteam 1
execute if entity @e[tag=core,scores={gameend=2,rglmode=7,rglspecial=2}] run scoreboard players set @s rglspecial 1
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run scoreboard players add @s changeteam 1
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run scoreboard players set 被鬼打 attack 0
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run scoreboard players set 被鬼打 damaged 0
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run scoreboard players reset @s attack
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run scoreboard players reset @a[tag=damaged] damaged
execute if entity @e[tag=core,scores={gameend=2,rglmode=7}] run tag @a[tag=damaged] remove damaged

execute if entity @e[tag=core,scores={rglmode=7}] run advancement revoke @s only rgl:ghostattack
execute if entity @e[tag=core,scores={rglmode=7}] run advancement revoke @s only rgl:byghost
