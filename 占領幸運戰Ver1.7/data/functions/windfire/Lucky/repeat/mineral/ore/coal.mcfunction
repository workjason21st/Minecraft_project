#----------礦物轉換---------
scoreboard players tag @e[type=item,tag=!mineral,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=ore,c=1] add coal {Item:{id:"minecraft:cobblestone"}}
entitydata @e[type=item,tag=!mineral,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=ore,tag=coal] {Tags:[coal],PickupDelay:0,Item:{id:"coal",Damage:1s}}
execute @e[type=item,tag=coal] ~ ~ ~ execute @p ~ ~ ~ scoreboard players set @s mining_stones 0
execute @e[type=item,tag=coal] ~ ~ ~ tp @s @p
