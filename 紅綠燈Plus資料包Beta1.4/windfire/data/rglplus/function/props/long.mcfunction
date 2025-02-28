
execute as @a[tag=!tolong,team=ghost] at @s if entity @e[type=item,predicate=rglplus:props/long,distance=..3] if score @s throw_id0 = @e[type=item,predicate=rglplus:props/long,limit=1,sort=nearest] throw_id0 if score @s throw_id1 = @e[type=item,predicate=rglplus:props/long,limit=1,sort=nearest] throw_id1 if score @s throw_id2 = @e[type=item,predicate=rglplus:props/long,limit=1,sort=nearest] throw_id2 if score @s throw_id3 = @e[type=item,predicate=rglplus:props/long,limit=1,sort=nearest] throw_id3 run tag @s add tolong
execute as @a[tag=tolong,team=ghost] at @s as @e[type=item,predicate=rglplus:props/long,limit=1,sort=nearest] run kill @s

execute if entity @a[tag=tolong,team=ghost] run tellraw @a ["",{"text":"紅綠燈： ","color":"white"},{"selector":"@a[tag=tolong,team=ghost]","bold":true,"color":"yellow"},{"text":"使用道具讓自身加長6格攻擊距離15秒","color":"yellow"}]
execute as @a[tag=tolong,team=ghost] run attribute @s player.entity_interaction_range base set 9
execute as @a[tag=tolong,team=ghost] run tag @s add tolongtime
execute as @a[tag=tolong,team=ghost] run scoreboard players add @s propstime 15

execute as @a[tag=tolong,team=ghost,scores={propscount=1..}] run function rglplus:props/undo
execute as @a[tag=tolong,team=ghost,scores={propscount=1..}] run function rglplus:props/torch
tag @a[tag=tolong,team=ghost] remove tolong
