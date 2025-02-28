scoreboard players set @e[tag=random0] random00 -1
execute if entity @e[tag=random0,scores={random00=-1,bingotarget=1}] run scoreboard players reset 隨機決定 bingolist
execute if entity @e[tag=random0,scores={random00=-1,bingotarget=1}] run scoreboard players set 正在隨機 bingolist 999
#
execute if entity @e[tag=lockcocoa] if entity @e[tag=random0,scores={random00=-1,bingotarget=3}] run scoreboard players set @e[tag=random0,limit=1] random00 13
execute if entity @e[tag=locktuan] if entity @e[tag=random0,scores={random00=-1,bingotarget=4}] run scoreboard players set @e[tag=random0,limit=1] random00 10
execute if entity @e[tag=lockhagee] if entity @e[tag=random0,scores={random00=-1,bingotarget=5}] run scoreboard players set @e[tag=random0,limit=1] random00 44
execute if entity @e[tag=random0,scores={random00=-1}] run function newbingo:random/random100

execute as @e[tag=random0,scores={random00=0..99,bingotarget=10}] run function newbingo:random/target10
execute as @e[tag=random0,scores={random00=0..99,bingotarget=9}] run function newbingo:random/target9
execute as @e[tag=random0,scores={random00=0..99,bingotarget=8}] run function newbingo:random/target8
execute as @e[tag=random0,scores={random00=0..99,bingotarget=7}] run function newbingo:random/target7
execute as @e[tag=random0,scores={random00=0..99,bingotarget=6}] run function newbingo:random/target6
execute as @e[tag=random0,scores={random00=0..99,bingotarget=5}] run function newbingo:random/target5
execute as @e[tag=random0,scores={random00=0..99,bingotarget=4}] run function newbingo:random/target4
execute as @e[tag=random0,scores={random00=0..99,bingotarget=3}] run function newbingo:random/target3
execute as @e[tag=random0,scores={random00=0..99,bingotarget=2}] run function newbingo:random/target2
execute as @e[tag=random0,scores={random00=0..99,bingotarget=1}] run function newbingo:random/target1
execute if entity @e[tag=random0,scores={bingotarget=11}] run scoreboard players reset 正在隨機 bingolist
execute if entity @e[tag=random0,scores={bingotarget=11}] run function newbingo:team/object
execute if entity @e[tag=random0,scores={bingotarget=11}] run scoreboard players set @e[tag=random0,limit=1] bingotarget 12
