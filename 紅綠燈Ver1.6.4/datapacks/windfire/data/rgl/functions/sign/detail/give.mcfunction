scoreboard players set @e[tag=core,scores={rglmode=6,rglgive=..0}] rglgive 60
scoreboard players set @e[tag=core,scores={rglmode=6,rglgive=61..}] rglgive 5

execute if entity @e[tag=core] run fill 112 53 105 112 51 105 air
execute if entity @e[tag=core,scores={rglmode=6,rglgive=0..999}] run setblock 112 53 105 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"每幾秒給予綠燈: ","color":"black","bold":"true"}]',Text2:'["",{"text":"每","color":"dark_blue","bold":"false"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglgive"},"color":"dark_blue","bold":"true"},{"text":"秒鐘給全員1個","color":"dark_blue","bold":"false"}]',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=core] rglgive 5"}}',Text4:'{"text":"點我增加","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/detail/give"}}'}
execute if entity @e[tag=core,scores={rglmode=6,rglgive=0..999}] run setblock 112 52 105 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"每幾秒給予綠燈: ","color":"black","bold":"true"}]',Text2:'["",{"text":"每","color":"dark_blue","bold":"false"},{"score":{"name":"@e[tag=core,limit=1]","objective":"rglgive"},"color":"dark_blue","bold":"true"},{"text":"秒鐘給全員1個","color":"dark_blue","bold":"false"}]',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players remove @e[tag=core] rglgive 5"}}',Text4:'{"text":"點我減少","color":"black","clickEvent":{"action":"run_command","value":"function rgl:sign/detail/give"}}'}

scoreboard players set @e[tag=random6,limit=1] rglcount 60
scoreboard players operation @e[tag=random6,limit=1] rglcount *= @e[tag=core,limit=1] rgltime
scoreboard players operation @e[tag=random6,limit=1] rglcount /= @e[tag=core,limit=1] rglgive
execute store result score @e[tag=core,limit=1] laster if entity @a[team=bad]
scoreboard players operation @e[tag=random6,limit=1] rglcount *= @e[tag=core,limit=1] laster
execute if entity @e[tag=core,scores={rglmode=6,rglgive=0..999}] run setblock 112 51 105 minecraft:oak_wall_sign[facing=east]{Text1:'["",{"text":"根據當前時間計算: ","color":"black","bold":"false"}]',Text2:'["",{"text":"全隊最多可以得到","color":"black","bold":"true"}]',Text3:'["",{"score":{"name":"@e[tag=random6,limit=1]","objective":"rglcount"},"color":"black","bold":"true"},{"text":" 個綠燈","color":"black","bold":"false"}]',Text4:'{}'}
