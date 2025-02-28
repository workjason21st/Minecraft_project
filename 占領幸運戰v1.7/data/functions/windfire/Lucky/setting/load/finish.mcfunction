tp @a[tag=loader,score_load_min=7,score_load=7] 1027 2 939
effect @a[tag=loader,score_load_min=7,score_load=7] minecraft:resistance 0 0 true
effect @a[tag=loader,score_load_min=7,score_load=7] minecraft:resistance 7 77 true
effect @a[tag=loader,score_load_min=7,score_load=7] minecraft:mining_fatigue 0 0 true
effect @a[tag=loader,score_load_min=7,score_load=7] minecraft:slowness 0 0 true
effect @a[tag=loader,score_load_min=7,score_load=7] minecraft:blindness 0 0 true
effect @a[tag=loader,score_load_min=7,score_load=7] minecraft:blindness 1 0 true
scoreboard players tag @a[tag=loader,score_load_min=7,score_load=7] remove loader
scoreboard players set @a[score_load_min=7,score_load=7] load 0
tellraw @a ["",{"text":"【遊戲大廳】","color":"dark_purple"},{"text":"地圖載入完成","color":"red"}]

