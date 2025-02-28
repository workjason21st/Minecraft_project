execute as @s[tag=!nopoint5] run function newbingo:detect/detectplayer45
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint5] if score @e[tag=random5,limit=1] random00 = @s target5 run function newbingo:check/checktarget5
#clear
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint5] if score @e[tag=random5,limit=1] random00 = @s target5 run function newbingo:clear/cleartarget5
#sole clear
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint5] as @s[tag=!nopoint5] if score @e[tag=random5,limit=1] random00 = @s target5 run function newbingo:clear/cleartarget5
#6
execute as @s[tag=!nopoint6] run function newbingo:detect/detectplayer46
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint6] if score @e[tag=random6,limit=1] random00 = @s target6 run function newbingo:check/checktarget6
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint6] if score @e[tag=random6,limit=1] random00 = @s target6 run function newbingo:clear/cleartarget6
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint6] as @s[tag=!nopoint6] if score @e[tag=random6,limit=1] random00 = @s target6 run function newbingo:clear/cleartarget6
#7
execute as @s[tag=!nopoint7] run function newbingo:detect/detectplayer47
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint7] if score @e[tag=random7,limit=1] random00 = @s target7 run function newbingo:check/checktarget7
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint7] if score @e[tag=random7,limit=1] random00 = @s target7 run function newbingo:clear/cleartarget7
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint7] as @s[tag=!nopoint7] if score @e[tag=random7,limit=1] random00 = @s target7 run function newbingo:clear/cleartarget7

execute if entity @e[tag=random0,scores={bingoclear=0}] run advancement revoke @a only newbingo:detect/567
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint5] unless score @e[tag=random5,limit=1] random00 = @s target5 run advancement revoke @s only newbingo:detect/567
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint6] unless score @e[tag=random6,limit=1] random00 = @s target6 run advancement revoke @s only newbingo:detect/567
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint7] unless score @e[tag=random7,limit=1] random00 = @s target7 run advancement revoke @s only newbingo:detect/567
