
scoreboard objectives remove yellowplayer
scoreboard objectives remove redplayer
scoreboard objectives remove greenplayer
scoreboard objectives remove aquaplayer
scoreboard objectives remove soleplayer
scoreboard objectives remove players
scoreboard objectives remove bumpplace
scoreboard objectives remove bumpmode
scoreboard objectives remove bumpsword
scoreboard objectives remove bumpspeed
scoreboard objectives remove bumphealth
scoreboard objectives remove bumpattack
scoreboard objectives remove bumphurt
scoreboard objectives remove bumparmor
scoreboard objectives remove bumptool
scoreboard objectives remove startgame
scoreboard objectives remove win
scoreboard objectives remove endgame
scoreboard objectives remove check
scoreboard objectives remove kill
scoreboard objectives remove killstrider
scoreboard objectives remove used
scoreboard objectives remove striderm
scoreboard objectives remove stridercm
scoreboard objectives remove top_kill
scoreboard objectives remove top_killstrider
scoreboard objectives remove top_used
scoreboard objectives remove top_striderm
scoreboard objectives remove displayhealth
scoreboard objectives remove deathCount
scoreboard objectives remove bumplist

scoreboard objectives add yellowplayer dummy
scoreboard objectives add redplayer dummy
scoreboard objectives add greenplayer dummy
scoreboard objectives add aquaplayer dummy
scoreboard objectives add soleplayer dummy
scoreboard objectives add aiplayer dummy
scoreboard objectives add players dummy

scoreboard objectives add bumpplace dummy
scoreboard objectives add bumpmode dummy
scoreboard objectives add bumpsword dummy
scoreboard objectives add bumpspeed dummy
scoreboard objectives add bumphealth dummy
scoreboard objectives add bumpattack dummy
scoreboard objectives add bumphurt dummy
scoreboard objectives add bumparmor dummy
scoreboard objectives add bumptool dummy
scoreboard objectives add bumpkill dummy
scoreboard objectives add bumpai dummy

scoreboard objectives add startgame dummy
scoreboard objectives add win dummy
scoreboard objectives add endgame dummy
scoreboard objectives add check dummy "開始準備"

scoreboard objectives add kill playerKillCount "擊殺人數"
scoreboard objectives add killstrider minecraft.killed:minecraft.strider "虐殺熾足獸數"
scoreboard objectives add used minecraft.used:minecraft.warped_fungus_on_a_stick "使用扭曲蕈菇釣竿"
scoreboard objectives add striderm dummy "騎乘熾足獸的距離"
scoreboard objectives add stridercm minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add top_kill dummy
scoreboard objectives add top_killstrider dummy
scoreboard objectives add top_used dummy
scoreboard objectives add top_striderm dummy


scoreboard objectives add displayhealth health "❤"
scoreboard objectives add deathCount deathCount

scoreboard objectives add bumplist dummy "碰碰列表"
scoreboard objectives setdisplay sidebar bumplist
scoreboard objectives setdisplay list displayhealth
scoreboard objectives setdisplay belowName displayhealth

scoreboard players set @e[tag=mainAI] win 0
scoreboard players set @e[tag=mainAI] endgame -1
scoreboard players set @e[tag=mainAI] bumpplace 0
scoreboard players set @e[tag=mainAI] bumpmode 0
scoreboard players set @e[tag=mainAI] bumpsword 0
scoreboard players set @e[tag=mainAI] bumpspeed 20
scoreboard players set @e[tag=mainAI] bumphealth 20
scoreboard players set @e[tag=mainAI] bumpattack 0
scoreboard players set @e[tag=mainAI] bumphurt 0
scoreboard players set @e[tag=mainAI] bumparmor 0
scoreboard players set @e[tag=mainAI] bumptool 0

scoreboard players set @e[tag=mainAI] bumpkill 0
scoreboard players set @e[tag=mainAI] bumpai 0

scoreboard players set @e[tag=mainAI] stridercm 100
scoreboard players set @a kill 0
scoreboard players set @a killstrider 0
scoreboard players set @a used 0
scoreboard players set @a striderm 0
scoreboard players set @a stridercm 0
scoreboard players set @a check 0
