#----------礦物轉換---------
execute @e[type=item,tag=mineralD,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!mineral,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=ore] add diamond {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralD] ~ ~ ~ entitydata @s[type=item,tag=!mineral,tag=!cobblestone,tag=!iron,tag=!lapis,tag=!redstone,tag=!coal,tag=!gold,tag=ore,tag=diamond] {Tags:[diamond],PickupDelay:0,Item:{id:"diamond"}}
execute @e[type=item,tag=diamond] ~ ~ ~ execute @p ~ ~ ~ scoreboard players set @s mining_stones 0
execute @e[type=item,tag=diamond] ~ ~ ~ tp @s @p