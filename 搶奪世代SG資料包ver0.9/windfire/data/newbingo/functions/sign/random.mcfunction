execute as @e[tag=random0] at @s run setblock ~11 228 ~-2 air
execute as @e[tag=random0,scores={bingorandom=0}] at @s run setblock ~11 228 ~-2 minecraft:birch_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingorandom 1"}}',Text2:'{"text":"目標物個數：10個","color":"dark_red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我切換個數","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/random"}}'}
execute as @e[tag=random0,scores={bingorandom=1}] at @s run setblock ~11 228 ~-2 minecraft:birch_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingorandom 2"}}',Text2:'{"text":"目標物個數：13個","color":"red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我切換個數","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/random"}}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run setblock ~11 228 ~-2 minecraft:birch_wall_sign[facing=west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=random0] bingorandom 0"}}',Text2:'{"text":"目標物個數：15個","color":"red","bold":"true"}',Text3:'{"text":""}',Text4:'{"text":"點我切換個數","color":"black","clickEvent":{"action":"run_command","value":"function newbingo:sign/random"}}'}

execute as @e[tag=random0,scores={bingorandom=0}] at @s run data merge block ~4 226 ~1 {Text3:'{"text":"會選擇 1 個當作目標","color":"gold"}'}
execute as @e[tag=random0,scores={bingorandom=0}] at @s run data merge block ~4 226 ~3 {Text3:'{"text":"會選擇 1 個當作目標","color":"gold"}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~4 226 ~5 {Text3:'{"text":"會選擇 2 個當作目標","color":"gold"}'}
execute as @e[tag=random0,scores={bingorandom=0}] at @s run data merge block ~4 226 ~7 {Text1:'{"text":"分數４分","color":"black"}'}
execute as @e[tag=random0,scores={bingorandom=0}] at @s run data merge block ~7 226 ~9 {Text1:'{"text":"分數５分","color":"black"}'}
execute as @e[tag=random0,scores={bingorandom=0}] at @s run data merge block ~7 226 ~11 {Text1:'{"text":"分數６分","color":"black"}'}
execute as @e[tag=random0,scores={bingorandom=0}] at @s run data merge block ~2 226 ~10 {Text1:'{"text":"分數５分","color":"black"}'}
execute as @e[tag=random0,scores={bingorandom=0}] at @s run data merge block ~1 226 ~10 {Text1:'{"text":"分數６分","color":"black"}'}

execute as @e[tag=random0,scores={bingorandom=1}] at @s run data merge block ~4 226 ~1 {Text3:'{"text":"會選擇 3 個當作目標","color":"dark_purple"}'}
execute as @e[tag=random0,scores={bingorandom=1}] at @s run data merge block ~4 226 ~3 {Text3:'{"text":"會選擇 2 個當作目標","color":"dark_purple"}'}
execute as @e[tag=random0,scores={bingorandom=1}] at @s run data merge block ~4 226 ~7 {Text1:'{"text":"分數５分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=1}] at @s run data merge block ~7 226 ~9 {Text1:'{"text":"分數６分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=1}] at @s run data merge block ~7 226 ~11 {Text1:'{"text":"分數９分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=1}] at @s run data merge block ~2 226 ~10 {Text1:'{"text":"分數６分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=1}] at @s run data merge block ~1 226 ~10 {Text1:'{"text":"分數９分","color":"blue"}'}

execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~4 226 ~3 {Text3:'{"text":"會選擇 3 個當作目標","color":"dark_purple"}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~4 226 ~5 {Text3:'{"text":"會選擇 3 個當作目標","color":"dark_purple"}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~4 226 ~7 {Text1:'{"text":"分數５分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~7 226 ~9 {Text1:'{"text":"分數７分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~7 226 ~11 {Text1:'{"text":"分數１０分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~2 226 ~10 {Text1:'{"text":"分數７分","color":"blue"}'}
execute as @e[tag=random0,scores={bingorandom=2}] at @s run data merge block ~1 226 ~10 {Text1:'{"text":"分數１０分","color":"blue"}'}
function newbingo:sign/pointchange
#execute if entity @e[tag=random0,scores={bingorandom=1}] run tellraw @a ["",{"text":"\n\n處決模式 ： ","bold":true,"color":"dark_blue"},{"text":"\n目標物被取得後, 它會被處決(清除)"}]
