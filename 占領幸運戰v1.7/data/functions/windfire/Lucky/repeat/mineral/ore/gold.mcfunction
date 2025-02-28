#----------礦物轉換---------
execute @e[type=item,tag=mineralG,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!mineral,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=ore] add gold {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralG] ~ ~ ~ entitydata @s[type=item,tag=!mineral,tag=!cobblestone,tag=!iron,tag=!lapis,tag=!redstone,tag=!coal,tag=!diamond,tag=ore,tag=gold] {Tags:[gold],PickupDelay:0,Item:{id:"gold_ingot"}}
execute @e[type=item,tag=gold] ~ ~ ~ execute @p ~ ~ ~ scoreboard players set @s mining_stones 0
execute @e[type=item,tag=gold] ~ ~ ~ tp @s @p