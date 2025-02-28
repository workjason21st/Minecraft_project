#----------礦物轉換---------
execute @e[type=item,tag=mineralD,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!mineral,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=ore] add redstone {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralD] ~ ~ ~ entitydata @s[type=item,tag=!mineral,tag=!cobblestone,tag=!iron,tag=!lapis,tag=!diamond,tag=!coal,tag=!gold,tag=ore,tag=redstone] {Tags:[redstone],PickupDelay:0,Item:{id:"redstone"}}
execute @e[type=item,tag=redstone] ~ ~ ~ execute @p ~ ~ ~ scoreboard players set @s mining_stones 0
execute @e[type=item,tag=redstone] ~ ~ ~ tp @s @p