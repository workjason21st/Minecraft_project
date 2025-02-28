scoreboard players add @a[gamemode=adventure,team=!good] rglcount 1
scoreboard players set @e[tag=core,limit=1] greencount 0
scoreboard players operation @e[tag=core,limit=1] greencount += @a[team=!good] rglcount
scoreboard players set @e[tag=random6,limit=1] gametime 0
function rgl:other/get
