#----------Team------------
#yellow
execute @a[y=0,dy=3,x=1028,dx=3,z=967,dz=12] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 4 scoreboard players tag @s add join_Y
execute @a[tag=join_Y] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 4 scoreboard teams join yellow @s
execute @a[tag=join_Y] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 4 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你成功加入","color":"green"},{"text":"§l黃隊","color":"gold"}]
execute @a[tag=join_Y] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 4 tp @s 1028.0 1.3 939.0 
execute @a[y=0,dy=3,x=1026,dx=3,z=967,dz=12,tag=join_Y] ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_block 0 scoreboard players tag @s remove join_Y

#blue
execute @a[y=0,dy=3,x=1028,dx=3,z=967,dz=12] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 11 scoreboard players tag @s add join_B
execute @a[tag=join_B] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 11 scoreboard teams join blue @s
execute @a[tag=join_B] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 11 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你成功加入","color":"green"},{"text":"§l藍隊","color":"blue"}]
execute @a[tag=join_B] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_hardened_clay 11 tp @s 1028.0 1.3 939.0
execute @a[y=0,dy=3,x=1026,dx=3,z=967,dz=12,tag=join_B] ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_block 0 scoreboard players tag @s remove join_B

#stander
execute @a[y=0,dy=3,x=1028,dx=3,z=967,dz=12] ~ ~ ~ detect ~ ~-1 ~ minecraft:wool 15 scoreboard players tag @s add join_S
execute @a[tag=join_S] ~ ~ ~ detect ~ ~-1 ~ minecraft:wool 15 scoreboard teams join stander @s
execute @a[tag=join_S] ~ ~ ~ detect ~ ~-1 ~ minecraft:wool 15 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你成功加入","color":"green"},{"text":"§l觀察者","color":"black"}]
execute @a[tag=join_S] ~ ~ ~ detect ~ ~-1 ~ minecraft:wool 15 tp @s 1028.0 1.3 939.0
execute @a[y=0,dy=3,x=1026,dx=3,z=967,dz=12,tag=join_S] ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_block 0 scoreboard players tag @s remove join_S
