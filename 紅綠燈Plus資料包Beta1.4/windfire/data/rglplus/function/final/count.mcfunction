execute if entity @e[tag=rglplus,tag=core,scores={playgame=101}] run scoreboard players add @a[team=human] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=121}] run scoreboard players add @a[team=human] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=101}] run scoreboard players add @a[team=humanred] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=121}] run scoreboard players add @a[team=humanred] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=101,rglplusround=2..}] run scoreboard players add @e[tag=rglplus,tag=random1] humanwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=121,rglplusround=2..}] run scoreboard players add @e[tag=rglplus,tag=random1] humanwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=101,rglplusround=2..}] run scoreboard players add @a[team=human] humanwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=121,rglplusround=2..}] run scoreboard players add @a[team=human] humanwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=101,rglplusround=2..}] run scoreboard players add @a[team=humanred] humanwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=121,rglplusround=2..}] run scoreboard players add @a[team=humanred] humanwincount 1


execute if entity @e[tag=rglplus,tag=core,scores={playgame=102..109}] run scoreboard players add @a[team=ghost] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=105..109}] run scoreboard players remove @a[team=ghost,tag=laster] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110}] run scoreboard players add @a[tag=firstpathogen,tag=!pathogen,team=ghost] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110}] run scoreboard players add @a[tag=pathogen,team=ghost] smallwinpoint 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=102..109,rglplusround=2..}] run scoreboard players add @e[tag=rglplus,tag=random1] ghostwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110,rglplusround=2..}] run scoreboard players add @e[tag=rglplus,tag=random1] ghostwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=102..109,rglplusround=2..}] run scoreboard players add @a[team=ghost] ghostwincount 1
execute if entity @e[tag=rglplus,tag=core,scores={playgame=110,rglplusround=2..}] run scoreboard players add @a[team=ghost] ghostwincount 1
