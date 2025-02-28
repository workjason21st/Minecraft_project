execute if entity @e[tag=core,scores={gameend=-1}] if block 117 52 110 minecraft:polished_blackstone_button[powered=true] run function rgl:lobby/prestart
execute if entity @e[tag=core,scores={gameend=-1}] if block 118 53 110 minecraft:target[power=14] run function rgl:start/before
execute if entity @e[tag=core,scores={gameend=-1}] if block 118 53 110 minecraft:target[power=15] run function rgl:start/before
execute if entity @e[tag=core,scores={gameend=-1}] if entity @a[scores={deathdetect=1..}] run function rgl:lobby/death
#####
execute if entity @e[tag=core,scores={gameend=-1}] as @e[type=minecart] at @s if block ~ ~-2 ~ minecraft:dead_tube_coral_block if block ~ ~-3 ~ minecraft:dead_tube_coral_block run tp @s ~ 60 ~5
execute if entity @e[tag=core,scores={gameend=-1}] as @e[tag=lobbyfish] at @s if block ~ ~-0.5 ~ minecraft:light_blue_concrete run tp @s 93 54 88
execute if entity @e[tag=core,scores={gameend=-1}] as @e[tag=lobbysquid] at @s if block ~ ~-0.1 ~ minecraft:cyan_carpet run tp @s 92 54 92

execute as @a at @s if block ~ ~-3 ~ dead_bubble_coral_block run function rgl:lobby/block/jumptp
execute as @e[type=minecart] at @s if block ~ ~-2 ~ minecraft:dead_tube_coral_block run effect give @s minecraft:jump_boost 1 11 false
execute as @a at @s if block ~ ~-2 ~ minecraft:warped_sign if block ~ ~-1 ~ minecraft:white_concrete run function rgl:lobby/block/dead
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run effect give @s minecraft:levitation 1 255 true

execute as @e[tag=givespyglass] at @s if entity @a[distance=..1] run function rgl:lobby/block/spyglass
execute as @a[tag=spyglass] at @s unless entity @e[distance=..1,tag=givespyglass] run function rgl:lobby/block/reglass
execute as @e[tag=egg1] at @s as @a[tag=!eggboot,distance=..1] run function rgl:lobby/block/run
execute as @e[tag=egg2] at @s if entity @a[tag=!eggegg] as @a[tag=!eggegg,distance=..1,sort=nearest,limit=1] run function rgl:lobby/block/egg
execute as @a[tag=eggegg,nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] run function rgl:lobby/block/tpegg
execute as @e[tag=egg2] at @s as @e[tag=0egg,distance=..0.05] run data merge entity @s {NoAI:1}

execute as @e[tag=egg31] at @s as @a[tag=!egg3-1,distance=..0.4] run tag @s add egg3-1
execute as @e[tag=egg32] at @s as @a[tag=!egg3-2,distance=..0.4] run tag @s add egg3-2
execute as @e[tag=egg33] at @s as @a[tag=!egg3-3,distance=..0.4] run tag @s add egg3-3
execute as @e[tag=egg34] at @s as @a[tag=!egg3-4,distance=..0.4] run tag @s add egg3-4
execute as @e[tag=egg35] at @s as @a[tag=!egg3-5,distance=..0.4] run tag @s add egg3-5
execute as @e[tag=egg3] at @s as @a[tag=!3egg3,tag=egg3-1,tag=egg3-2,tag=egg3-3,tag=egg3-4,tag=egg3-5,distance=..1] run function rgl:lobby/block/magic

execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run effect give @a[tag=!3egg3] minecraft:invisibility 10 0 true
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run data merge entity @s {PickupDelay:0s}

kill @e[type=item,nbt={Item:{id:"minecraft:chicken"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]

#egg
execute if entity @e[tag=core,scores={gameend=-1}] as @a[predicate=rgl:egg/nausea] run function rgl:lobby/offhand/nausea
execute if entity @e[tag=core,scores={gameend=-1}] as @a[predicate=rgl:egg/light] run function rgl:lobby/offhand/light
execute if entity @e[tag=core,scores={gameend=-1}] as @a[predicate=rgl:egg/rabbit] at @s run function rgl:lobby/offhand/rabbit
execute if entity @e[tag=core,scores={gameend=-1}] as @a[predicate=rgl:egg/bee] at @s run function rgl:lobby/offhand/bee
execute if entity @e[tag=core,scores={gameend=-1}] as @e[type=minecraft:bee,predicate=rgl:egg/angerbee] run function rgl:lobby/offhand/angerbee
execute if entity @e[tag=core,scores={gameend=-1}] as @a[predicate=rgl:egg/panda] at @s run function rgl:lobby/offhand/panda
