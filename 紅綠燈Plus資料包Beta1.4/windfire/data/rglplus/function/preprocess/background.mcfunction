#時間保留
scoreboard players operation @e[tag=rglplus,tag=random1,limit=1] rglplustime = @e[tag=rglplus,tag=core,limit=1] rglplustime
scoreboard players operation @e[tag=rglplus,tag=core,limit=1] gametime = @e[tag=rglplus,tag=core,limit=1] rglplustime
#秒鐘轉分鐘 tick-> rglplustime:gametime
scoreboard players operation @e[tag=rglplus,tag=tick,limit=1] rglplustime = @e[tag=rglplus,tag=core,limit=1] rglplustime
scoreboard players operation @e[tag=rglplus,tag=tick,limit=1] gametime = @e[tag=rglplus,tag=core,limit=1] rglplustime
#除60s找分
scoreboard players operation @e[tag=rglplus,tag=tick,limit=1] rglplustime /= @e[tag=rglplus,tag=random1,limit=1] gametime
#找餘變秒
scoreboard players operation @e[tag=rglplus,tag=tick,limit=1] gametime %= @e[tag=rglplus,tag=random1,limit=1] gametime
scoreboard players operation @e[tag=rglplus,tag=random2,limit=1] gametime = @e[tag=rglplus,tag=tick,limit=1] gametime
#還原
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @e[tag=rglplus,tag=tick] gametime 5
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=2..}] run scoreboard players set @e[tag=rglplus,tag=tick] gametime 10

#接觸時間(PortalCooldown
scoreboard players operation @e[tag=rglplus,tag=touchtick,limit=1] rglplustouchtime = @e[tag=rglplus,tag=core,limit=1] rglplustouchtime
scoreboard players operation @e[tag=rglplus,tag=touchtick,limit=1] rglplustouchtime *= @e[tag=rglplus,tag=random1,limit=1] rglplustouchtime
scoreboard players operation @e[tag=rglplus,tag=random3,limit=1] rglplustouchtime = @e[tag=rglplus,tag=touchtick,limit=1] rglplustouchtime
#還原
scoreboard players operation @e[tag=rglplus,tag=touchtick,limit=1] rglplustouchtime = @e[tag=rglplus,tag=core,limit=1] rglplustouchtime
scoreboard players operation 接近鬼剩餘秒數 rglpluslist = @e[tag=rglplus,tag=core,limit=1] rglplustouchtime

#
data merge entity @e[tag=rglplus,tag=tick,limit=1] {PortalCooldown:20}
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run bossbar set rglplus:time max 5
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run bossbar set rglplus:time value 5
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=2..}] run bossbar set rglplus:time max 10
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=2..}] run bossbar set rglplus:time value 10
bossbar set rglplus:time players @a
bossbar set rglplus:time visible true
bossbar set rglplus:people players @a
bossbar set rglplus:people visible true
#
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run item replace entity @a[team=!ghost,gamemode=adventure] armor.head with crimson_button[enchantments={levels:{binding_curse:1}},attribute_modifiers={modifiers:[{type:"max_health",amount:0,slot:head,operation:add_value,id:99-9-9-9-999}]},custom_name='["",{"text":"增血裝置","italic":false,"color":"white"}]',hide_additional_tooltip={}]
effect give @a[team=ghost] minecraft:blindness 23 99 false
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] as @a run attribute @s minecraft:attack_damage base set 0
execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=3}] as @a run attribute @s minecraft:attack_damage base set 1
execute as @a run attribute @s minecraft:knockback_resistance base set 0
execute as @a run attribute @s minecraft:scale base set 1
execute as @a run attribute @s minecraft:sneaking_speed base set 0.3
execute if entity @e[tag=rglplus,tag=core,scores={rglpluskidsword=0}] as @a[team=human] run attribute @s minecraft:knockback_resistance base set 9
#
execute if entity @e[tag=rglplus,tag=core,scores={rglplusautoblood=0}] run gamerule naturalRegeneration false
execute if entity @e[tag=rglplus,tag=core,scores={rglplusautoblood=1}] run gamerule naturalRegeneration true
execute if entity @e[tag=rglplus,tag=core,scores={rglplusfalldamage=0}] run gamerule fallDamage false
execute if entity @e[tag=rglplus,tag=core,scores={rglplusfalldamage=1}] run gamerule fallDamage true

execute if entity @e[tag=rglplus,tag=core,scores={rglplusteamdamage=0..1}] run team modify ghost friendlyFire false
execute if entity @e[tag=rglplus,tag=core,scores={rglplusteamdamage=2..3}] run team modify ghost friendlyFire true
execute if entity @e[tag=rglplus,tag=core,scores={rglplusteamdamage=0}] run team modify human friendlyFire false
execute if entity @e[tag=rglplus,tag=core,scores={rglplusteamdamage=1}] run team modify human friendlyFire true
execute if entity @e[tag=rglplus,tag=core,scores={rglplusteamdamage=2}] run team modify human friendlyFire false
execute if entity @e[tag=rglplus,tag=core,scores={rglplusteamdamage=3}] run team modify human friendlyFire true
