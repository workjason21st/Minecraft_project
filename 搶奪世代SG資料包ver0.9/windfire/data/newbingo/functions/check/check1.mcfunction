execute as @s[tag=!nopoint1] run function newbingo:detect/detectplayer1
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint1] if score @e[tag=random1,limit=1] random00 = @s target1 run function newbingo:check/checktarget1
#clear
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint1] if score @e[tag=random1,limit=1] random00 = @s target1 run function newbingo:clear/cleartarget1
#sole clear
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint1] as @s[tag=!nopoint1] if score @e[tag=random1,limit=1] random00 = @s target1 run function newbingo:clear/cleartarget1
#11
execute as @s[tag=!nopoint11] run function newbingo:detect/detectplayer11
execute if entity @e[tag=random0,scores={bingoclear=0,bingorandom=1..2}] as @s[tag=!nopoint11] if score @e[tag=random11,limit=1] random00 = @s target11 run function newbingo:check/checktarget11
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1,bingorandom=1..2}] as @s[tag=!nopoint11] if score @e[tag=random11,limit=1] random00 = @s target11 run function newbingo:clear/cleartarget11
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1,bingorandom=1..2}] unless entity @e[tag=nopoint11] as @s[tag=!nopoint11] if score @e[tag=random11,limit=1] random00 = @s target11 run function newbingo:clear/cleartarget11
#12
execute as @s[tag=!nopoint12] run function newbingo:detect/detectplayer12
execute if entity @e[tag=random0,scores={bingoclear=0,bingorandom=1..2}] as @s[tag=!nopoint12] if score @e[tag=random12,limit=1] random00 = @s target12 run function newbingo:check/checktarget12
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1,bingorandom=1..2}] as @s[tag=!nopoint12] if score @e[tag=random12,limit=1] random00 = @s target12 run function newbingo:clear/cleartarget12
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1,bingorandom=1..2}] unless entity @e[tag=nopoint12] as @s[tag=!nopoint12] if score @e[tag=random12,limit=1] random00 = @s target12 run function newbingo:clear/cleartarget12

execute if entity @e[tag=random0,scores={bingoclear=0}] run advancement revoke @a only newbingo:detect/1
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint1] unless score @e[tag=random1,limit=1] random00 = @s target1 run advancement revoke @s only newbingo:detect/1
execute if entity @e[tag=random0,scores={bingoclear=1,bingorandom=1..2}] as @s[tag=!nopoint11] unless score @e[tag=random11,limit=1] random00 = @s target11 run advancement revoke @s only newbingo:detect/1
execute if entity @e[tag=random0,scores={bingoclear=1,bingorandom=1..2}] as @s[tag=!nopoint12] unless score @e[tag=random12,limit=1] random00 = @s target12 run advancement revoke @s only newbingo:detect/1
