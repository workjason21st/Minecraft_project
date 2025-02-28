scoreboard players set @e[tag=core,scores={rgltime=..1}] rgltime 20
scoreboard players set @e[tag=core,scores={rgltime=21..}] rgltime 2

execute if entity @e[tag=core] run fill 112 53 107 112 52 107 air
execute if entity @e[tag=core,scores={rgltime=0..32}] run setblock 112 53 107 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊玩時長: ","color":"black","bold":"true"}]',Text2:'["",{"score":{"name":"@e[tag=core,limit=1]","objective":"rgltime"},"color":"blue","bold":"true"},{"text":"分鐘","color":"blue","bold":"false"}]',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=core] rgltime 1"}}',Text4:'{"text":"點我增加","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/time"}}'}
execute if entity @e[tag=core,scores={rgltime=0..32}] run setblock 112 52 107 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"遊玩時長: ","color":"black","bold":"true"}]',Text2:'["",{"score":{"name":"@e[tag=core,limit=1]","objective":"rgltime"},"color":"blue","bold":"true"},{"text":"分鐘","color":"blue","bold":"false"}]',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players remove @e[tag=core] rgltime 1"}}',Text4:'{"text":"點我減少","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/time"}}'}

execute if entity @e[tag=core,scores={rglmode=6}] run function rgl:sign/detail/give
