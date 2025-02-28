
execute as @a[tag=!todefense,team=good] at @s if entity @e[type=item,predicate=rgl:props/defense,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:props/defense,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:props/defense,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:props/defense,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:props/defense,limit=1,sort=nearest] throwid3 run tag @s add todefense
execute as @a[tag=todefense,team=good] at @s as @e[type=item,predicate=rgl:props/defense,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=todefense,team=good] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=todefense,team=good]","bold":"true","color":"yellow"},{"text":"使用道具讓全部鬼10秒無敵","color":"yellow"}]
execute if entity @a[tag=todefense,team=good] run effect give @a[gamemode=adventure,team=good] minecraft:resistance 10 10 true

execute as @a[tag=todefense,team=good,scores={propscount=1..}] run function rgl:props/undo
execute as @a[tag=todefense,team=good,scores={propscount=1..}] run function rgl:props/torch
tag @a[tag=todefense,team=good] remove todefense
