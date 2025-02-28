#----------礦物轉換---------
execute @e[type=item,tag=mineralI,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!mineral,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=ore] add iron {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralI] ~ ~ ~ entitydata @s[type=item,tag=!mineral,tag=!cobblestone,tag=!diamond,tag=!lapis,tag=!redstone,tag=!coal,tag=!gold,tag=ore,tag=iron] {Tags:[iron],PickupDelay:0,Item:{id:"iron_ingot"}}
execute @e[type=item,tag=iron] ~ ~ ~ execute @p ~ ~ ~ scoreboard players set @s mining_stones 0
execute @e[type=item,tag=iron] ~ ~ ~ tp @s @p