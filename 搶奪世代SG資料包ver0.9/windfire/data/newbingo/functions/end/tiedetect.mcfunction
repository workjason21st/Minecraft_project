execute if entity @e[tag=random0,scores={bingosole=1,bingomode=3}] as @a run scoreboard players operation @s teampoint = @s bingosole
execute as @e[team=yellow] run scoreboard players operation @s teampoint > @e[team=yellow] teampoint
execute as @e[team=red] run scoreboard players operation @s teampoint > @e[team=red] teampoint
execute as @e[team=green] run scoreboard players operation @s teampoint > @e[team=green] teampoint
execute as @e[team=aqua] run scoreboard players operation @s teampoint > @e[team=aqua] teampoint
execute if entity @e[tag=random0] as @e[tag=teampoint] run scoreboard players operation @e[tag=random0] teampoint > @s teampoint

#YRGA
execute if entity @e[tag=random0,scores={theend=10,yellowplayer=1..,redplayer=1..,greenplayer=1..,aquaplayer=1..}] as @e[tag=teamyellow,limit=1] if score @s teampoint = @e[tag=teamred,limit=1] teampoint if score @s teampoint = @e[tag=teamgreen,limit=1] teampoint if score @s teampoint = @e[tag=teamaqua,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 17
execute if entity @e[tag=random0,scores={theend=17}] run tag @a add winner
#YRG YRA YGA
execute if entity @e[tag=random0,scores={theend=10,yellowplayer=1..,redplayer=1..,greenplayer=1..}] as @e[tag=teamyellow,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamred,limit=1] teampoint if score @s teampoint = @e[tag=teamgreen,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 18
execute if entity @e[tag=random0,scores={theend=10,yellowplayer=1..,redplayer=1..,aquaplayer=1..}] as @e[tag=teamyellow,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamred,limit=1] teampoint if score @s teampoint = @e[tag=teamaqua,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 19
execute if entity @e[tag=random0,scores={theend=10,yellowplayer=1..,greenplayer=1..,aquaplayer=1..}] as @e[tag=teamyellow,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamgreen,limit=1] teampoint if score @s teampoint = @e[tag=teamaqua,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 20
execute if entity @e[tag=random0,scores={theend=18}] run tag @a[team=!aqua] add winner
execute if entity @e[tag=random0,scores={theend=19}] run tag @a[team=!green] add winner
execute if entity @e[tag=random0,scores={theend=20}] run tag @a[team=!red] add winner
#RGA
execute if entity @e[tag=random0,scores={theend=10,redplayer=1..,greenplayer=1..,aquaplayer=1..}] as @e[tag=teamred,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamgreen,limit=1] teampoint if score @s teampoint = @e[tag=teamaqua,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 21
execute if entity @e[tag=random0,scores={theend=21}] run tag @a[team=!yellow] add winner
#YR YG YA
execute if entity @e[tag=random0,scores={theend=10,yellowplayer=1..,redplayer=1..}] as @e[tag=teamyellow,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamred,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 11
execute if entity @e[tag=random0,scores={theend=10,yellowplayer=1..,greenplayer=1..}] as @e[tag=teamyellow,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamgreen,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 12
execute if entity @e[tag=random0,scores={theend=10,yellowplayer=1..,aquaplayer=1..}] as @e[tag=teamyellow,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamaqua,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 13
execute if entity @e[tag=random0,scores={theend=11..13}] run tag @a[team=yellow] add winner
execute if entity @e[tag=random0,scores={theend=11}] run tag @a[team=red] add winner
execute if entity @e[tag=random0,scores={theend=12}] run tag @a[team=green] add winner
execute if entity @e[tag=random0,scores={theend=13}] run tag @a[team=aqua] add winner
#RG RA
execute if entity @e[tag=random0,scores={theend=10,redplayer=1..,greenplayer=1..}] as @e[tag=teamred,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamgreen,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 14
execute if entity @e[tag=random0,scores={theend=10,redplayer=1..,aquaplayer=1..}] as @e[tag=teamred,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamaqua,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 15
execute if entity @e[tag=random0,scores={theend=14..15}] run tag @a[team=red] add winner
execute if entity @e[tag=random0,scores={theend=14}] run tag @a[team=green] add winner
execute if entity @e[tag=random0,scores={theend=15..16}] run tag @a[team=aqua] add winner
#GA
execute if entity @e[tag=random0,scores={theend=10,greenplayer=1..,aquaplayer=1..}] as @e[tag=teamgreen,limit=1] if score @s teampoint = @e[tag=random0,limit=1] teampoint if score @s teampoint = @e[tag=teamaqua,limit=1] teampoint run scoreboard players set @e[tag=random0] theend 16
execute if entity @e[tag=random0,scores={theend=16}] run tag @a[team=green] add winner
#XX
scoreboard players set @e[tag=random0,scores={theend=10,bingosole=0}] theend 0
