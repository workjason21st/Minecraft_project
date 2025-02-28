#----------挖礦事件----------------
execute @a[score_mining_lava_min=-7,score_mining_lava=7] ~ ~ ~  function windfire:lucky/mining/lava if @s[y=101,dy=225,x=980,dx=53,z=939,dz=123]
execute @a[score_mining_creeper_min=-7,score_mining_creeper=7] ~ ~ ~  function windfire:lucky/mining/creeper if @s[y=101,dy=255,x=980,dx=53,z=939,dz=123]
#----------礦層提醒----------------
execute @e[type=Player] ~ ~ ~  function windfire:lucky/repeat/show/orestratum if @s[y=101,dy=100]
#----------給進度----------------
scoreboard players tag @a[score_death_min=44] add moredeath
advancement grant @a[tag=moredeath,m=2,l=0] only lucky:moredeath
scoreboard players tag @a[score_death_min=45] remove moredeath
advancement grant @a[score_kill_min=30] only lucky:morekill
advancement grant @a[score_mining_stone_min=1111] only lucky:morestone
#----------刪除----------------
fill 987 178 1045 995 178 1053 minecraft:bedrock 0 replace air
fill 1017 178 947 1025 178 955 minecraft:bedrock 0 replace air
#scoreboard players tag @e[type=Zombie,x=994,y=178,z=942,dx=15,dy=10,dz=8] add killmoster
#tp @e[tag=killmoster] ~ ~-200 ~
clear @a[m=!1] minecraft:barrier 0 -1
clear @a minecraft:shears 0 -1
clear @a minecraft:flint_and_steel 0 -1
function windfire:lucky/repeat/delete if @e[type=Item,tag=written_book]
function windfire:lucky/repeat/delete if @e[type=Item,tag=stonesuit]
function windfire:lucky/repeat/delete if @e[type=Item,tag=redstone_lamp]
function windfire:lucky/repeat/delete if @e[type=Item,tag=rotten_flesh]
function windfire:lucky/repeat/delete if @e[type=Item,tag=carrot]
function windfire:lucky/repeat/delete if @e[type=Item,tag=cactus]
function windfire:lucky/repeat/delete if @e[type=Item,tag=spider_eye]
function windfire:lucky/repeat/delete if @e[type=Item,tag=bone]
function windfire:lucky/repeat/delete if @e[type=Item,tag=magma_cream]
function windfire:lucky/repeat/delete if @e[type=Item,tag=blaze_powder]
function windfire:lucky/repeat/delete if @e[type=Item,tag=chicken]
function windfire:lucky/repeat/delete if @e[type=Item,tag=rabbit]
function windfire:lucky/repeat/delete if @e[type=Item,tag=rabbit_hide]
function windfire:lucky/repeat/delete if @e[type=Item,tag=rabbit_foot]
function windfire:lucky/repeat/delete if @e[type=Item,tag=fence]
function windfire:lucky/repeat/delete if @e[type=Item,tag=Chocolate]
function windfire:lucky/repeat/delete if @e[type=Item,tag=bamboo]
function windfire:lucky/repeat/delete if @e[type=Item,tag=golden_carrot]
function windfire:lucky/repeat/delete if @e[type=chicken]
fill 1004 184 1051 1017 185 1057 air
fill 995 184 943 1008 185 949 air
#----------礦物轉換-----------
#entitydata @e[type=item,tag=!coal,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!stones,tag=ore,tag=mineral,tag=stone,c=1] {PickupDelay:0,Tags:[stones],Item:{id:"cobblestone",tag:{HideFlags:24,CanPlaceOn:[grass,dirt,farmland,potatoes,fence_gate,fence,trapdoor,wooden_door,oak_stairs,ladder,boat,stone,iron_ore,gold_ore,lapis_ore,redstone_ore,diamond_ore,redstone_lamp,stone_stairs,obsidian,cobblestone]}}}
#----------物品轉換------------
function windfire:lucky/repeat/item if @e[type=Item,tag=!mineral,tag=!ore,tag=!cobblestone,tag=!coal,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!stonesuit,tag=!redstone_lamp,tag=!rotten_flesh,tag=!carrot,tag=!cactus,tag=!spider_eye,tag=!bone,tag=!magma_cream,tag=!blaze_powder,tag=!chicken,tag=!rabbit,tag=!rabbit_hide,tag=!rabbit_foot,tag=!fence,tag=!Chocolate,tag=!bamboo,tag=!golden_carrot,tag=!iron,tag=!glod,tag=!log2,tag=!fire_charge,tag=!firework_charge,tag=!blaze_rod,tag=!glass,tag=!seeds,tag=!fish,tag=!sapling,tag=!potato,tag=!zombies,tag=!recycle,tag=!absorption,tag=!damagedoor,tag=!double_plant,tag=!bowl,tag=!glass_pane]
execute @e[type=Item,tag=mineralD] ~ ~ ~ function windfire:lucky/repeat/mineral/@r
execute @e[type=Item,tag=mineralL] ~ ~ ~ function windfire:lucky/repeat/mineral/@r
execute @e[type=Item,tag=mineralG] ~ ~ ~ function windfire:lucky/repeat/mineral/@r
execute @e[type=Item,tag=mineralI] ~ ~ ~ function windfire:lucky/repeat/mineral/@r
execute @e[type=item,tag=ore] ~ ~ ~ execute @s[tag=mineralD,y=101,dy=12,x=980,dx=53,z=939,dz=123] ~ ~ ~ function windfire:lucky/repeat/mineral/ore/diamond@r if @e[type=Item,tag=!mineral,tag=!redstone,tag=!diamond,tag=!cobblestone,tag=ore,c=1]
execute @e[type=item,tag=ore] ~ ~ ~ execute @s[tag=mineralL,y=113,dy=11,x=980,dx=53,z=939,dz=123] ~ ~ ~ function windfire:lucky/repeat/mineral/ore/lapis@r if @e[type=Item,tag=!mineral,tag=!lapis,tag=!cobblestone,tag=ore,c=1]
execute @e[type=item,tag=ore] ~ ~ ~ execute @s[tag=mineralG,y=124,dy=6,x=980,dx=53,z=939,dz=123] ~ ~ ~ function windfire:lucky/repeat/mineral/ore/gold@r if @e[type=Item,tag=!mineral,tag=!gold,tag=!cobblestone,tag=ore,c=1]
execute @e[type=item,tag=ore] ~ ~ ~ execute @s[tag=mineralI,y=130,dy=35,x=980,dx=53,z=939,dz=123] ~ ~ ~ function windfire:lucky/repeat/mineral/ore/iron@r if @e[type=Item,tag=!mineral,tag=!iron,tag=!cobblestone,tag=ore,c=1]
#----------
function windfire:lucky/repeat/item/props if @e[type=Item,tag=fire_charge]
function windfire:lucky/repeat/item/props if @e[type=Item,tag=firework_charge]
function windfire:lucky/repeat/item/props if @e[type=Item,tag=blaze_rod]
function windfire:lucky/repeat/item/props if @e[type=Item,tag=glass]
function windfire:lucky/repeat/item/other if @e[type=Item,tag=seeds]
function windfire:lucky/repeat/item/other if @e[type=Item,tag=fish]
function windfire:lucky/repeat/item/other if @e[type=Item,tag=sapling]
function windfire:lucky/repeat/item/other if @e[type=Item,tag=potato]
function windfire:lucky/repeat/item/other if @e[type=Item,tag=zombies]
function windfire:lucky/repeat/item/recycle if @e[type=Item,tag=recycle]
function windfire:lucky/repeat/item/bonus
#----------石頭套裝------------
scoreboard players tag @a[score_stonesuit_min=1] add stonesuits
execute @e[tag=stonesuits] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:[stonesuit],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Small:1b}
execute @e[type=armor_stand,tag=stonesuit] ~ ~ ~ setblock ~ ~ ~ chest 0 replace {LootTable:"minecraft:chests/barrier",Lock:"§§§"}
execute @e[type=armor_stand,tag=stonesuit] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ minecraft:air 0 destroy
scoreboard players tag @a[score_stonesuit_min=1] remove stonesuits
scoreboard players set @a[score_stonesuit_min=1] stonesuit 0
#----------幸運星------------
function windfire:lucky/repeat/luckystar/replace if @e[type=Item]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=absorption]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=darkthey]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=darktheys]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=darktheyss]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=damagedoor]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=damagedoors]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=damagedoorss]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=double_plant]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=double_plants]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=double_plantss]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=bowl]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=bowls]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=bowlss]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=glass_pane]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=glass_panes]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=glass_paness]
function windfire:lucky/repeat/luckystar/star if @e[type=Item,tag=glass_panesss]
#----------Buff------------
function windfire:lucky/repeat/buff if @a[m=2,z=943]
function windfire:lucky/repeat/buff if @a[m=2,z=944]
function windfire:lucky/repeat/buff if @a[m=2,z=1057]
function windfire:lucky/repeat/buff if @a[m=2,z=1056]
function windfire:lucky/repeat/buff if @a[m=2,z=946,x=1009]
function windfire:lucky/repeat/buff if @a[m=2,z=1054,x=1003]
function windfire:lucky/repeat/buff if @a[m=2,z=943,dz=7]
function windfire:lucky/repeat/buff if @a[m=2,z=1051,dz=7]
execute @a[m=0] ~ ~ ~ detect ~ ~-1 ~ minecraft:sand 1 function windfire:lucky/repeat/buff
#----------其他-------------
function windfire:lucky/repeat/timer/delay
#function windfire:lucky/setting/load/load if @a[tag=loader]
function windfire:lucky/repeat/show/yellow/remind if @a[x=1012,dx=5,z=1052,dz=4,y=178,rym=-179,ry=-91]
function windfire:lucky/repeat/show/blue/remind if @a[x=996,dx=5,z=945,dz=4,y=178,rym=1,ry=89]
function windfire:lucky/repeat/show/jointeam if @a[y=0,dy=3,x=1027,dx=4,z=967,dz=12]

#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 0 effect @s minecraft:mining_fatigue 1 0 true
#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 1 effect @s minecraft:mining_fatigue 1 0 true
#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 2 effect @s minecraft:mining_fatigue 1 0 true
#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 3 effect @s minecraft:mining_fatigue 1 0 true
#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 0 effect @s minecraft:haste 1 0 true
#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 1 effect @s minecraft:haste 1 0 true
#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 2 effect @s minecraft:haste 1 0 true
#execute @a ~ ~ ~ detect ~ ~-1 ~ minecraft:quartz_stairs 3 effect @s minecraft:haste 1 0 true
