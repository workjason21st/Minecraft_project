execute if entity @e[tag=core] run setblock 117 53 106 air
execute if entity @e[tag=core,scores={rgljump=0}] run setblock 117 53 106 minecraft:birch_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rgljump 1"}}',Text2:'{"text":"目前: 會摔傷","color":"black","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/jump"}}'}
execute if entity @e[tag=core,scores={rgljump=1}] run setblock 117 53 106 minecraft:birch_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rgljump 0"}}',Text2:'{"text":"目前: 無摔落傷害","color":"dark_red","bold":"true"}',Text3:'{"text":"","color":"red","bold":"true"}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/jump"}}'}

execute if entity @e[tag=core,scores={rgljump=0}] run gamerule fallDamage true
execute if entity @e[tag=core,scores={rgljump=1}] run gamerule fallDamage false
