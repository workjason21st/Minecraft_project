tellraw @s[tag=!eggnausea] ["",{"text":"『彩蛋』","color":"aqua"},{"text":"你成功讓所有人嘔吐了","color":"aqua"}]
execute as @s[tag=!eggnausea] run effect give @a[name=!bobo_zoe] minecraft:nausea 7 0 true
tag @s[tag=!eggnausea] add eggnausea
