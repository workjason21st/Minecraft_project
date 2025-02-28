execute if entity @e[tag=core] run setblock 117 53 107 air

execute if entity @e[tag=core,scores={rglfriend=0}] run setblock 117 53 107 minecraft:birch_wall_sign[facing=west]{Text1:'["",{"text":"同隊傷害設定: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglfriend"},"color":"black","bold":"false"}]',Text2:'{"text":"雙方皆無同隊傷害","color":"black","bold":"true"}',Text3:'{"text":"","color":"gold","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=core] rglfriend 1"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/friend"}}'}
execute if entity @e[tag=core,scores={rglfriend=1}] run setblock 117 53 107 minecraft:birch_wall_sign[facing=west]{Text1:'["",{"text":"同隊傷害設定: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglfriend"},"color":"black","bold":"false"}]',Text2:'{"text":"雙方皆有同隊傷害","color":"dark_red","bold":"true"}',Text3:'{"text":"","color":"gold","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=core] rglfriend 1"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/friend"}}'}
execute if entity @e[tag=core,scores={rglfriend=2}] run setblock 117 53 107 minecraft:birch_wall_sign[facing=west]{Text1:'["",{"text":"同隊傷害設定: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglfriend"},"color":"black","bold":"false"}]',Text2:'{"text":"壞孩子有同隊傷害","color":"dark_red","bold":"true"}',Text3:'{"text":"鬼無同隊傷害","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=core] rglfriend 1"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/friend"}}'}
execute if entity @e[tag=core,scores={rglfriend=3}] run setblock 117 53 107 minecraft:birch_wall_sign[facing=west]{Text1:'["",{"text":"同隊傷害設定: ","color":"black","bold":"true"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglfriend"},"color":"black","bold":"false"}]',Text2:'{"text":"壞孩子無同隊傷害","color":"black"}',Text3:'{"text":"鬼有同隊傷害","color":"dark_red","bold":"true","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rglfriend 0"}}',Text4:'{"text":"點我切換","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/friend"}}'}


execute if entity @e[tag=core,scores={rglfriend=0}] run team modify good friendlyFire false
execute if entity @e[tag=core,scores={rglfriend=0}] run team modify bad friendlyFire false

execute if entity @e[tag=core,scores={rglfriend=1}] run team modify good friendlyFire true
execute if entity @e[tag=core,scores={rglfriend=1}] run team modify bad friendlyFire true

execute if entity @e[tag=core,scores={rglfriend=2}] run team modify good friendlyFire false
execute if entity @e[tag=core,scores={rglfriend=3}] run team modify bad friendlyFire false
execute if entity @e[tag=core,scores={rglfriend=3}] run team modify good friendlyFire true
