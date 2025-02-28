
execute if entity @a[tag=nopoint11,team=yellow] unless entity @a[tag=nopoint11,team=red] unless entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔ ","color":"yellow"}]
execute if entity @a[tag=nopoint11,team=red] unless entity @a[tag=nopoint11,team=yellow] unless entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔ ","color":"red"}]
execute if entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=yellow] unless entity @a[tag=nopoint11,team=aqua] unless entity @a[tag=nopoint11,team=red] run team modify target11 prefix [{"text":"✔ ","color":"green"}]
execute if entity @a[tag=nopoint11,team=aqua] unless entity @a[tag=nopoint11,team=yellow] unless entity @a[tag=nopoint11,team=red] unless entity @a[tag=nopoint11,team=green] run team modify target11 prefix [{"text":"✔ ","color":"aqua"}]

execute if entity @a[tag=nopoint11,team=green] if entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=aqua] if entity @a[tag=nopoint11,team=red] run team modify target11 prefix [{"text":"✔✔✔✔ ","color":"black"}]
execute if entity @a[tag=nopoint11,team=red] if entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔","color":"yellow"},{"text":"✔","color":"red"},{"text":"✔ ","color":"green"}]
execute if entity @a[tag=nopoint11,team=aqua] if entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=red] unless entity @a[tag=nopoint11,team=green] run team modify target11 prefix [{"text":"✔","color":"yellow"},{"text":"✔","color":"red"},{"text":"✔ ","color":"aqua"}]
execute if entity @a[tag=nopoint11,team=green] if entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=aqua] unless entity @a[tag=nopoint11,team=red] run team modify target11 prefix [{"text":"✔","color":"yellow"},{"text":"✔","color":"green"},{"text":"✔ ","color":"aqua"}]
execute if entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=aqua] if entity @a[tag=nopoint11,team=red] run team modify target11 prefix [{"text":"✔","color":"red"},{"text":"✔","color":"green"},{"text":"✔ ","color":"aqua"}]
execute if entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=red] unless entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔","color":"yellow"},{"text":"✔ ","color":"red"}]
execute if entity @a[tag=nopoint11,team=yellow] unless entity @a[tag=nopoint11,team=red] if entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔","color":"yellow"},{"text":"✔ ","color":"green"}]
execute if entity @a[tag=nopoint11,team=yellow] unless entity @a[tag=nopoint11,team=red] unless entity @a[tag=nopoint11,team=green] if entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔","color":"yellow"},{"text":"✔ ","color":"aqua"}]
execute unless entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=red] if entity @a[tag=nopoint11,team=green] unless entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔","color":"red"},{"text":"✔ ","color":"green"}]
execute unless entity @a[tag=nopoint11,team=yellow] if entity @a[tag=nopoint11,team=red] unless entity @a[tag=nopoint11,team=green] if entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔","color":"red"},{"text":"✔ ","color":"aqua"}]
execute unless entity @a[tag=nopoint11,team=yellow] unless entity @a[tag=nopoint11,team=red] if entity @a[tag=nopoint11,team=green] if entity @a[tag=nopoint11,team=aqua] run team modify target11 prefix [{"text":"✔","color":"green"},{"text":"✔ ","color":"aqua"}]
#######
execute store result score @a[tag=nopoint11] point11player if entity @a[tag=nopoint11]
execute if entity @a[tag=nopoint11,team=,scores={point11player=1}] run team modify target11 prefix [{"text":"✔ ","color":"gray"}]
execute if entity @a[tag=nopoint11,team=,scores={point11player=2}] run team modify target11 prefix [{"text":"✔✔ ","color":"gray"}]
execute if entity @a[tag=nopoint11,team=,scores={point11player=3}] run team modify target11 prefix [{"text":"✔✔✔ ","color":"gray"}]
execute if entity @a[tag=nopoint11,team=,scores={point11player=4}] run team modify target11 prefix [{"text":"✔✔✔✔ ","color":"gray"}]
execute if entity @a[tag=nopoint11,team=,scores={point11player=5}] run team modify target11 prefix [{"text":"✔x5 ","color":"gray"}]
execute if entity @a[tag=nopoint11,team=,scores={point11player=6}] run team modify target11 prefix [{"text":"✔x6 ","color":"gray"}]
execute if entity @a[tag=nopoint11,team=,scores={point11player=7..}] run team modify target11 prefix [{"text":"✔x 6+ ","color":"black"}]
#######
function newbingo:start/pointtag
execute as @a[tag=nopoint11] run scoreboard players set @s point11detect 0
