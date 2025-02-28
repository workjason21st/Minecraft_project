scoreboard players operation @e[tag=random0] random00 = @e[tag=random100,limit=1,sort=random] random100
scoreboard players operation @e[tag=random0] random00 *= @e[tag=random0,limit=1] random10
scoreboard players operation @e[tag=random0] random00 += @e[tag=random100,limit=1,sort=random] random100

execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockkouki,scores={random00=31,bingotarget=2}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockrabbit,scores={random00=38..39,bingotarget=2}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockrabbit,scores={random00=44..45,bingotarget=2}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockyui,scores={random00=41,bingotarget=5..7}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockyui,scores={random00=49..50,bingotarget=5..7}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockkouki,scores={random00=29,bingotarget=5..7}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockyui,scores={random00=19,bingotarget=8..9}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockkouki,scores={random00=30,bingotarget=8..9}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockrabbit,scores={random00=14,bingotarget=8..9}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockkouki,scores={random00=10,bingotarget=10}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=0}] if entity @s[tag=lockyui,scores={random00=13,bingotarget=10}] run scoreboard players set @s random00 -2

execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockkouki,scores={random00=31,bingotarget=4..5}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockrabbit,scores={random00=38..39,bingotarget=4..5}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockrabbit,scores={random00=44..45,bingotarget=4..5}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockyui,scores={random00=41,bingotarget=8..10}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockyui,scores={random00=49..50,bingotarget=8..10}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockkouki,scores={random00=29,bingotarget=8..10}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockyui,scores={random00=19,bingotarget=11..12}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockkouki,scores={random00=30,bingotarget=11..12}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockrabbit,scores={random00=14,bingotarget=11..12}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockkouki,scores={random00=10,bingotarget=13}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=1}] if entity @s[tag=lockyui,scores={random00=13,bingotarget=13}] run scoreboard players set @s random00 -2

execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockkouki,scores={random00=31,bingotarget=4..6}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockrabbit,scores={random00=38..39,bingotarget=4..6}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockrabbit,scores={random00=44..45,bingotarget=4..6}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockyui,scores={random00=41,bingotarget=10..12}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockyui,scores={random00=49..50,bingotarget=10..12}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockkouki,scores={random00=29,bingotarget=10..12}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockyui,scores={random00=19,bingotarget=13..14}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockkouki,scores={random00=30,bingotarget=13..14}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockrabbit,scores={random00=14,bingotarget=13..14}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockkouki,scores={random00=10,bingotarget=15}] run scoreboard players set @s random00 -2
execute as @e[tag=random0,limit=1,scores={bingorandom=2}] if entity @s[tag=lockyui,scores={random00=13,bingotarget=15}] run scoreboard players set @s random00 -2
#scoreboard players operation @s random = random zTEST
