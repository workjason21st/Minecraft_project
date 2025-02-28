function rgl:other/getlaster
execute if entity @e[tag=core,scores={rglmode=6}] run scoreboard players operation 目前壞孩子的綠燈總數 rgllist = @e[tag=core,limit=1] greencount
execute if entity @e[tag=core,scores={rglmode=5..6}] run scoreboard players operation 目前壞孩子的總死亡數 rgllist = @e[tag=core,limit=1] baddead
