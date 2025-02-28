execute if entity @e[tag=core,scores={rgltouchtime=10}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:240}
execute if entity @e[tag=core,scores={rgltouchtime=15}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:340}
execute if entity @e[tag=core,scores={rgltouchtime=20}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:440}
execute if entity @e[tag=core,scores={rgltouchtime=25}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:540}
execute if entity @e[tag=core,scores={rgltouchtime=30}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:640}
execute if entity @e[tag=core,scores={rgltouchtime=35}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:740}
execute if entity @e[tag=core,scores={rgltouchtime=40}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:840}
execute if entity @e[tag=core,scores={rgltouchtime=45}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:940}
execute if entity @e[tag=core,scores={rgltouchtime=50}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1040}
execute if entity @e[tag=core,scores={rgltouchtime=55}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1140}
execute if entity @e[tag=core,scores={rgltouchtime=60}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1240}
execute if entity @e[tag=core,scores={rgltouchtime=65}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1340}
execute if entity @e[tag=core,scores={rgltouchtime=70}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1440}
execute if entity @e[tag=core,scores={rgltouchtime=75}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1540}
execute if entity @e[tag=core,scores={rgltouchtime=80}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1640}
execute if entity @e[tag=core,scores={rgltouchtime=85}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1740}
execute if entity @e[tag=core,scores={rgltouchtime=90}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1840}
execute if entity @e[tag=core,scores={rgltouchtime=95}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:1940}
execute if entity @e[tag=core,scores={rgltouchtime=100}] as @e[tag=touchtick] run data merge entity @s {PortalCooldown:2040}
execute store result score @e[tag=touchtick,limit=1] rgltime run data get entity @e[tag=touchtick,limit=1] PortalCooldown
scoreboard players remove @e[tag=touchtick,limit=1] rgltime 2
execute store result bossbar rgl:touch max run scoreboard players get @e[tag=core,limit=1] rgltouchtime
execute store result bossbar rgl:touch value run scoreboard players get @e[tag=touchtick,limit=1] rgltime
tag @a[team=bad,tag=!touch] add touch
