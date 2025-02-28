scoreboard players add 時間 list 1
scoreboard players add 各種時間 case_time 1
scoreboard players add 各種時間 monster_time 1
execute @r[type=armor_stand,tag=doublemoney] ~ ~ ~ /setblock ~ ~ ~ redstone_block
function windfire:lucky/repeat/timer/summon
setblock 1027 1 1042 redstone_block
setblock 1027 1 1043 redstone_block