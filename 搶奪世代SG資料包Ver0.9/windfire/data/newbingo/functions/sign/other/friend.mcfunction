execute as @e[tag=random0] at @s run setblock ~5 227 ~-11 air
execute as @e[tag=random0,scores={bingofriend=0}] at @s run setblock ~5 227 ~-11 minecraft:birch_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingofriend 1"}}',Text2:'{"text":"目前: 無同隊傷害","color":"dark_red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我開啟","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/other/friend"}}'}
execute as @e[tag=random0,scores={bingofriend=1}] at @s run setblock ~5 227 ~-11 minecraft:dark_oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingofriend 0"}}',Text2:'{"text":"目前: 有同隊傷害","color":"red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我關閉","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/other/friend"}}'}

execute if entity @e[tag=random0,scores={bingofriend=0}] run team modify yellow friendlyFire false
execute if entity @e[tag=random0,scores={bingofriend=0}] run team modify red friendlyFire false
execute if entity @e[tag=random0,scores={bingofriend=0}] run team modify green friendlyFire false
execute if entity @e[tag=random0,scores={bingofriend=0}] run team modify aqua friendlyFire false

execute if entity @e[tag=random0,scores={bingofriend=1}] run team modify yellow friendlyFire true
execute if entity @e[tag=random0,scores={bingofriend=1}] run team modify red friendlyFire true
execute if entity @e[tag=random0,scores={bingofriend=1}] run team modify green friendlyFire true
execute if entity @e[tag=random0,scores={bingofriend=1}] run team modify aqua friendlyFire true