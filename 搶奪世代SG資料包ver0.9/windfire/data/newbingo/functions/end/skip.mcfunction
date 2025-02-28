tag @s add skiper
execute store result score @e[tag=random0,limit=1] bingoskiper if entity @a[tag=skiper]
tellraw @a ["",{"text":"目前同意結束的人數 ▶▶▶ ","bold":false,"color":"white"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"bingoskiper"},"bold":true,"color":"red"},{"text":" / ","bold":false,"color":"white"},{"score":{"name":"@e[tag=random0,limit=1]","objective":"bingoplayer"},"bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"只要有過半數人同意就會強制判定輸贏","color":"red"}]}},{"text":"(總共需要的人數)","bold":false,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"只要有過半數人同意就會強制判定輸贏","color":"red"}]}}]
execute as @e[tag=random0,limit=1] if score @s bingoskiper = @s bingoplayer run tellraw @a ["",{"text":"▶▶▶強制結束投票通過▶▶▶","bold":true,"color":"white"}]
execute as @e[tag=random0,limit=1] if score @s bingoskiper = @s bingoplayer run scoreboard players operation @e[tag=random0,limit=1] gametime = @e[tag=random0,limit=1] mode2time
