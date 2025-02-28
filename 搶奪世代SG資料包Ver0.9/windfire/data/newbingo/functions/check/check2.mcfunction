execute as @s[tag=!nopoint2] run function newbingo:detect/detectplayer2
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint2] if score @e[tag=random2,limit=1] random00 = @s target2 run function newbingo:check/checktarget2
#clear
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint2] if score @e[tag=random2,limit=1] random00 = @s target2 run function newbingo:clear/cleartarget2
#sole clear
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint2] as @s[tag=!nopoint2] if score @e[tag=random2,limit=1] random00 = @s target2 run function newbingo:clear/cleartarget2
#13
execute as @s[tag=!nopoint13] run function newbingo:detect/detectplayer13
execute if entity @e[tag=random0,scores={bingoclear=0,bingorandom=1..2}] as @s[tag=!nopoint13] if score @e[tag=random13,limit=1] random00 = @s target13 run function newbingo:check/checktarget13
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1,bingorandom=1..2}] as @s[tag=!nopoint13] if score @e[tag=random13,limit=1] random00 = @s target13 run function newbingo:clear/cleartarget13
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1,bingorandom=1..2}] unless entity @e[tag=nopoint13] as @s[tag=!nopoint13] if score @e[tag=random13,limit=1] random00 = @s target13 run function newbingo:clear/cleartarget13
#14
execute as @s[tag=!nopoint14] run function newbingo:detect/detectplayer14
execute if entity @e[tag=random0,scores={bingoclear=0,bingorandom=2}] as @s[tag=!nopoint14] if score @e[tag=random14,limit=1] random00 = @s target14 run function newbingo:check/checktarget14
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1,bingorandom=2}] as @s[tag=!nopoint14] if score @e[tag=random14,limit=1] random00 = @s target14 run function newbingo:clear/cleartarget14
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1,bingorandom=2}] unless entity @e[tag=nopoint14] as @s[tag=!nopoint14] if score @e[tag=random14,limit=1] random00 = @s target14 run function newbingo:clear/cleartarget14

execute if entity @e[tag=random0,scores={bingoclear=0}] run advancement revoke @a only newbingo:detect/2
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint2] unless score @e[tag=random2,limit=1] random00 = @s target2 run advancement revoke @s only newbingo:detect/2
execute if entity @e[tag=random0,scores={bingoclear=1,bingorandom=1..2}] as @s[tag=!nopoint13] unless score @e[tag=random13,limit=1] random00 = @s target13 run advancement revoke @s only newbingo:detect/2
execute if entity @e[tag=random0,scores={bingoclear=1,bingorandom=2}] as @s[tag=!nopoint14] unless score @e[tag=random14,limit=1] random00 = @s target14 run advancement revoke @s only newbingo:detect/2
