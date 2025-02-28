#----------礦物轉換---------
execute @e[type=item,tag=mineralL,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!mineral,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=ore] add lapis {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralL] ~ ~ ~ entitydata @s[type=item,tag=!mineral,tag=!cobblestone,tag=!iron,tag=!gold,tag=!redstone,tag=!coal,tag=!diamond,tag=ore,tag=lapis] {Tags:[lapis],PickupDelay:0,Item:{id:"dye",Damage:4s}}
execute @e[type=item,tag=lapis] ~ ~ ~ execute @p ~ ~ ~ scoreboard players set @s mining_stones 0
execute @e[type=item,tag=lapis] ~ ~ ~ tp @s @p