execute as @s[tag=!nopoint8] run function newbingo:detect/detectplayer58
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint8] if score @e[tag=random8,limit=1] random00 = @s target8 run function newbingo:check/checktarget8
#clear
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint8] if score @e[tag=random8,limit=1] random00 = @s target8 run function newbingo:clear/cleartarget8
#sole clear
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint8] as @s[tag=!nopoint8] if score @e[tag=random8,limit=1] random00 = @s target8 run function newbingo:clear/cleartarget8
#9
execute as @s[tag=!nopoint9] run function newbingo:detect/detectplayer59
execute if entity @e[tag=random0,scores={bingoclear=0}] as @s[tag=!nopoint9] if score @e[tag=random9,limit=1] random00 = @s target9 run function newbingo:check/checktarget9
execute if entity @e[tag=random0,scores={bingosole=0,bingoclear=1}] as @s[tag=!nopoint9] if score @e[tag=random9,limit=1] random00 = @s target9 run function newbingo:clear/cleartarget9
execute if entity @e[tag=random0,scores={bingosole=1,bingoclear=1}] unless entity @e[tag=nopoint9] as @s[tag=!nopoint9] if score @e[tag=random9,limit=1] random00 = @s target9 run function newbingo:clear/cleartarget9

execute if entity @e[tag=random0,scores={bingoclear=0}] run advancement revoke @a only newbingo:detect/89
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint8] unless score @e[tag=random8,limit=1] random00 = @s target8 run advancement revoke @s only newbingo:detect/89
execute if entity @e[tag=random0,scores={bingoclear=1}] as @s[tag=!nopoint9] unless score @e[tag=random9,limit=1] random00 = @s target9 run advancement revoke @s only newbingo:detect/89