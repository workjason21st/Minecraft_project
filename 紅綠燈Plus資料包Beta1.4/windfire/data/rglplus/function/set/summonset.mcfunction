execute if entity @e[tag=rglplus,tag=spawn] run function rglplus:set/spawndel
execute if entity @e[tag=rglplus,tag=spawn] run function rglplus:set/spawndel

kill @e[tag=rglplus]
#"00000007-0000-0007-0000-000700000007"
#"00000007-0000-0007-0000-000100000000"
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random0","core","lobbyspawn","spawn"],CustomName:"{\"text\":\"遊戲大廳重生點\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,7,7]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random1"],CustomName:"{\"text\":\"全體獲勝次數\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,1,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random2"],CustomName:"{\"text\":\"二\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,2,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random3"],CustomName:"{\"text\":\"三\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,3,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random4"],CustomName:"{\"text\":\"四\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,4,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random5"],CustomName:"{\"text\":\"五\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,5,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random6"],CustomName:"{\"text\":\"六\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,6,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random7"],CustomName:"{\"text\":\"七\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,7,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random8"],CustomName:"{\"text\":\"八\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,8,0]}
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["rglplus","random100","random010","random9"],CustomName:"{\"text\":\"九\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b,UUID:[I;7,7,9,0]}
#"10000007-0000-0007-0000-000700000007"
execute as @s at @s run summon minecraft:text_display ~ ~ ~ {Tags:["rglplus","map1spawn","spawn"],text:'{"text":"第1張地圖重生點","color":"gold","bold":true}',text_opacity:25,background:25,UUID:[I;268435463,7,7,7],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[2f,2f,2f]},billboard:"center",see_through:1b,view_range:9876}
#"00000007-0000-0000-0000-000700000007"
execute as @s at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {PortalCooldown:-1,Duration:2147483647,Tags:["rglplus","tick","ticks"],CustomName:"{\"text\":\"計時器\"}",NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b,Silent:1b,UUID:[I;7,0,7,7]}
execute as @s at @s run summon minecraft:area_effect_cloud ~ ~-5 ~ {PortalCooldown:-1,Duration:2147483647,Tags:["rglplus","touchtick","ticks"],CustomName:"{\"text\":\"計時器T\"}",NoGravity:1b,Invulnerable:1b,PersistenceRequired:1b,Marker:1b,Silent:1b,UUID:[I;7,1,7,7]}

#書本內說明
#"00000000-0000-0009-0000-000100000001"
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,1,1],Tags:["rglplus","bookcontent","bookmap"],CustomName:"{\"text\":\"固定\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,1,2],Tags:["rglplus","bookcontent","bookghost"],CustomName:"{\"text\":\"固定\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,1,3],Tags:["rglplus","bookcontent","booksword"],CustomName:"{\"text\":\"固定\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,1,4],Tags:["rglplus","bookcontent","bookweapon"],CustomName:"{\"text\":\"鐵劍\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,1,5],Tags:["rglplus","bookcontent","bookmode"],CustomName:"{\"text\":\"一般模式\"}",CustomNameVisible:0b}
#book2
#"00000000-0000-0009-0000-000200000001"
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,1],Tags:["rglplus","bookcontent","bookgreencount"],CustomName:"{\"text\":\"無限制\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,2],Tags:["rglplus","bookcontent","bookredcount"],CustomName:"{\"text\":\"無限制\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,3],Tags:["rglplus","bookcontent","bookredtime"],CustomName:"{\"text\":\"秒扣1滴\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,4],Tags:["rglplus","bookcontent","bookbyself"],CustomName:"{\"text\":\"不能\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,5],Tags:["rglplus","bookcontent","bookredwall"],CustomName:"{\"text\":\"不能\"}",CustomNameVisible:0b}

execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,6],Tags:["rglplus","bookcontent","bookghostprop"],CustomName:"{\"text\":\"不能\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,7],Tags:["rglplus","bookcontent","bookaddtime"],CustomName:"{\"text\":\"不能\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,8],Tags:["rglplus","bookcontent","bookkidsword"],CustomName:"{\"text\":\"沒有\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,9],Tags:["rglplus","bookcontent","bookalleffect"],CustomName:"{\"text\":\"不是\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,2,10],Tags:["rglplus","bookcontent","bookkidlife"],CustomName:"{\"text\":\"次\"}",CustomNameVisible:0b}
#book4
#"00000000-0000-0009-0000-000400000001"
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,1],Tags:["rglplus","bookcontent","bookqteghost"],CustomName:"{\"text\":\"新手鬼\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,2],Tags:["rglplus","bookcontent","bookqtekid"],CustomName:"{\"text\":\"小惡世界\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,3],Tags:["rglplus","bookcontent","bookbuffghost"],CustomName:"{\"text\":\"加速１\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,4],Tags:["rglplus","bookcontent","bookbuffkid"],CustomName:"{\"text\":\"無\"}",CustomNameVisible:0b}

execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,5],Tags:["rglplus","bookcontent","booktouchtime"],CustomName:"{\"text\":\"40\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,6],Tags:["rglplus","bookcontent","booktouchdis"],CustomName:"{\"text\":\"10\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,7],Tags:["rglplus","bookcontent","bookglow"],CustomName:"{\"text\":\"每60秒隨機1人發光，   倒數60秒全員發光\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,8],Tags:["rglplus","bookcontent","bookshowdis"],CustomName:"{\"text\":\"持續顯示最近小孩的距離\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,9],Tags:["rglplus","bookcontent","bookteamdamage"],CustomName:"{\"text\":\"雙方皆無同隊傷害\"}",CustomNameVisible:0b}

execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,10],Tags:["rglplus","bookcontent","bookfalldamage"],CustomName:"{\"text\":\"沒有\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,11],Tags:["rglplus","bookcontent","bookautoblood"],CustomName:"{\"text\":\"不開啟\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,12],Tags:["rglplus","bookcontent","bookdaynight"],CustomName:"{\"text\":\"永遠白天\"}",CustomNameVisible:0b}

execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,13],Tags:["rglplus","bookcontent","bookclearxporb"],CustomName:"{\"text\":\"五秒清除\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,14],Tags:["rglplus","bookcontent","bookrescue"],CustomName:"{\"text\":\"一秒不重複\"}",CustomNameVisible:0b}
execute as @s at @s run summon minecraft:marker ~ ~ ~ {UUID:[I;0,9,4,15],Tags:["rglplus","bookcontent","bookguardred"],CustomName:"{\"text\":\"開啟，若紅燈時間剩七秒且十格內有鬼就給自救綠燈\"}",CustomNameVisible:0b}
