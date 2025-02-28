execute if entity @e[tag=random0,scores={openworld=1}] run effect give @s instant_damage 4 44 true
execute if entity @e[tag=random0,scores={openworld=1}] run advancement revoke @s only newbingo:newbingo/changed_the_end
execute if entity @e[tag=random0,scores={openworld=1}] run say @s 禁止進入終界喔
execute if entity @e[tag=random0,scores={openworld=1}] run title @s title ["",{"text":"禁止進入終界喔","color":"red"}]
execute if entity @e[tag=random0,scores={openworld=1}] run tag @s remove tptopoint1
#say 1
