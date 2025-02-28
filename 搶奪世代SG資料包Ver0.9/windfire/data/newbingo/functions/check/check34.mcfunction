execute as @s[tag=!nopoint3] run function newbingo:detect/detectplayer3
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint3] if score @e[tag=random3,limit=1] random00 = @s target3 run function newbingo:check/checktarget3
#clear
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint3] if score @e[tag=random3,limit=1] random00 = @s target3 run function newbingo:clear/cleartarget3
#sole clear
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint3] as @s[tag=!nopoint3] if score @e[tag=random3,limit=1] random00 = @s target3 run function newbingo:clear/cleartarget3
#4
execute as @s[tag=!nopoint4] run function newbingo:detect/detectplayer34
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint4] if score @e[tag=random4,limit=1] random00 = @s target4 run function newbingo:check/checktarget4
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint4] if score @e[tag=random4,limit=1] random00 = @s target4 run function newbingo:clear/cleartarget4
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint4] as @s[tag=!nopoint4] if score @e[tag=random4,limit=1] random00 = @s target4 run function newbingo:clear/cleartarget4
#15
execute as @s[tag=!nopoint15] run function newbingo:detect/detectplayer15
execute if entity @e[tag=random0,scores={bingoclear=0,bingorandom=2}] as @s[tag=!nopoint15] if score @e[tag=random15,limit=1] random00 = @s target15 run function newbingo:check/checktarget15
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1,bingorandom=2}] as @s[tag=!nopoint15] if score @e[tag=random15,limit=1] random00 = @s target15 run function newbingo:clear/cleartarget15
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1,bingorandom=2}] unless entity @e[tag=nopoint15] as @s[tag=!nopoint15] if score @e[tag=random15,limit=1] random00 = @s target15 run function newbingo:clear/cleartarget15

execute if entity @e[tag=random0,scores={bingoclear=0}] run advancement revoke @a only newbingo:detect/34
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint3] unless score @e[tag=random3,limit=1] random00 = @s target3 run advancement revoke @s only newbingo:detect/34
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint4] unless score @e[tag=random4,limit=1] random00 = @s target4 run advancement revoke @s only newbingo:detect/34
execute if entity @e[tag=random0,scores={bingoclear=1,bingorandom=2}] as @s[tag=!nopoint15] unless score @e[tag=random15,limit=1] random00 = @s target15 run advancement revoke @s only newbingo:detect/34
