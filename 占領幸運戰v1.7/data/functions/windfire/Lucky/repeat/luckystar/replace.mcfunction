#----------清除並放置---------
scoreboard players tag @e[type=Item] add nether_star {OnGround:1b,Item:{id:"minecraft:nether_star",Count:1b}}
execute @e[tag=nether_star] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:[luckystand],Small:1b,Invisible:1b,Invulnerable:1b}
kill @e[tag=nether_star]

#----------隨機幸運---------
execute @r[type=armor_stand,tag=luckystar] ~ ~ ~ setblock ~ ~ ~ redstone_block

