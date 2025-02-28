execute if entity @s[tag=!3egg3] run tellraw @s ["",{"text":"『彩蛋』","color":"gold"},{"selector":"@s"},{"text":"走進了一堆洞","color":"white"}]
tellraw @s[tag=!3egg3] ["",{"text":"『密語』","color":"white"},{"text":"得到了神祕三角形","color":"white"}]
give @s[tag=!3egg3] minecraft:prismarine_shard{Unbreakable:1,display:{Name:'[{"text":"神祕三角形","bold":true,"color":"gold"}]',Lore:['[{"text":"丟出去讓最近的他人隱形10秒","color":"gold"}]']},HideFlags:1,Enchantments:[{id:"minecraft:fortune",lvl:7}]} 1
tag @s add 3egg3
