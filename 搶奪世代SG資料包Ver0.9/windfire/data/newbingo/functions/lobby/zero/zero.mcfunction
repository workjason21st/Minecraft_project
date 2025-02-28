execute as @e[tag=lobbyboom] at @s if entity @a[gamemode=!creative,distance=..1] run function newbingo:lobby/zero/boom
execute as @e[tag=lobbyfly] at @s if entity @a[gamemode=!creative,distance=..1] run function newbingo:lobby/zero/fly
execute as @e[tag=lobbyfall] at @s if entity @a[gamemode=!creative,distance=..1] run function newbingo:lobby/zero/fall
execute as @e[tag=lobbyseven] at @s if entity @a[gamemode=!creative,distance=..1] run function newbingo:lobby/zero/seven

execute as @e[tag=lobbyauthor1] at @s if entity @a[distance=..1] run function newbingo:lobby/zero/author1
execute if entity Hsiao_Yui as @e[tag=lobbyegg1] at @s if entity @a[distance=..1] run function newbingo:lobby/zero/8.6
execute as @e[tag=lobbyegg2] at @s if entity @a[distance=..1] run function newbingo:lobby/zero/red
