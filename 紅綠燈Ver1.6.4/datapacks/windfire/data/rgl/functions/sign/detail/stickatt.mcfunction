scoreboard players set @e[tag=core,scores={rglspecial=3,rglstickatt=..2}] rglstickatt 10
scoreboard players set @e[tag=core,scores={rglspecial=3,rglstickatt=11..}] rglstickatt 3

execute if entity @e[tag=core] run fill 112 54 108 112 54 108 air
execute if entity @e[tag=core,scores={rglspecial=3,rglstickatt=0..15}] run setblock 112 54 108 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"壞小孩的木棍攻擊力: ","color":"black","bold":"true"}]',Text2:'["",{"score":{"name":"@e[tag=core,limit=1]","objective":"rglstickatt"},"color":"green","bold":"true"},{"text":" 點(半顆心)的傷害","color":"green","bold":"false"}]',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=core] rglstickatt 1"}}',Text4:'{"text":"點我增加","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/detail/stickatt"}}'}
