#kill @e[tag=WindFire]
#summon minecraft:area_effect_cloud 101 31.75 119 {Duration:2147483647,Tags:["WindFire"],CustomName:"{\"text\":\"作\"}",CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
#summon minecraft:area_effect_cloud 119 31.75 101 {Duration:2147483647,Tags:["WindFire"],CustomName:"{\"text\":\"者\"}",CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
#summon minecraft:area_effect_cloud 120 30.25 120 {Duration:2147483647,Tags:["WindFire"],CustomName:"{\"text\":\":\"}",CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
#summon minecraft:area_effect_cloud 102.0 38.0 102.0 {Duration:2147483647,Tags:["WindFire","Wind"],CustomName:"{\"text\":\"風\"}",CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}
#summon minecraft:area_effect_cloud 102 31.0 102 {Duration:2147483647,Tags:["WindFire","Fire"],CustomName:"{\"text\":\"火\"}",CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1,Marker:1b,Silent:1b}

effect give @a minecraft:saturation 999999 0 true
effect give @a minecraft:regeneration 999999 127 true
clear @a
xp set @a 0
defaultgamemode adventure
gamerule universalAnger true
gamerule forgiveDeadPlayers false
gamemode adventure @a
setworldspawn 112 32 112
tp @a 112 32 112
#forceload remove all
#forceload add 100 100
#forceload add 180 180 220 220
#forceload add 280 280 320 320

function bump:set/summonset

function bump:set/scoreset
function bump:set/tagset

function bump:sign/signset
function bump:sign/place
function bump:sign/mode
function bump:sign/sword
function bump:sign/speed
function bump:sign/health

function bump:team/teamset
kill @e[type=item]
