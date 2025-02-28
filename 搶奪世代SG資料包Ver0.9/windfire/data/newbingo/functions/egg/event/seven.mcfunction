execute as @s[scores={sevenegg1=1..}] run scoreboard players add @s sevenegg3 1
execute as @s[scores={sevenegg2=1..}] run scoreboard players add @s sevenegg3 1
execute as @s[scores={sevenegg1=1..}] run scoreboard players remove @s sevenegg1 1
execute as @s[scores={sevenegg2=1..}] run scoreboard players remove @s sevenegg2 1
execute if entity @a[tag=!sevenegg,scores={sevenegg3=7..}] as @e[tag=random0] run tellraw @a ["",{"text":"\n【隱藏彩蛋的惡意】","color":"white","bold":"true"},{"selector":"@a[tag=!sevenegg,scores={sevenegg3=7..}]","bold":"true"},{"text":"收集到7顆綠寶石","color":"dark_red"},{"text":"(得到999秒不祥之兆效果)","color":"white"}]
effect give @s[tag=!sevenegg,scores={sevenegg3=7..}] minecraft:bad_omen 999 0 false
tag @s[tag=!sevenegg,scores={sevenegg3=7..}] add sevenegg
