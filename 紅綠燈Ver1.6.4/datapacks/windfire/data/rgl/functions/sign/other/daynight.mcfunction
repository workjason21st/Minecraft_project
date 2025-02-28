execute if entity @e[tag=core] run setblock 117 54 107 air

execute if entity @e[tag=core,scores={rgldaynight=1}] run setblock 117 54 107 minecraft:birch_wall_sign[facing=west]{Text1:'["",{"text":"白天黑夜和夜視: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rgldaynight"},"color":"black","bold":"false"}]',Text2:'{"text":"白天","color":"black","bold":"true"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=core] rgldaynight 1"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/daynight"}}'}
execute if entity @e[tag=core,scores={rgldaynight=2}] run setblock 117 54 107 minecraft:birch_wall_sign[facing=west]{Text1:'["",{"text":"白天黑夜和夜視: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rgldaynight"},"color":"black","bold":"false"}]',Text2:'{"text":"黑夜 且無夜視","color":"dark_red","bold":"true"}',Text3:'{"text":"建議亮度調整至明亮","bold":"true","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rgldaynight 1"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/daynight"}}'}

execute if entity @e[tag=core,scores={rgldaynight=1}] run time set day
execute if entity @e[tag=core,scores={rgldaynight=2}] run time set 16000
