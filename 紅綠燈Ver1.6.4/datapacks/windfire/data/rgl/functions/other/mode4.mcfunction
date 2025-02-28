execute if entity @a[team=good] run tag @r[gamemode=adventure,tag=!spy,team=bad] add spy
execute if entity @a[team=good] run team join bad @r[team=good]
execute if entity @a[team=good] run function rgl:other/mode4
