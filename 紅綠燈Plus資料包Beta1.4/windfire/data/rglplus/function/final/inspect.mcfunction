#
execute unless score 7-0-7-0-000700000007 rglplusmode matches 2 unless entity @a[team=human,gamemode=adventure] if entity @a[team=humanred,gamemode=adventure] unless entity @a[team=humanred,tag=laster,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 103
#
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 playgame matches 1..2 unless entity @a[team=humanred,gamemode=adventure] unless entity @a[team=human,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 110
execute if score 7-0-7-0-000700000007 rglplusmode matches 2 if score 7-0-7-0-000700000007 greener matches 0 if score 7-0-7-0-000700000007 playgame matches 1..2 if entity @a[team=humanred,gamemode=adventure] run scoreboard players set 7-0-7-0-000700000007 playgame 109
