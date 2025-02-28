#----------礦物轉換---------
execute @e[type=item,tag=mineralD,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!ore] add cobblestone {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralL,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!ore] add cobblestone {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralG,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!ore] add cobblestone {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineralI,c=1] ~ ~ ~ scoreboard players tag @s[type=item,tag=!coal,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!ore] add cobblestone {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=cobblestone] ~ ~ ~ entitydata @s {PickupDelay:0,Tags:[cobblestone],Item:{id:"cobblestone",tag:{HideFlags:24,CanPlaceOn:[grass,dirt,farmland,potatoes,fence_gate,fence,trapdoor,wooden_door,oak_stairs,ladder,boat,stone,iron_ore,gold_ore,lapis_ore,redstone_ore,diamond_ore,stone_stairs,obsidian,cobblestone]}}}
execute @e[type=item,tag=cobblestone] ~ ~ ~ execute @p ~ ~ ~ scoreboard players set @s mining_stones 0
execute @e[type=item,tag=cobblestone] ~ ~ ~ tp @s @p
