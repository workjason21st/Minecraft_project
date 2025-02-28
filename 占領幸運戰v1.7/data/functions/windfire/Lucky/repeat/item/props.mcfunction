#----------商店道具---------
scoreboard players tag @e[type=Item] add fire_charge {OnGround:1b,Item:{id:"minecraft:fire_charge",Count:1b}}
execute @e[tag=fire_charge] ~ ~ ~ fill ~-2 ~ ~-2 ~2 ~2 ~2 air 0 replace dirt
execute @e[tag=fire_charge] ~ ~ ~ fill ~-2 ~ ~-2 ~2 ~2 ~2 air 0 replace grass
execute @e[tag=fire_charge] ~ ~ ~ fill ~-2 ~ ~-2 ~2 ~2 ~2 air 0 replace grass_path
execute @e[tag=fire_charge] ~ ~ ~ fill ~-2 ~ ~-2 ~2 ~2 ~2 air 0 replace cobblestone
execute @e[tag=fire_charge] ~ ~ ~ fill ~-2 ~ ~-2 ~2 ~2 ~2 air 0 replace stone
execute @e[tag=fire_charge] ~ ~ ~ playsound minecraft:entity.blaze.shoot master @p ~ ~ ~ 0.77 0 0 0 0 0
kill @e[tag=fire_charge]
#--------------------------------------------------------------------------------
scoreboard players tag @e[type=Item] add firework_charge {OnGround:1b,Item:{id:"minecraft:firework_charge",Count:1b}}
execute @e[tag=firework_charge] ~ ~ ~ playsound minecraft:entity.bat.loop master @p ~ ~ ~ 0.77 2 0 0 0 0
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace grass
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace grass_path
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace dirt
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace stone
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace iron_ore
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace gold_ore
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace redair_ore
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace lapis_ore
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace diamond_ore
execute @e[tag=firework_charge] ~ ~ ~ fill ~ ~-14 ~ ~ ~ ~ air 0 replace obsidian
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace air
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace grass
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace dirt
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace stone
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace iron_ore
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace gold_ore
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace redair_ore
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace lapis_ore
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace diamond_ore
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace lava
execute @e[tag=firework_charge] ~ ~ ~ setblock ~ ~-15 ~ water 0 replace obsidian
kill @e[tag=firework_charge]
#--------------------------------------------------------------------------------
scoreboard players tag @e[type=Item] add blaze_rod {OnGround:1b,Item:{id:"minecraft:blaze_rod",Count:1b}}
execute @e[tag=blaze_rod] ~ ~ ~ scoreboard players tag @p add blaze_rod_man
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace water
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace lava
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace air
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace grass
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace grass_path
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace dirt
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace cobblestone
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace iron_ore
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace gold_ore
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace redstone_ore
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace lapis_ore
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace diamond_ore
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~ ~ stone 0 replace obsidian
execute @e[tag=blaze_rod] ~ ~ ~ fill ~ ~17 ~ ~ ~15 ~ air 0 replace stone
execute @e[tag=blaze_rod] ~ ~ ~ tp @e[tag=blaze_rod] ~ ~16 ~
execute @e[tag=blaze_rod] ~ ~ ~ tp @p[tag=blaze_rod_man] @e[tag=blaze_rod]
execute @e[tag=blaze_rod] ~ ~ ~ scoreboard players tag @p remove blaze_rod_man
execute @e[tag=blaze_rod] ~ ~ ~ playsound minecraft:entity.bat.loop master @p ~ ~ ~ 0.77 0.1 0 0 0 0
kill @e[tag=blaze_rod]


#--------------------------------------------------------------------------------
scoreboard players tag @e[type=Item] add glass {Item:{id:"minecraft:glass",Count:1b}}
execute @e[tag=glass] ~ ~ ~ scoreboard players tag @p add glasser
#正北方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,tag=glasser,rym=157,ry=-157] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ fill ~3 ~1 ~-2 ~-3 ~ ~-2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=157,ry=-157] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ ~ kill @s
execute @e[c=1,tag=glasser,rym=157,ry=-157] ~ ~ ~ scoreboard players tag @s remove glasser
#東北方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
##北北東
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~1 ~1 ~-3 ~ ~ ~-3 fence 0 replace air
##正東北
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~1 ~ ~-2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~2 ~1 ~-2 ~2 ~ ~-1 fence 0 replace air
##東北東
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ fill ~3 ~1 ~ ~3 ~ ~-1 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-157,ry=-113] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ 
execute @e[c=1,tag=glasser,rym=-157,ry=-113] ~ ~ ~ scoreboard players tag @s remove glasser~ kill @s
#------------------------------------------------------
#正東方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ fill ~2 ~1 ~3 ~2 ~ ~-3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-113,ry=-67] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ ~ kill @s
execute @e[c=1,tag=glasser,rym=-113,ry=-67] ~ ~ ~ scoreboard players tag @s remove glasser
#東南方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
##東南東
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace grass 
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~3 ~1 ~1 ~3 ~ ~ fence 0 replace air
##正東南
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace grass 
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~1 ~ ~2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace grass 
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace grass 
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~2 ~1 ~2 ~2 ~ ~1 fence 0 replace air
##南南東
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace grass 
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ fill ~1 ~1 ~3 ~ ~ ~3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-67,ry=-23] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ ~ kill @s
execute @e[c=1,tag=glasser,rym=-67,ry=-23] ~ ~ ~ scoreboard players tag @s remove glasser
#------------------------------------------------------
#正南方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ fill ~3 ~1 ~2 ~-3 ~ ~2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=-23,ry=23] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ ~ kill @s
execute @e[c=1,tag=glasser,rym=-23,ry=23] ~ ~ ~ scoreboard players tag @s remove glasser
#西南方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
##南南西
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-1 ~1 ~3 ~ ~ ~3 fence 0 replace air
##正西南
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-1 ~ ~2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-2 ~1 ~2 ~-2 ~ ~1 fence 0 replace air
##西南西
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ fill ~-3 ~1 ~1 ~-3 ~ ~ fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=23,ry=67] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ ~ kill @s
execute @e[c=1,tag=glasser,rym=23,ry=67] ~ ~ ~ scoreboard players tag @s remove glasser
#------------------------------------------------------
#正西方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ fill ~-2 ~1 ~3 ~-2 ~ ~-3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=67,ry=113] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ ~ kill @s
execute @e[c=1,tag=glasser,rym=67,ry=113] ~ ~ ~ scoreboard players tag @s remove glasser
#西北方
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ playsound minecraft:block.enderchest.close master @s ~ ~ ~ 0.77 0.1 0 0 0 0
##西北西
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-3 ~1 ~ ~-3 ~ ~-1 fence 0 replace air
##正西北
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-1 ~ ~-2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-2 fence 0 replace air
#---------------------------
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-2 ~1 ~-2 ~-2 ~ ~-1 fence 0 replace air
##北北西
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace tallgrass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace double_plant 2
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace red_flower 1
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace yellow_flower
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace leaves
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace grass
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace dirt
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace stone
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace water
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace lava
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ fill ~-1 ~1 ~-3 ~ ~ ~-3 fence 0 replace air
execute @e[tag=glass] ~ ~ ~ execute @p[tag=glasser,rym=113,ry=157] ~ ~ ~ execute @e[tag=glass,c=1] ~ ~ ~ kill @s
execute @e[c=1,tag=glasser,rym=113,ry=157] ~ ~ ~ scoreboard players tag @s remove glasser
