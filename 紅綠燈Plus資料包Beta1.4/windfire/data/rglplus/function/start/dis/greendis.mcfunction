execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusalleffect=0,rglplusredwall=0}] if entity @a[gamemode=adventure,team=human,tag=green,scores={rglplus_sqrt=0..}] run function rglplus:start/dis/show
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusalleffect=0,rglplusredwall=1}] if entity @a[gamemode=adventure,team=human,tag=green,scores={rglplus_sqrt=0..,rglplusredwall=1}] run function rglplus:start/dis/showchange1
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusalleffect=0,rglplusredwall=1}] if entity @a[gamemode=adventure,team=human,tag=green,scores={rglplus_sqrt=0..,rglplusredwall=2}] run function rglplus:start/dis/showchange2
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusalleffect=1,rglplusredwall=0}] if entity @a[gamemode=adventure,team=human,tag=green,scores={rglplus_sqrt=0..}] run function rglplus:start/dis/showall
#新增
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusalleffect=1,rglplusredwall=1}] if entity @a[gamemode=adventure,team=human,tag=green,scores={rglplus_sqrt=0..,rglplusredwall=1}] run function rglplus:start/dis/showallchange1
execute if entity @e[limit=1,type=armor_stand,tag=rglplus,tag=core,scores={rglplusalleffect=1,rglplusredwall=1}] if entity @a[gamemode=adventure,team=human,tag=green,scores={rglplus_sqrt=0..,rglplusredwall=2}] run function rglplus:start/dis/showallchange2

#
execute unless score 7-0-7-0-000700000007 gametime matches 0 if entity @a[team=ghost] as @a[gamemode=adventure,team=human,tag=touch,tag=green] if score @s[scores={rglplus_sqrt=0..}] rglplus_sqrt <= 7-0-7-0-000700000007 rglplustouchdis run function rglplus:start/touch/touchremove