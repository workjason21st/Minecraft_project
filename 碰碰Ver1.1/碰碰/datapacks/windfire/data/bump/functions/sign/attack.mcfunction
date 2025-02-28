setblock 111 43 112 air
execute as @e[tag=mainAI,scores={bumpattack=0}] at @s run setblock 111 43 112 minecraft:birch_wall_sign[facing=east]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=mainAI] bumpattack 1"}}',Text2:'{"text":"目前: 無同隊傷害","color":"dark_red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我開啟","color":"black","clickEvent":{"action":"run_command","value":"function bump:sign/attack"}}'}
execute as @e[tag=mainAI,scores={bumpattack=1}] at @s run setblock 111 43 112 minecraft:dark_oak_wall_sign[facing=east]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=mainAI] bumpattack 0"}}',Text2:'{"text":"目前: 有同隊傷害","color":"red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我關閉","color":"black","clickEvent":{"action":"run_command","value":"function bump:sign/attack"}}'}

execute as @e[tag=mainAI,scores={bumpattack=0}] run team modify yellow friendlyFire false
execute as @e[tag=mainAI,scores={bumpattack=0}] run team modify red friendlyFire false
execute as @e[tag=mainAI,scores={bumpattack=0}] run team modify green friendlyFire false
execute as @e[tag=mainAI,scores={bumpattack=0}] run team modify aqua friendlyFire false

execute as @e[tag=mainAI,scores={bumpattack=1}] run team modify yellow friendlyFire true
execute as @e[tag=mainAI,scores={bumpattack=1}] run team modify red friendlyFire true
execute as @e[tag=mainAI,scores={bumpattack=1}] run team modify green friendlyFire true
execute as @e[tag=mainAI,scores={bumpattack=1}] run team modify aqua friendlyFire true