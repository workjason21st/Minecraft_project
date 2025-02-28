
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run setblock 414 14 666 minecraft:stone
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run setblock 414 14 668 minecraft:air
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run setblock 566 14 656 minecraft:air
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run setblock 566 14 654 minecraft:stone
#A V ew
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run clone 105 15 97 105 15 97 413 20 671
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run clone 103 15 97 103 15 97 408 20 671
#B X ew
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run clone 109 15 97 109 15 97 572 20 651
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] run clone 107 15 97 107 15 97 567 20 651
###
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run setblock 566 14 656 minecraft:stone
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run setblock 566 14 654 minecraft:air
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run setblock 491 14 529 minecraft:air
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run setblock 489 14 529 minecraft:stone
#B V
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run clone 105 15 97 105 15 97 572 20 651
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run clone 103 15 97 103 15 97 567 20 651
#C X sn
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run clone 108 15 98 108 15 98 486 20 535
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] run clone 108 15 96 108 15 96 486 20 530
###
execute if score 7-0-7-0-000700000007 playgame matches 1..2 as @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:0}] run data merge entity @s {PortalCooldown:600}
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run setblock 491 14 529 minecraft:stone
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run setblock 489 14 529 minecraft:air
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run setblock 414 14 666 minecraft:air
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run setblock 414 14 668 minecraft:stone
#C V
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run clone 104 15 98 104 15 98 486 20 535
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run clone 104 15 96 104 15 96 486 20 530
#A X
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run clone 109 15 97 109 15 97 413 20 671
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] run clone 107 15 97 107 15 97 408 20 671

###
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:200}] positioned 414 16 667 run tellraw @a[distance=..10] ["",{"text":"附近的馬車站限時開放搭車囉","color":"yellow"}]
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:400}] positioned 566 16 655 run tellraw @a[distance=..10] ["",{"text":"附近的馬車站限時開放搭車囉","color":"yellow"}]
execute if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @e[tag=rglplus,tag=cartick,nbt={PortalCooldown:600}] positioned 490 16 529 run tellraw @a[distance=..10] ["",{"text":"附近的馬車站限時開放搭車囉","color":"yellow"}]
