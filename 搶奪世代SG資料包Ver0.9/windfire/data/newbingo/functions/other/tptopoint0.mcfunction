#ㄋexecute if entity @e[tag=random0,scores={openworld=0}] run tp @s[team=yellow] @e[tag=teamyellow,limit=1]
#execute if entity @e[tag=random0,scores={openworld=0}] run tp @s[team=red] @e[tag=teamred,limit=1]
#execute if entity @e[tag=random0,scores={openworld=0}] run tp @s[team=green] @e[tag=teamgreen,limit=1]
#execute if entity @e[tag=random0,scores={openworld=0}] run tp @s[team=aqua] @e[tag=teamaqua,limit=1]
#execute if entity @e[tag=random0,scores={openworld=0}] run tp @s[team=] @e[tag=,limit=1]
#execute if entity @e[tag=random0,scores={openworld=0}] as @s run kill @s
#execute if entity @e[tag=random0,scores={openworld=0}] as @s if predicate newbingo:the_end run kill @s
execute if entity @e[tag=random0,scores={openworld=0}] run effect give @s instant_damage 4 44 true
execute if entity @e[tag=random0,scores={openworld=0}] run advancement revoke @s only newbingo:newbingo/changed_dimension
#execute if entity @e[tag=random0,scores={openworld=0}] run advancement revoke @s only newbingo:newbingo/changed_the_end
execute if entity @e[tag=random0,scores={openworld=0}] run say @s 禁止進入地獄或終界喔
execute if entity @e[tag=random0,scores={openworld=0}] run title @s title ["",{"text":"禁止進入地獄或終界喔","color":"red"}]
execute if entity @e[tag=random0,scores={openworld=0}] run tag @s remove tptopoint0
#say 0
