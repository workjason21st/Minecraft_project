
#7
execute if entity @a[tag=nopoint7,team=yellow] unless entity @a[tag=nopoint7,team=red] unless entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔ ","color":"yellow"}]
execute if entity @a[tag=nopoint7,team=red] unless entity @a[tag=nopoint7,team=yellow] unless entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔ ","color":"red"}]
execute if entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=yellow] unless entity @a[tag=nopoint7,team=aqua] unless entity @a[tag=nopoint7,team=red] run team modify target7 prefix [{"text":"✔ ","color":"green"}]
execute if entity @a[tag=nopoint7,team=aqua] unless entity @a[tag=nopoint7,team=yellow] unless entity @a[tag=nopoint7,team=red] unless entity @a[tag=nopoint7,team=green] run team modify target7 prefix [{"text":"✔ ","color":"aqua"}]

execute if entity @a[tag=nopoint7,team=green] if entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=aqua] if entity @a[tag=nopoint7,team=red] run team modify target7 prefix [{"text":"✔✔✔✔ ","color":"black"}]
execute if entity @a[tag=nopoint7,team=red] if entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔","color":"yellow"},{"text":"✔","color":"red"},{"text":"✔ ","color":"green"}]
execute if entity @a[tag=nopoint7,team=aqua] if entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=red] unless entity @a[tag=nopoint7,team=green] run team modify target7 prefix [{"text":"✔","color":"yellow"},{"text":"✔","color":"red"},{"text":"✔ ","color":"aqua"}]
execute if entity @a[tag=nopoint7,team=green] if entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=aqua] unless entity @a[tag=nopoint7,team=red] run team modify target7 prefix [{"text":"✔","color":"yellow"},{"text":"✔","color":"green"},{"text":"✔ ","color":"aqua"}]
execute if entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=aqua] if entity @a[tag=nopoint7,team=red] run team modify target7 prefix [{"text":"✔","color":"red"},{"text":"✔","color":"green"},{"text":"✔ ","color":"aqua"}]
execute if entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=red] unless entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔","color":"yellow"},{"text":"✔ ","color":"red"}]
execute if entity @a[tag=nopoint7,team=yellow] unless entity @a[tag=nopoint7,team=red] if entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔","color":"yellow"},{"text":"✔ ","color":"green"}]
execute if entity @a[tag=nopoint7,team=yellow] unless entity @a[tag=nopoint7,team=red] unless entity @a[tag=nopoint7,team=green] if entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔","color":"yellow"},{"text":"✔ ","color":"aqua"}]
execute unless entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=red] if entity @a[tag=nopoint7,team=green] unless entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔","color":"red"},{"text":"✔ ","color":"green"}]
execute unless entity @a[tag=nopoint7,team=yellow] if entity @a[tag=nopoint7,team=red] unless entity @a[tag=nopoint7,team=green] if entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔","color":"red"},{"text":"✔ ","color":"aqua"}]
execute unless entity @a[tag=nopoint7,team=yellow] unless entity @a[tag=nopoint7,team=red] if entity @a[tag=nopoint7,team=green] if entity @a[tag=nopoint7,team=aqua] run team modify target7 prefix [{"text":"✔","color":"green"},{"text":"✔ ","color":"aqua"}]
#######
execute store result score @a[tag=nopoint7] point7player if entity @a[tag=nopoint7]
execute if entity @a[tag=nopoint7,team=,scores={point7player=1}] run team modify target7 prefix [{"text":"✔ ","color":"gray"}]
execute if entity @a[tag=nopoint7,team=,scores={point7player=2}] run team modify target7 prefix [{"text":"✔✔ ","color":"gray"}]
execute if entity @a[tag=nopoint7,team=,scores={point7player=3}] run team modify target7 prefix [{"text":"✔✔✔ ","color":"gray"}]
execute if entity @a[tag=nopoint7,team=,scores={point7player=4}] run team modify target7 prefix [{"text":"✔✔✔✔ ","color":"gray"}]
execute if entity @a[tag=nopoint7,team=,scores={point7player=5}] run team modify target7 prefix [{"text":"✔x5 ","color":"gray"}]
execute if entity @a[tag=nopoint7,team=,scores={point7player=6}] run team modify target7 prefix [{"text":"✔x6 ","color":"gray"}]
execute if entity @a[tag=nopoint7,team=,scores={point7player=7..}] run team modify target7 prefix [{"text":"✔x 6+ ","color":"black"}]
#######
function newbingo:start/pointtag
execute as @a[tag=nopoint7] run scoreboard players set @s point7detect 0
