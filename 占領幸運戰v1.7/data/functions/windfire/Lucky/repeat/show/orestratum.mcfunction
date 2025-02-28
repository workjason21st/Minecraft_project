#no
scoreboard players tag @a[y=165,dy=10,tag=iron_reminds] remove iron_reminds
scoreboard players tag @a[y=165,dy=10,tag=!noore_reminds] add noore_remind
execute @a[tag=noore_remind] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"層數已達165層，以上層數§l不會有","color":"green"},{"text":"§l礦物","color":"dark_gary"},{"text":"分布","color":"green"}]
scoreboard players tag @a[tag=noore_remind] add noore_reminds
scoreboard players tag @a[tag=noore_reminds] remove noore_remind
#iron
scoreboard players tag @a[y=130,dy=34,tag=noore_reminds] remove noore_reminds
scoreboard players tag @a[y=130,dy=34,tag=gold_reminds] remove gold_reminds
scoreboard players tag @a[y=130,dy=34,tag=!iron_reminds] add iron_remind
execute @a[tag=iron_remind] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"層數已達164－130層，會有","color":"green"},{"text":"§l鐵礦","color":"white"},{"text":"分布","color":"green"}]
scoreboard players tag @a[tag=iron_remind] add iron_reminds
scoreboard players tag @a[tag=iron_reminds] remove iron_remind
#scoreboard players tag @a[tag=iron_reminds] remove iron_remind
#scoreboard players tag @a[y=167,dy=60,tag=iron_reminds] add iron_remindss
#execute @a[tag=iron_remindss] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你已經離開","color":"green"},{"text":"§l鐵礦","color":"white"},{"text":"分布層數","color":"green"}]
#scoreboard players tag @a[y=167,dy=60,tag=iron_remindss] remove iron_reminds
#scoreboard players tag @a[y=167,dy=60,tag=iron_remindss] remove iron_remindss
#gold
scoreboard players tag @a[y=124,dy=5,tag=iron_reminds] remove iron_reminds
scoreboard players tag @a[y=124,dy=5,tag=lapis_reminds] remove lapis_reminds
scoreboard players tag @a[y=124,dy=5,tag=!gold_reminds] add gold_remind
execute @a[tag=gold_remind] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"層數已達129－124層，會有","color":"green"},{"text":"§l金礦","color":"gold"},{"text":"分布","color":"green"}]
scoreboard players tag @a[tag=gold_remind] add gold_reminds
scoreboard players tag @a[tag=gold_reminds] remove gold_remind
#scoreboard players tag @a[y=132,dy=95,tag=gold_reminds] add gold_remindss
#execute @a[tag=gold_remindss] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你已經離開","color":"green"},{"text":"§l金礦","color":"gold"},{"text":"分布層數","color":"green"}]
#scoreboard players tag @a[y=132,dy=95,tag=gold_remindss] remove gold_reminds
#scoreboard players tag @a[y=132,dy=95,tag=gold_remindss] remove gold_remindss
#lapis
scoreboard players tag @a[y=113,dy=10,tag=gold_reminds] remove gold_reminds
scoreboard players tag @a[y=113,dy=10,tag=diamond_reminds] remove diamond_reminds
scoreboard players tag @a[y=113,dy=10,tag=!lapis_reminds] add lapis_remind
execute @a[tag=lapis_remind] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"層數已達123－113層，會有","color":"green"},{"text":"§l青金石礦","color":"aqua"},{"text":"分布","color":"green"}]
scoreboard players tag @a[tag=lapis_remind] add lapis_reminds
scoreboard players tag @a[tag=lapis_reminds] remove lapis_remind
#scoreboard players tag @a[tag=lapis_reminds] remove lapis_remind
#scoreboard players tag @a[y=126,dy=101,tag=lapis_reminds] add lapis_remindss
#execute @a[tag=lapis_remindss] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你已經離開","color":"green"},{"text":"§l青金石礦","color":"aqua"},{"text":"分布層數","color":"green"}]
#scoreboard players tag @a[y=126,dy=101,tag=lapis_remindss] remove lapis_reminds
#scoreboard players tag @a[y=126,dy=101,tag=lapis_remindss] remove lapis_remindss
#diamond
scoreboard players tag @a[y=101,dy=11,tag=lapis_reminds] remove lapis_reminds
scoreboard players tag @a[y=101,dy=11,tag=!diamond_reminds] add diamond_remind
execute @a[tag=diamond_remind] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"層數已達112－101層，會有","color":"green"},{"text":"§l§l鑽石礦、紅石礦","color":"red"},{"text":"分布","color":"green"}]
scoreboard players tag @a[tag=diamond_remind] add diamond_reminds
scoreboard players tag @a[tag=diamond_reminds] remove diamond_remind
#scoreboard players tag @a[tag=diamond_reminds] remove diamond_remind
#scoreboard players tag @a[y=115,dy=112,tag=diamond_reminds] add diamond_remindss
#execute @a[tag=diamond_remindss] ~ ~ ~ title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"你已經離開","color":"green"},{"text":"§l鑽石礦、紅石礦","color":"red"},{"text":"分布層數","color":"green"}]
#scoreboard players tag @a[y=115,dy=112,tag=diamond_remindss] remove diamond_reminds
#scoreboard players tag @a[y=115,dy=112,tag=diamond_remindss] remove diamond_remindss