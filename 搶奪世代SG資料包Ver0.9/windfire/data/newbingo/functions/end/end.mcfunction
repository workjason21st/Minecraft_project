function newbingo:end/total

execute if entity @e[tag=random0,scores={bingomode=3}] as @a run scoreboard players operation @s teampoint = @s bingosole
execute as @e[team=yellow] run scoreboard players operation @s teampoint > @e[team=yellow] teampoint
execute as @e[team=red] run scoreboard players operation @s teampoint > @e[team=red] teampoint
execute as @e[team=green] run scoreboard players operation @s teampoint > @e[team=green] teampoint
execute as @e[team=aqua] run scoreboard players operation @s teampoint > @e[team=aqua] teampoint
execute as @e[scores={teampoint=0}] run scoreboard players reset @s teampoint
#1
execute if entity @e[tag=random0,scores={bingomode=1,bingosame=0,theend=1}] run scoreboard players operation @e[tag=random0,limit=1] teampoint = @e[tag=random0,limit=1] mode1point
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingomode=1,bingosame=0,theend=1}] as @a if score @s teampoint >= @e[tag=random0,limit=1] teampoint run tag @s add winner

execute if entity @e[tag=random0,scores={bingomode=2,theend=1}] as @a run scoreboard players operation @e[tag=random0,limit=1] teampoint > @s teampoint
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingomode=2,theend=1}] as @a if score @s teampoint = @e[tag=random0,limit=1] teampoint run tag @s add winner

execute if entity @e[tag=random0,scores={bingomode=3,theend=1}] as @e[team=yellow] run scoreboard players operation @s bingosole > @e[team=yellow] bingosole
execute if entity @e[tag=random0,scores={bingomode=3,theend=1}] as @e[team=red] run scoreboard players operation @s bingosole > @e[team=red] bingosole
execute if entity @e[tag=random0,scores={bingomode=3,theend=1}] as @e[team=green] run scoreboard players operation @s bingosole > @e[team=green] bingosole
execute if entity @e[tag=random0,scores={bingomode=3,theend=1}] as @e[team=aqua] run scoreboard players operation @s bingosole > @e[team=aqua] bingosole
execute if entity @a[scores={bingosole=1..}] if entity @e[tag=random0,scores={bingomode=3,theend=1}] as @a if score @s bingosole matches 6.. run tag @s add winner

execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingomode=4,theend=1,bingorandom=0}] as @a if score @s teampoint matches 37 run tag @s add winner
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingomode=4,theend=1,bingorandom=1}] as @a if score @s teampoint matches 49 run tag @s add winner
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingomode=4,theend=1,bingorandom=2}] as @a if score @s teampoint matches 57 run tag @s add winner
#
execute if entity @e[tag=random0,scores={bingosole=0,theend=1}] as @a run scoreboard players operation @e[tag=random0] teampoint > @s teampoint
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingosole=0,theend=1}] as @a if score @s teampoint = @e[tag=random0,limit=1] teampoint run tag @s add winner
#2
execute if entity @e[tag=random0,scores={bingosole=1,theend=2}] as @a run scoreboard players operation @e[tag=random0] teampoint > @s teampoint
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingosole=1,theend=2}] as @a if score @s teampoint = @e[tag=random0,limit=1] teampoint run tag @s add winner
#3
execute if entity @e[tag=random0,scores={bingosole=1,bingomode=3}] as @a run scoreboard players operation @s teampoint = @s bingosole
execute if entity @e[tag=random0,scores={bingosole=1,bingomode=3}] as @a run scoreboard players operation @e[tag=random0] teampoint > @s teampoint
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingosole=1,bingomode=3}] as @a if score @s teampoint = @e[tag=random0,limit=1] teampoint run tag @s add winner
#4
execute if entity @a[scores={teampoint=1..}] if entity @e[tag=random0,scores={bingosame=1,theend=4}] as @a if score @s teampoint >= @e[tag=random0,limit=1] mode1same run tag @s add winner
#0
execute as @e[scores={teampoint=0}] run scoreboard players reset @s teampoint
execute unless entity @e[tag=random0,scores={bingomode=3}] unless entity @e[scores={teampoint=0..}] run tellraw @a ["",{"text":"\n沒有贏家","bold":true,"color":"light_purple"}]
#
execute if entity @a[tag=winner] run tellraw @a ["",{"text":"\n"},{"selector":"@a[tag=winner,sort=random,limit=1]","bold":true},{"text":"的隊伍以 ","bold":true,"color":"white"},{"score":{"name":"@a[tag=winner,limit=1]","objective":"teampoint"},"bold":true,"color":"light_purple"},{"text":" 分","bold":true,"color":"white"},{"text":"贏得勝利","bold":true,"color":"white"}]
execute if entity @a[tag=winner,team=yellow] run team modify yellow prefix " ＞贏家＜ "
execute if entity @a[tag=winner,team=red] run team modify red prefix " ＞贏家＜ "
execute if entity @a[tag=winner,team=green] run team modify green prefix " ＞贏家＜ "
execute if entity @a[tag=winner,team=aqua] run team modify aqua prefix " ＞贏家＜ "
bossbar set newbingo:yellow visible false
bossbar set newbingo:red visible false
bossbar set newbingo:green visible false
bossbar set newbingo:aqua visible false
bossbar set newbingo:lobby visible true
execute if entity @a[tag=winner,team=yellow] run bossbar set newbingo:yellow visible true
execute if entity @a[tag=winner,team=red] run bossbar set newbingo:red visible true
execute if entity @a[tag=winner,team=green] run bossbar set newbingo:green visible true
execute if entity @a[tag=winner,team=aqua] run bossbar set newbingo:aqua visible true
function newbingo:end/theend
