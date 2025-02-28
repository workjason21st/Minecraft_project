execute @a[score_mining_lava_min=1,y=113,dy=113,x=980,dx=53,z=939,dz=123] ~ ~ ~ scoreboard players set @s mining_lava 0
execute @a[score_mining_lava_min=1,score_mining_lava=1,y=101,dy=12,x=980,dx=53,z=939,dz=123] ~ ~ ~ scoreboard players set @s mining_lava 7
execute @a[score_mining_lava_min=-7,score_mining_lava=-7,y=101,dy=12,x=980,dx=53,z=939,dz=123] ~ ~ ~ setblock ~ ~ ~ lava
execute @a[score_mining_lava_min=-7,score_mining_lava=-7,y=101,dy=12,x=980,dx=53,z=939,dz=123] ~ ~ ~ scoreboard players add @s lava 1
execute @a[score_mining_lava_min=-7,score_mining_lava=-7,y=101,dy=12,x=980,dx=53,z=939,dz=123] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你挖到岩漿了","color":"green"}]
execute @a[score_mining_lava_min=-7,score_mining_lava=-7,y=101,dy=12,x=980,dx=53,z=939,dz=123] ~ ~ ~ scoreboard players set @s mining_lava 0
