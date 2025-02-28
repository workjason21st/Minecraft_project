effect give @s minecraft:poison 3 0 false
execute as @e[tag=random0] run tellraw @a ["",{"text":"\n【開啟彩蛋的後果】","color":"white","bold":"true"},{"selector":"@a[scores={killyui=1..}]","bold":"true"},{"selector":"@a[scores={killyuihome=1..}]","bold":"true"},{"text":"就跟你講不要傷害蜜蜂了","color":"red"},{"text":"(得到3秒中毒效果)","color":"white"}]
scoreboard players set @s killyui 0
scoreboard players set @s killyuihome 0
