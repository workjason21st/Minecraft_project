
execute as @a[tag=!toglow,team=good] at @s if entity @e[type=item,predicate=rgl:props/glow,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:props/glow,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:props/glow,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:props/glow,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:props/glow,limit=1,sort=nearest] throwid3 run tag @s add toglow
execute as @a[tag=toglow,team=good] at @s as @e[type=item,predicate=rgl:props/glow,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=toglow,team=good] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=toglow,team=good]","bold":"true","color":"yellow"},{"text":"使用道具讓孩子15秒發光","color":"yellow"}]
execute if entity @a[tag=toglow,team=good] run effect give @a[gamemode=adventure,team=!good] minecraft:glowing 15 3 true

execute as @a[tag=toglow,team=good,scores={propscount=1..}] run function rgl:props/undo
execute as @a[tag=toglow,team=good,scores={propscount=1..}] run function rgl:props/torch
tag @a[tag=toglow,team=good] remove toglow
