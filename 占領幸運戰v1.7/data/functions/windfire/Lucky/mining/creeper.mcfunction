execute @a[score_mining_creeper_min=1,y=101,dy=255,x=980,dx=53,z=939,dz=123] ~ ~ ~ scoreboard players set @s mining_creeper 7
execute @a[score_mining_creeper_min=-7,score_mining_creeper=-7,y=101,dy=255,x=980,dx=53,z=939,dz=123] ~ ~ ~ summon creeper ~ ~　~
execute @a[score_mining_creeper_min=-7,score_mining_creeper=-7,y=101,dy=225,x=980,dx=53,z=939,dz=123] ~ ~ ~ scoreboard players add @s creeper 1
execute @a[score_mining_creeper_min=-7,score_mining_creeper=-7,y=101,dy=225,x=980,dx=53,z=939,dz=123] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你把苦力怕吵醒了","color":"green"}]
execute @a[score_mining_creeper_min=-7,score_mining_creeper=-7,y=101,dy=255,x=980,dx=53,z=939,dz=123] ~ ~ ~ scoreboard players set @s mining_creeper 0