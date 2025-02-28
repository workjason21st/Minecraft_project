execute if score 7-0-7-0-000700000007 playgame matches -1 as @e[type=minecart] at @s if block ~ ~-2 ~ minecraft:dead_tube_coral_block if block ~ ~-3 ~ minecraft:dead_tube_coral_block run tp @s ~ 60 ~5
execute if score 7-0-7-0-000700000007 playgame matches -1 as @e[tag=lobbyfish] at @s if block ~ ~-0.5 ~ minecraft:light_blue_concrete run tp @s 93 54 88
execute if score 7-0-7-0-000700000007 playgame matches -1 as @e[tag=lobbysquid] at @s if block ~ ~-0.1 ~ minecraft:cyan_carpet run tp @s 92 54 92

execute as @a at @s if block ~ ~-3 ~ dead_bubble_coral_block run function rglplus:lobby/block/jumptp
execute as @e[type=minecart] at @s if block ~ ~-2 ~ minecraft:dead_tube_coral_block run effect give @s minecraft:jump_boost 1 11 false
execute as @a at @s if block ~ ~-2 ~ minecraft:warped_sign if block ~ ~-1 ~ minecraft:white_concrete run function rglplus:lobby/block/dead
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run effect give @s minecraft:levitation 1 255 true

execute as @e[tag=givespyglass] at @s if entity @a[distance=..1] run function rglplus:lobby/block/spyglass
execute as @a[tag=spyglass] at @s unless entity @e[distance=..1,tag=givespyglass] run function rglplus:lobby/block/reglass
execute as @e[tag=egg1] at @s as @a[tag=!eggboot,distance=..1] run function rglplus:lobby/block/run
execute as @e[tag=egg2] at @s if entity @a[tag=!eggegg] as @a[tag=!eggegg,distance=..1,sort=nearest,limit=1] run function rglplus:lobby/block/egg
execute as @a[tag=eggegg,nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] run function rglplus:lobby/block/tpegg
execute as @e[tag=egg2] at @s as @e[tag=0egg,distance=..0.05] run data merge entity @s {NoAI:1b}

execute as @e[tag=egg31] at @s as @a[tag=!egg3-1,distance=..0.4] run tag @s add egg3-1
execute as @e[tag=egg32] at @s as @a[tag=!egg3-2,distance=..0.4] run tag @s add egg3-2
execute as @e[tag=egg33] at @s as @a[tag=!egg3-3,distance=..0.4] run tag @s add egg3-3
execute as @e[tag=egg34] at @s as @a[tag=!egg3-4,distance=..0.4] run tag @s add egg3-4
execute as @e[tag=egg35] at @s as @a[tag=!egg3-5,distance=..0.4] run tag @s add egg3-5
execute as @e[tag=egg3] at @s as @a[tag=!3egg3,tag=egg3-1,tag=egg3-2,tag=egg3-3,tag=egg3-4,tag=egg3-5,distance=..1] run function rglplus:lobby/block/magic

execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run effect give @a[tag=!3egg3] minecraft:invisibility 10 0 true
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run data merge entity @s {PickupDelay:0s}

kill @e[type=item,nbt={Item:{id:"minecraft:chicken"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]

#egg
execute if score 7-0-7-0-000700000007 playgame matches -1 as @a[predicate=rglplus:egg/nausea] run function rglplus:lobby/offhand/nausea
execute if score 7-0-7-0-000700000007 playgame matches -1 as @a[predicate=rglplus:egg/light] run function rglplus:lobby/offhand/light
execute if score 7-0-7-0-000700000007 playgame matches -1 as @a[predicate=rglplus:egg/rabbit] at @s run function rglplus:lobby/offhand/rabbit
execute if score 7-0-7-0-000700000007 playgame matches -1 as @a[predicate=rglplus:egg/bee] at @s run function rglplus:lobby/offhand/bee
execute if score 7-0-7-0-000700000007 playgame matches -1 as @e[type=minecraft:bee,predicate=rglplus:egg/angerbee] run function rglplus:lobby/offhand/angerbee
execute if score 7-0-7-0-000700000007 playgame matches -1 as @a[predicate=rglplus:egg/panda] at @s run function rglplus:lobby/offhand/panda
