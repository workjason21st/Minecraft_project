execute as @e[tag=random0] at @s run setblock ~7 227 ~-11 air
execute as @e[tag=random0,scores={bingokeep=0}] at @s run setblock ~7 227 ~-11 minecraft:birch_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingokeep 1"}}',Text2:'{"text":"目前: 死亡噴裝","color":"dark_red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我關閉","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/other/keep"}}'}
execute as @e[tag=random0,scores={bingokeep=1}] at @s run setblock ~7 227 ~-11 minecraft:dark_oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingokeep 0"}}',Text2:'{"text":"目前: 死亡不噴裝","color":"red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我開啟","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/other/keep"}}'}

execute if entity @e[tag=random0,scores={bingokeep=0}] run gamerule keepInventory false
execute if entity @e[tag=random0,scores={bingokeep=1}] run gamerule keepInventory true
