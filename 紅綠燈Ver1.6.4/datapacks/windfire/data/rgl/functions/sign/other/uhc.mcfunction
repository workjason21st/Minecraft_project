execute if entity @e[tag=core] run setblock 117 52 107 air
execute if entity @e[tag=core,scores={rgluhc=0}] run setblock 117 52 107 minecraft:birch_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rgluhc 1"}}',Text2:'{"text":"目前: 自然回血","color":"dark_red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我關閉回血","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/uhc"}}'}
execute if entity @e[tag=core,scores={rgluhc=1}] run setblock 117 52 107 minecraft:birch_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=core] rgluhc 0"}}',Text2:'{"text":"目前: 不自然回血","color":"black","bold":"true"}',Text3:'{"text":"","color":"red","bold":"true"}',Text4:'{"text":"點我開啟回血","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/other/uhc"}}'}

execute if entity @e[tag=core,scores={rgluhc=0}] run gamerule naturalRegeneration true
execute if entity @e[tag=core,scores={rgluhc=1}] run gamerule naturalRegeneration false
