
execute as @a[tag=!toslow,team=good] at @s if entity @e[type=item,predicate=rgl:props/slow,distance=..3] if score @s throwid0 = @e[type=item,predicate=rgl:props/slow,limit=1,sort=nearest] throwid0 if score @s throwid1 = @e[type=item,predicate=rgl:props/slow,limit=1,sort=nearest] throwid1 if score @s throwid2 = @e[type=item,predicate=rgl:props/slow,limit=1,sort=nearest] throwid2 if score @s throwid3 = @e[type=item,predicate=rgl:props/slow,limit=1,sort=nearest] throwid3 run tag @s add toslow
execute as @a[tag=toslow,team=good] at @s as @e[type=item,predicate=rgl:props/slow,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=toslow,team=good] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=toslow,team=good]","bold":"true","color":"yellow"},{"text":"使用道具讓孩子15秒緩速II","color":"yellow"}]
execute if entity @a[tag=toslow,team=good] run effect give @a[gamemode=adventure,team=!good] minecraft:slowness 15 1 true

execute as @a[tag=toslow,team=good,scores={propscount=1..}] run function rgl:props/undo
execute as @a[tag=toslow,team=good,scores={propscount=1..}] run function rgl:props/torch
tag @a[tag=toslow,team=good] remove toslow
