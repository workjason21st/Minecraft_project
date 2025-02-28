execute as @a[team=yellow] at @e[tag=teamyellow,limit=1] run spawnpoint @s ~ ~ ~
execute as @a[team=red] at @e[tag=teamred,limit=1] run spawnpoint @s ~ ~ ~
execute as @a[team=green] at @e[tag=teamgreen,limit=1] run spawnpoint @s ~ ~ ~
execute as @a[team=aqua] at @e[tag=teamaqua,limit=1] run spawnpoint @s ~ ~ ~
execute as @s[team=] at @e[tag=teampoint,limit=1] run spawnpoint @s ~ ~ ~
advancement revoke @s only newbingo:newbingo/sleep_in_bed
say @s 睡床不會記錄重生點呦
execute as @s[scores={sleep=1..}] run scoreboard players set @s sleep 0
