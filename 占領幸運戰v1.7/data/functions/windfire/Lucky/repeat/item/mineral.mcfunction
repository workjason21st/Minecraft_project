#----------礦物轉換---------
#scoreboard players tag @e[type=Item] add iron {Item:{id:"minecraft:iron_ore"}}
#entitydata @e[tag=iron] {PickupDelay:0,Item:{id:"iron_ingot"}}
#scoreboard players tag @e[tag=iron] remove iron

#scoreboard players tag @e[type=Item] add gold {Item:{id:"minecraft:gold_ore"}}
#entitydata @e[tag=gold] {PickupDelay:0,Item:{id:"gold_ingot"}}
#scoreboard players tag @e[tag=gold] remove gold

#scoreboard players tag @e[type=Item] add log2 {Item:{id:"minecraft:log2"}}
#entitydata @e[tag=log2] {PickupDelay:0,Item:{id:"stick",Count:1}}}
#scoreboard players tag @e[tag=log2] remove log2

#scoreboard players tag @e[type=Item] add cobblestone {Item:{id:"minecraft:cobblestone"}}
#entitydata @e[tag=cobblestone] {PickupDelay:0,Item:{id:"cobblestone",tag:{HideFlags:24,CanPlaceOn:[grass,dirt,farmland,potatoes,fence_gate,fence,trapdoor,wooden_door,oak_stairs,ladder,boat,stone,iron_ore,gold_ore,lapis_ore,redstone_ore,diamond_ore,concrete,stone_stairs,obsidian,cobblestone]}}}
#scoreboard players tag @e[tag=cobblestone] remove cobblestone