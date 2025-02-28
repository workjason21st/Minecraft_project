execute as @e[tag=random0] at @s run setblock ~5 226 ~-11 air
execute as @e[tag=random0,scores={bingouhc=0}] at @s run setblock ~5 226 ~-11 minecraft:birch_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingouhc 1"}}',Text2:'{"text":"目前: 自然回血","color":"dark_red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我關閉回血","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/other/uhc"}}'}
execute as @e[tag=random0,scores={bingouhc=1}] at @s run setblock ~5 226 ~-11 minecraft:dark_oak_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingouhc 0"}}',Text2:'{"text":"目前: ","color":"red","bold":"true"}',Text3:'{"text":"不自然回血UHC","color":"red","bold":"true"}',Text4:'{"text":"點我開啟回血","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/other/uhc"}}'}

execute if entity @e[tag=random0,scores={bingouhc=0}] run gamerule naturalRegeneration true
execute if entity @e[tag=random0,scores={bingouhc=1}] run gamerule naturalRegeneration false
