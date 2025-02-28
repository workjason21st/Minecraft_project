scoreboard players set @e[tag=random0] random00 -1
execute if entity @e[tag=random0,scores={random00=-1,bingotarget=1}] run scoreboard players reset 隨機決定 bingolist
execute if entity @e[tag=random0,scores={random00=-1,bingotarget=1}] run scoreboard players set 正在隨機 bingolist 999
#
execute if entity @e[tag=lockcocoa] if entity @e[tag=random0,scores={random00=-1,bingotarget=6}] run scoreboard players set @e[tag=random0,limit=1] random00 13
execute if entity @e[tag=locktuan] if entity @e[tag=random0,scores={random00=-1,bingotarget=7}] run scoreboard players set @e[tag=random0,limit=1] random00 10
execute if entity @e[tag=lockhagee] if entity @e[tag=random0,scores={random00=-1,bingotarget=8}] run scoreboard players set @e[tag=random0,limit=1] random00 44
execute if entity @e[tag=random0,scores={random00=-1}] run function newbingo:random/random100
#123569
execute as @e[tag=random0,scores={random00=0..99,bingotarget=13}] run function newbingo:random/13/target10
execute as @e[tag=random0,scores={random00=0..99,bingotarget=12}] run function newbingo:random/13/target9
execute as @e[tag=random0,scores={random00=0..99,bingotarget=11}] run function newbingo:random/13/target8
execute as @e[tag=random0,scores={random00=0..99,bingotarget=10}] run function newbingo:random/13/target7
execute as @e[tag=random0,scores={random00=0..99,bingotarget=9}] run function newbingo:random/13/target6
execute as @e[tag=random0,scores={random00=0..99,bingotarget=8}] run function newbingo:random/13/target5
execute as @e[tag=random0,scores={random00=0..99,bingotarget=7}] run function newbingo:random/target4
execute as @e[tag=random0,scores={random00=0..99,bingotarget=6}] run function newbingo:random/target3
execute as @e[tag=random0,scores={random00=0..99,bingotarget=5}] run function newbingo:random/13/target22
execute as @e[tag=random0,scores={random00=0..99,bingotarget=4}] run function newbingo:random/target2
execute as @e[tag=random0,scores={random00=0..99,bingotarget=3}] run function newbingo:random/13/target111
execute as @e[tag=random0,scores={random00=0..99,bingotarget=2}] run function newbingo:random/13/target11
execute as @e[tag=random0,scores={random00=0..99,bingotarget=1}] run function newbingo:random/target1
execute if entity @e[tag=random0,scores={bingotarget=14}] run scoreboard players reset 正在隨機 bingolist
execute if entity @e[tag=random0,scores={bingotarget=14}] run function newbingo:team/object
execute if entity @e[tag=random0,scores={bingotarget=14}] run scoreboard players set @e[tag=random0,limit=1] bingotarget 15
