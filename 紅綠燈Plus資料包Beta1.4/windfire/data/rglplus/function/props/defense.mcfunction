
execute as @a[tag=!todefense,team=ghost] at @s if entity @e[type=item,predicate=rglplus:props/defense,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:props/defense,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:props/defense,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:props/defense,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:props/defense,limit=1,sort=nearest] throw_id3 run tag @s add todefense
execute as @a[tag=todefense,team=ghost] at @s as @e[type=item,predicate=rglplus:props/defense,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=todefense,team=ghost] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=todefense,team=ghost]","bold":true,"color":"yellow"},{"text":"使用道具讓全部鬼10秒無敵","color":"yellow"}]
execute if entity @a[tag=todefense,team=ghost] run effect give @a[gamemode=adventure,team=ghost] minecraft:resistance 10 10 true

execute as @a[tag=todefense,team=ghost,scores={propscount=1..}] run function rglplus:props/undo
execute as @a[tag=todefense,team=ghost,scores={propscount=1..}] run function rglplus:props/torch
tag @a[tag=todefense,team=ghost] remove todefense
