#參考自此影片 https://www.youtube.com/watch?v=FQ86XmVFX3E
kill @e[type=commandblock_minecart,tag=delay_end]
scoreboard players tag @e[type=commandblock_minecart,tag=delay] add delay_end {PortalCooldown:0}
teleport @e[type=commandblock_minecart,tag=delay_end] 1017 15 1047