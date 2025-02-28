execute if score 7-0-7-0-000700000007 rglplusround matches 1 run scoreboard players set 遊玩總回合數 rglpluslist 1
execute if score 7-0-7-0-000700000007 rglplusround matches 2.. run scoreboard players operation 遊玩總回合數 rglpluslist = @e[tag=rglplus,tag=core,limit=1] rglplusround

execute if score 7-0-7-0-000700000007 rglplusmode matches 2 store result score @e[tag=rglplus,tag=core,limit=1] ghost if entity @a[team=ghost,gamemode=adventure]
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 run scoreboard players operation 在場上鬼的數量 rglpluslist = @e[tag=rglplus,tag=core,limit=1] ghost
execute unless score 7-0-7-0-000700000007 rglplusmode matches 2 run scoreboard players reset 在場上鬼的數量 rglpluslist

execute if score 7-0-7-0-000700000007 rglplusmode matches 4 if score 7-0-7-0-000700000007 rglplusalleffect matches 1 run scoreboard players operation 目前壞孩子的總復活數 rglpluslist = @e[tag=rglplus,tag=random4,limit=1] rglpluskidlife
