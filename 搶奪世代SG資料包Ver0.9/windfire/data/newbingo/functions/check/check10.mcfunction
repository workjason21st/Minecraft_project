execute as @s[tag=!nopoint10] run function newbingo:detect/detectplayer610
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint10] if score @e[tag=random10,limit=1] random00 = @s target10 run function newbingo:check/checktarget10
#clear
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint10] if score @e[tag=random10,limit=1] random00 = @s target10 run function newbingo:clear/cleartarget10
#sole clear
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint10] as @s[tag=!nopoint10] if score @e[tag=random10,limit=1] random00 = @s target10 run function newbingo:clear/cleartarget10
execute if entity @e[tag=random0,scores={bingoclear=0}] run advancement revoke @a only newbingo:detect/10
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint10] unless score @e[tag=random10,limit=1] random00 = @s target10 run advancement revoke @s only newbingo:detect/10