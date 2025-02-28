#forceload
execute unless entity @e[tag=core,scores={rglmap=3}] run forceload remove 487 533
execute unless entity @e[tag=core,scores={rglmap=3}] run forceload remove 570 652
execute unless entity @e[tag=core,scores={rglmap=3}] run forceload remove 409 668
execute if entity @e[tag=core,scores={rglmap=3}] run forceload add 487 533
execute if entity @e[tag=core,scores={rglmap=3}] run forceload add 570 652
execute if entity @e[tag=core,scores={rglmap=3}] run forceload add 409 668

execute as @a run function rgl:map/tpspawn
execute if entity @e[tag=core,scores={rglmap=1}] run spreadplayers 1191.0 1218.0 0 16 under 55 false @a[team=bad]
#
#execute as @e[type=minecraft:item_frame,nbt={Fixed:0b,Invisible:0b}] run data merge entity @s {Fixed:1,Invisible:1}
#execute as @e[type=minecraft:item_frame,nbt={Invulnerable:0b}] run data merge entity @s {Invulnerable:1}
#execute as @e[type=minecraft:painting,nbt={Invulnerable:0b}] run data merge entity @s {Invulnerable:1}
#execute as @e[type=minecraft:minecart,nbt={Invulnerable:0b}] run data merge entity @s {Invulnerable:1}
execute as @e[tag=mapitem] at @s run tp ~ -70 ~
kill @e[tag=mapitem]

#summon
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:giant 1250.15 51 1270.5 {Tags:["rgl","mapitem","1mapitem","giant1"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,NoAI:1}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:giant 1250.15 51 1280.5 {Tags:["rgl","mapitem","1mapitem","giant2"],Rotation:[180f,0f],Invulnerable:1,PersistenceRequired:1,NoGravity:1,NoAI:1}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:turtle 1176.0 51 1276.0 {Tags:["rgl","mapitem","1mapitem","turtle1"],Invulnerable:1,PersistenceRequired:1,HasEgg:0}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:turtle 1170 51 1265 {Tags:["rgl","mapitem","1mapitem","turtle2"],Invulnerable:1,PersistenceRequired:1,HasEgg:0}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:turtle 1179 50 1279 {Tags:["rgl","mapitem","1mapitem","turtle3"],Invulnerable:1,PersistenceRequired:1,HasEgg:0}

execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1182.5 52.0 1301.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1182.5 53.0 1301.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1181.5 52.0 1298.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1181.5 53.0 1298.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1181.5 58.0 1299.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1181.5 58.0 1300.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1182.5 58.0 1299.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1182.5 58.0 1300.5 {Tags:["rgl","mapitem","1mapitem","lime"],BlockState:{Name:"minecraft:lime_wool"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1176.5 52.0 1152.5 {Tags:["rgl","mapitem","1mapitem","leave"],BlockState:{Name:"minecraft:dark_oak_leaves"},NoGravity:1,Time:-2147483648}
execute if entity @e[tag=core,scores={rglmap=1}] run summon minecraft:falling_block 1177.5 52.0 1152.5 {Tags:["rgl","mapitem","1mapitem","leave"],BlockState:{Name:"minecraft:dark_oak_leaves"},NoGravity:1,Time:-2147483648}

execute if entity @e[tag=core,scores={rglmap=3}] run summon minecraft:wandering_trader 412 16 667 {Tags:["rgl","mapitem","3mapitem","groom1"],Rotation:[-90f,0f],Offers:{},Invulnerable:1,PersistenceRequired:1,NoAI:1,CustomName:"\"駕車人\""}
execute if entity @e[tag=core,scores={rglmap=3}] run summon minecraft:wandering_trader 568 16 655 {Tags:["rgl","mapitem","3mapitem","groom2"],Rotation:[90f,0f],Offers:{},Invulnerable:1,PersistenceRequired:1,NoAI:1,CustomName:"\"駕車人\""}
execute if entity @e[tag=core,scores={rglmap=3}] run summon minecraft:wandering_trader 490 16 531 {Tags:["rgl","mapitem","3mapitem","groom3"],Rotation:[180f,0f],Offers:{},Invulnerable:1,PersistenceRequired:1,NoAI:1,CustomName:"\"駕車人\""}

#setblock clone
execute if entity @e[tag=core,scores={rglmap=3}] as @e[tag=core] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {PortalCooldown:999999,Duration:2147483647,Tags:["rgl","mapitem","cartick","ticks"],CustomName:"{\"text\":\"馬車計時器\"}",NoGravity:1,Invisible:1,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
#CV AX BX
execute if entity @e[tag=core,scores={rglmap=3}] run setblock 491 14 529 minecraft:stone
execute if entity @e[tag=core,scores={rglmap=3}] run setblock 489 14 529 minecraft:air
execute if entity @e[tag=core,scores={rglmap=3}] run setblock 414 14 666 minecraft:air
execute if entity @e[tag=core,scores={rglmap=3}] run setblock 414 14 668 minecraft:stone
execute if entity @e[tag=core,scores={rglmap=3}] run setblock 566 14 656 minecraft:air
execute if entity @e[tag=core,scores={rglmap=3}] run setblock 566 14 654 minecraft:stone
#C V || A.B X
execute if entity @e[tag=core,scores={rglmap=3}] run clone 104 15 98 104 15 98 486 20 535
execute if entity @e[tag=core,scores={rglmap=3}] run clone 104 15 96 104 15 96 486 20 530
execute if entity @e[tag=core,scores={rglmap=3}] run clone 109 15 97 109 15 97 413 20 671
execute if entity @e[tag=core,scores={rglmap=3}] run clone 107 15 97 107 15 97 408 20 671
execute if entity @e[tag=core,scores={rglmap=3}] run clone 109 15 97 109 15 97 572 20 651
execute if entity @e[tag=core,scores={rglmap=3}] run clone 107 15 97 107 15 97 567 20 651
#
execute if entity @e[tag=core,scores={rglmap=4}] run clone 465 54 -998 490 62 -987 398 58 -964
execute if entity @e[tag=core,scores={rglmap=5}] run clone 667 41 -1948 697 49 -1917 725 41 -1948
